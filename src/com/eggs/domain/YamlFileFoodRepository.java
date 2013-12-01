package com.eggs.domain;

import java.util.ArrayList;
import java.util.List;

import org.yaml.snakeyaml.constructor.Constructor;

public class YamlFileFoodRepository {

    private List<Food> initfoods = new ArrayList<>();
    
    public void read(){
        Constructor constructor = new Constructor(Food.class);
        
    }
}
