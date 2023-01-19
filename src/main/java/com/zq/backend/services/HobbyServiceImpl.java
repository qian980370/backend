package com.zq.backend.services;

import cn.hutool.core.bean.BeanUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Hobbies;
import com.zq.backend.entity.dto.HobbiesDTO;
import com.zq.backend.mapper.HobbiesMapper;
import com.zq.backend.utils.StringBuildUtils;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;

@Service
public class HobbyServiceImpl extends ServiceImpl<HobbiesMapper, Hobbies> implements HobbyServiceInterface {

    @Resource
    private HobbiesMapper hobbiesMapper;

    @Override
    public Result getHobby(String query, List<Integer> hobbyIdCollection, String duplicate){
        QueryWrapper<Hobbies> queryWrapper = new QueryWrapper<>();

        // check "" value; ! null and "" are different
        if (!query.equals("")){ // there is a query
            queryWrapper.like("name", query);
            // get result, and then we need to mark hobbies which has belonged to user
            List<Hobbies> tempCollection = this.list(queryWrapper);
            // build DTO result
            return Result.success(buildDTO(hobbyIdCollection, tempCollection));
        }
        // get 10 hobbies randomly
        // get total amount of hobbies
        int totalHobbies = Math.toIntExact(hobbiesMapper.selectCount(queryWrapper));

        // if total amount of hobbies less than 10
        if (totalHobbies < 10){
            return Result.success(this.list(queryWrapper));
        }
        // get 10 hobbies randomly
        int randomCount =(int) (Math.random()*totalHobbies);
        if (randomCount > totalHobbies-10) {
            randomCount = totalHobbies-10;
        }
        queryWrapper.orderByDesc("id");
        queryWrapper.last("limit "+ randomCount +", 10");
        List<Hobbies> randomList = this.list(queryWrapper);

        return Result.success(buildDTO(hobbyIdCollection, randomList));
    }

    @Override
    public boolean checkExisting(String hobbyIdList){
        QueryWrapper<Hobbies> queryWrapper = new QueryWrapper<>();
        // split string data to be array
        List<Integer> hobbiesCollection = StringBuildUtils.splitData(hobbyIdList);

        // check data existing
        for (Integer s : hobbiesCollection) {
            queryWrapper.clear();
            queryWrapper.eq("id", s);
            if (this.list(queryWrapper).size() != 1) {
                return false;
            }
        }
        return true;
    }

    @Override
    public List<HobbiesDTO> buildDTO(List<Integer> hobbyIdCollection, List<Hobbies> tempCollection){
        // FINAL DTO results list
        List<HobbiesDTO> result = new ArrayList<>();
        for (Hobbies e: tempCollection){
            HobbiesDTO hobbiesDTO = new HobbiesDTO();
            // copy common value into DTO
            BeanUtil.copyProperties(e, hobbiesDTO, true);
            // set duplicate mark for DTO
            hobbiesDTO.setDuplicate(hobbyIdCollection.contains(e.getId()));
            result.add(hobbiesDTO);
        }

        return result;
    }

    public String transferList(String hobbyList) {
        StringBuilder transferredHobby = new StringBuilder();
        for (Integer id: StringBuildUtils.splitData(hobbyList)){
            transferredHobby.append(getById(id).getName()).append(";");
        }
        return transferredHobby.toString();
    }

    public List<Hobbies> transferDetailList(String hobbyList) {
        List<Hobbies> transferredHobby = new ArrayList<>();
        for (Integer id: StringBuildUtils.splitData(hobbyList)){
            transferredHobby.add(getById(id));
        }
        return transferredHobby;
    }
}
