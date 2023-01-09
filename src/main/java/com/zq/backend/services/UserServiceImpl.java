package com.zq.backend.services;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Constant;
import com.zq.backend.common.Result;
import com.zq.backend.entity.User;
import com.zq.backend.entity.dto.UserDTO;
import com.zq.backend.exception.ServiceException;
import com.zq.backend.mapper.UserMapper;

import com.zq.backend.utils.JWTUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service
public class UserServiceImpl extends ServiceImpl<UserMapper, User> implements IUserService{

    @Resource
    private UserMapper userMapper;

    /**
     * save a user
     * @param user
     * @return
     */
    @Override
    public boolean saveUser(User user){
        if (user.getId() != null){ // if there is no id in JSON package, execute insert new user
            return updateById(user);
        }else { // if there is id in JSON package, execute update user
            return save(user);
        }
    }

    @Override
    public Result login(UserDTO userDTO) {
        // build query
        QueryWrapper<User> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("telephone", userDTO.getTelephone());
        queryWrapper.eq("password", userDTO.getPassword());
        List<User> list = list(queryWrapper);
        if (list.size() != 1){
            return Result.error(Constant.CODE_401, "telephone or password invalid");
        }
        BeanUtil.copyProperties(list.get(0), userDTO, true); //copy value into DTO, same as userDTO.telephone = list.get(0).telephone
//        // catch exception version
//        try{
//            User result = getOne(queryWrapper);
//            if (result == null){
//                return Result.error(Constant.CODE_401, "telephone or password invalid");
//            }
//            BeanUtil.copyProperties(result, userDTO, true); //copy value into DTO, same as userDTO.telephone = list.get(0).telephone
//        }catch (Exception e){
//            //LOG.error(e);
//            throw new ServiceException(Constant.CODE_500, "invalid password or telephone");
//        }

        userDTO.setToken(JWTUtils.getToken(list.get(0)));
        return Result.success(userDTO);
    }

//    public int save(User user){
//        if (user.getId() != null){ // if there is no id in JSON package, execute insert new user
//            return userMapper.update(user);
//        }else { // if there is id in JSON package, execute update user
//            return userMapper.insert(user);
//        }
//    }
}
