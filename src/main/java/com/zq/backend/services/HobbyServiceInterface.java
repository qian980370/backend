package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Hobbies;
import com.zq.backend.entity.dto.HobbiesDTO;

import java.util.List;

public interface HobbyServiceInterface extends IService<Hobbies> {
    Result getHobby(String query, List<Integer> hobbyIdCollection, String duplicate);
    boolean checkExisting(String HobbyIdList);
    List<HobbiesDTO> buildDTO(List<Integer> hobbyIdCollection, List<Hobbies> tempCollection);
}
