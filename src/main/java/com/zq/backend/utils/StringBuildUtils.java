package com.zq.backend.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StringBuildUtils {

    public static List<Integer> splitData(String hobbiesCollection){
        List<Integer> collections = new ArrayList<>();

        for (String e: hobbiesCollection.split(";")){
            collections.add(Integer.parseInt(e));
        }

        return collections;
    }

}
