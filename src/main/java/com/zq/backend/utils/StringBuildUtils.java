package com.zq.backend.utils;

import java.util.ArrayList;
import java.util.List;

public class StringBuildUtils {
    // transfer String "1;2;3" to List(1,2,3)
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

    public static boolean checkPassword(String password){
        String digital = ".*\\d+.*";
        String lowercaseAlphabet = ".*[a-z]+.*";
        String uppercaseAlphabet = ".*[A-Z]+.*";
        String symbol = ".*[!@#$%^&*()_+{};':\",./<>?]+.*";
        // password length should longer than 8
        if (password.length() < 8){
            return false;
        }
        // password required at least 2 type of input
        int typeCount = 0;
        if (password.matches(digital)){
            typeCount++;
        }
        if (password.matches(lowercaseAlphabet)){
            typeCount++;
        }
        if (password.matches(uppercaseAlphabet)){
            typeCount++;
        }
        // special symbols are not allowed in password
        if (password.matches(symbol)){
            return false;
        }
        // password input types less than 2 is not permitted
        if (typeCount < 2){
            return false;
        }
        char[] chars = password.toCharArray();
        for (int i = 0; i < chars.length-5 ; i++) {
            int n1 = chars[i];
            int n2 = chars[i + 1];
            int n3 = chars[i + 2];
            int n4 = chars[i + 3];
            int n5 = chars[i + 4];
            int n6 = chars[i + 5];
            // check replicated letters
            if (n1 == n2 && n1 == n3 && n1 == n4 && n1 == n5 && n1 == n6) {
                return false;
            }
            // check continuous numbers or letters
            if ((n1 + 1 == n2 && n1 + 2 == n3 && n1 + 3 == n4 && n1 + 4 == n5 && n1 + 5 == n6 ) || (n1 - 1 == n2 && n1 - 2 == n3 && n1 - 3 == n4 && n1 - 4 == n5 && n1 - 5 == n6)) {
                return false;
            }
        }
        return true;
    }


}
