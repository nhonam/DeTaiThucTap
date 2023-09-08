package com.example.appsportshop.service;


import com.example.appsportshop.R;

import java.util.Arrays;
import java.util.List;
public class CategoryService {



    public static List<String> loadLogoName() {



        String[] nameLogo = new String[]{
                "Thể Hình", "Yoga", "Giày", "Ngoài Trời", "Võ Thuật", "Phụ Kiện"
        };



        return Arrays.asList(nameLogo);


    }


    public static int[] loadLogo() {
        int[] logo  = new int[]{
                R.drawable.gym,
                R.drawable.yoga,
                R.drawable.giay,
                R.drawable.ngoaitroi,
                R.drawable.vothuat,
                R.drawable.phukien

        };

        return logo;


    }




}
