package com.eggs.order;

import java.util.Map;
import java.util.TreeMap;

public class OrderInstance {

    private int id;
    private Map<String, OrderItem> orderitems = new TreeMap<>();
    private float total;

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }
    public Map<String, OrderItem> getOrderitems() {
        return orderitems;
    }
    public void setOrderitems(Map<String, OrderItem> orderitems) {
        this.orderitems = orderitems;
    }
    public float getTotal() {
        total = 0;
        for (OrderItem orderItem : orderitems.values()) {
            total+= orderItem.getQuantity()*orderItem.getFood().getPrice();
        }
        return total;
    }
    public void setTotal(float total) {
        this.total = total;
    }
}
