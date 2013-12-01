package com.eggs.order;

import java.util.HashMap;
import java.util.Map;

public class OrderRepository {

    private Map<String, OrderInstance> orders = new HashMap<>();
    private int id = 0;
    
    public void addOrderInstance(OrderInstance instance){
        orders.put(Integer.toString(id), instance);
        instance.setId(id++);
    }
    public void removeOrderInstance(String id){
        orders.remove(id);
    }
    public Map<String, OrderInstance> getOrderInstances(){
        Map<String, OrderInstance> orderInstances = new HashMap<>(orders);
        return orderInstances;
    }
    public Map<String, OrderInstance> getOrders() {
        return orders;
    }
}
