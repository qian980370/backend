package com.zq.backend.utils;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StringBuildUtils {

    public static List<Integer> splitData(String hobbiesCollection){
        List<Integer> collections = new ArrayList<>();
        //empty collection
        if (hobbiesCollection.equals("")){
            return collections;
        }
        for (String e: hobbiesCollection.split(";")){
            if (!e.equals("")){
                try{
                    collections.add(Integer.parseInt(e));
                }catch (NumberFormatException nfe){
                    System.out.println("String builder Utils paresInt error: " + nfe.getMessage());
                }

            }
        }

        return collections;
    }

}
