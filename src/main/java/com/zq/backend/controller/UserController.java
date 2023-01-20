package com.zq.backend.controller;


import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Block;
import com.zq.backend.entity.Invitation;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserCandidateDTO;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.entity.dto.UserDetailDTO;
import com.zq.backend.entity.dto.UserLoginDTO;
import com.zq.backend.services.*;
import com.zq.backend.utils.JWTUtils;
import com.zq.backend.utils.StringBuildUtils;
import io.swagger.models.auth.In;
import org.springframework.web.bind.annotation.*;



import javax.annotation.Resource;
import java.util.List;
import java.util.Objects;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserServiceImpl userService;
    @Resource
    private FilesServiceImpl filesService;
    @Resource
    private BlockServiceImpl blockService;
    @Resource
    private InvitationServiceImpl invitationService;
    @Resource
    private HobbyServiceImpl hobbyService;
    // get all users
    @GetMapping("/")
    public List<User> index(){
        return userService.list();
    }

    /**
     * login
     * @param userLoginDTO transfer JSON to DTO entity
     * @return login result
     */
    @PostMapping("/login")
    public Result login(@RequestBody UserLoginDTO userLoginDTO){
        Integer telephone = userLoginDTO.getTelephone();
        String password = userLoginDTO.getPassword();

        // check whether empty data exists in the packet
        if (telephone == null || StrUtil.isBlank(password)){
            return Result.error(Constant.CODE_401, "invalid input");
        }
        return userService.login(userLoginDTO);
    }

    // update user information
    @PutMapping("/update")
    public Result update(@RequestHeader(value = "token",required = false) String token, @RequestBody User user){
        if (token != null){
            try{
                if (!user.getId().toString().equals(JWTUtils.decodeUserId(token))){
                    return Result.error(Constant.CODE_401, "id and token are not match");
                }
            }catch (NullPointerException e){
                return Result.error(Constant.CODE_401, "empty user id error");
            }

        }else {
            return Result.error(Constant.CODE_401, "empty token error");
        }
        if (!hobbyService.checkExisting(user.getHobby())){
            return Result.error(Constant.CODE_401, "invalid hobby");
        }
        if(checkAlbum(user)){
            return Result.error(Constant.CODE_401, "invalid album");
        }
        if(!checkIcon(user)){
            return Result.error(Constant.CODE_401, "invalid icon");
        }

        return userService.updateUser(user);
    }

    // update user information
    @PostMapping("/register")
    public Result register(@RequestBody User user){

        if (!hobbyService.checkExisting(user.getHobby())){
            return Result.error(Constant.CODE_401, "invalid hobby");
        }
        if(checkAlbum(user)){
            return Result.error(Constant.CODE_401, "invalid album");
        }
        if(!checkIcon(user)){
            return Result.error(Constant.CODE_401, "invalid icon");
        }
        return userService.register(user);
    }

//    // query user pages
//    @GetMapping("/page")
//    public IPage<User> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam(defaultValue = "") String nickname){
//
//        IPage<User> page = new Page<>(pageNum,pageSize);
//        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
//
//        // check "" value; ! null and "" are different
//        if (!nickname.equals("")){
//            queryWrapper.like("nickname", nickname);
//        }
//
//        return userService.page(page, queryWrapper);
//    }
    @GetMapping("/list")
    public Result findList(@RequestHeader(value = "token",required = false) String token, @RequestParam(defaultValue = "") String query){
        Integer id = Integer.parseInt(JWTUtils.decodeUserId(token));

        List<Block> blockList = blockService.getTwoWayBlockList(id);
        List<Invitation> invitationList = invitationService.getAllInvitationList(id);
        List<UserCandidateDTO> userCandidateDTOS = userService.getRandomUser(id, userService.getById(id).getGender(), blockList, invitationList, query);
        for (UserCandidateDTO u: userCandidateDTOS){

            u.setAlbum(filesService.transferList(u.getAlbum()));
            u.setHobby(hobbyService.transferList(u.getHobby()));
        }
        return Result.success(userCandidateDTOS);
    }

    @GetMapping("/detail")
    public Result getDetail(@RequestHeader(value = "token",required = false) String token, @RequestParam Integer targetId){
        Integer id = Integer.parseInt(JWTUtils.decodeUserId(token));
        boolean checkPrivacyInfo = true;
        if (!id.equals(targetId)){
            // block user cannot get detail information
            if (blockService.getSpecificBlock(id, targetId).size() != 0 || blockService.getSpecificBlock(targetId, id).size() != 0){
                return Result.error(Constant.CODE_401, "blocked user");
            }
            // success invitation could check privacy info
            if (invitationService.checkSpecificSuccessInvitation(id, targetId).size() == 0 && invitationService.checkSpecificSuccessInvitation(targetId, id).size() == 0){
                checkPrivacyInfo = false;
            }
        }
        UserDetailDTO userDetailDTO = userService.getUserDetail(targetId, checkPrivacyInfo);
        userDetailDTO.setAlbumId(userDetailDTO.getAlbum());
        userDetailDTO.setHobbies(hobbyService.transferDetailList(userDetailDTO.getHobby()));
        userDetailDTO.setAlbum(filesService.transferList(userDetailDTO.getAlbum()));

        return Result.success(userDetailDTO);
    }

    private boolean checkAlbum(User user){
        for (Integer id: StringBuildUtils.splitData(user.getAlbum())){
            if(filesService.checkExisting(id)){
                return true;
            }
        }
        return false;
    }
    private boolean checkIcon(User user){
        if (user.getIcon() != null){
            return filesService.checkExistingByUrl(user.getIcon());
        }
        return true;
    }

//    // 分页查询 mybatis version
//    // select * from user limit 0,5 从0开始每次选取5个，包含0；set begin index of searching: (pageNum - 1) * pageSize
//    @GetMapping("/page")
//    public Map<String, Object> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize){
//        pageNum = (pageNum - 1) * pageSize; // calculate begin index of searching
//        Integer total = userMapper.selectTotalPage();
//        List<User> data = userMapper.selectPage(pageNum, pageSize);
//        Map<String, Object> res = new HashMap<>();
//        res.put("data", data);
//        res.put("total", total);
//        return res;
//    }
}
