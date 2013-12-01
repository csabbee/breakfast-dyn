package com.eggs.domain;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import org.yaml.snakeyaml.TypeDescription;
import org.yaml.snakeyaml.Yaml;
import org.yaml.snakeyaml.constructor.Constructor;

public class YamlFileFoodRepository {

    private List<Food> initfoods = new ArrayList<>();
    
    public List<Food> read(InputStream stream){
        Constructor constructor = new Constructor(Food.class);
        TypeDescription foodDescription = new TypeDescription(Food.class);
        constructor.addTypeDescription(foodDescription);
        Yaml yaml = new Yaml(constructor);
        Iterable<Object> iter = yaml.loadAll(stream);
        
        for(Object o : iter){
            addFood((Food)o);
         }
        return initfoods;
    }
    public void addFood(Food food){
        initfoods.add(food);
    }
}
