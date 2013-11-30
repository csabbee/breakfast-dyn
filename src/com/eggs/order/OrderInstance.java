package com.eggs.order;

import java.util.Map;
import java.util.TreeMap;

import com.eggs.domain.Address;

public class OrderInstance {

    private String customer;
    private Address delivery;
    private int id;
    private Map<String, OrderItem> orderitems = new TreeMap<>();
    private float total;
    
    public String getCustomer() {
        return customer;
    }
    public void setCustomer(String customer) {
        this.customer = customer;
    }
    public Address getDelivery() {
        return delivery;
    }
    public void setDelivery(Address delivery) {
        this.delivery = delivery;
    }
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
