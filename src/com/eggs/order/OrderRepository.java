package com.eggs.order;

import java.util.HashMap;
import java.util.Map;

public class OrderRepository {
    
    private Map<String, OrderInstance> orders = new HashMap<>();
    private int id = 1;
    
    public void addOrderInstance(OrderInstance instance){
        orders.put(Integer.toString(id), instance);
        instance.setId(id++);
    }
    public void removeOrderInstance(String id){
        orders.remove(id);
        int index = Integer.parseInt(id);
        for (int i = index+1; i < this.id; i++) {
            orders.get(Integer.toString(i)).setId(i-1);
            orders.put(Integer.toString(i-1), orders.get(Integer.toString(i)));
            orders.remove(Integer.toString(i));
        }
        orders.remove(this.id);
        if(this.id > 1) this.id--;
    }
    public Map<String, OrderInstance> getOrderInstances(){
        Map<String, OrderInstance> orderInstances = new HashMap<>(orders);
        return orderInstances;
    }
    public Map<String, OrderInstance> getOrders() {
        return orders;
    }
}
