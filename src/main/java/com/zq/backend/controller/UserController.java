package com.zq.backend.controller;


import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.entity.dto.UserLoginDTO;
import com.zq.backend.services.UserServiceImpl;
import com.zq.backend.utils.JWTUtils;
import org.springframework.web.bind.annotation.*;



import javax.annotation.Resource;
import java.util.List;

@RestController
@RequestMapping("/user")
public class UserController {

    @Resource
    private UserServiceImpl userService;

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
            if (!user.getId().toString().equals(JWTUtils.decodeUserId(token))){
                return Result.error(Constant.CODE_401, "id and token are not match");
            }
        }else {
            return Result.error(Constant.CODE_401, "empty token error");
        }
        return userService.updateUser(user);
    }

    // update user information
    @PostMapping("/register")
    public Result register(@RequestBody User user){
        return userService.register(user);
    }

    // query user pages
    @GetMapping("/page")
    public IPage<User> findPage(@RequestParam Integer pageNum, @RequestParam Integer pageSize, @RequestParam(defaultValue = "") String nickname){

        IPage<User> page = new Page<>(pageNum,pageSize);
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();

        // check "" value; ! null and "" are different
        if (!nickname.equals("")){
            queryWrapper.like("nickname", nickname);
        }

        return userService.page(page, queryWrapper);
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
