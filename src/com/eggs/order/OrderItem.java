package com.eggs.order;

import com.eggs.domain.Food;

public class OrderItem implements Comparable<OrderItem>{

    private int quantity;
    private Food food;

    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public Food getFood() {
        return food;
    }
    public void setFood(Food food) {
        this.food = food;
    }
    @Override
    public int compareTo(OrderItem o) {
        if(this.equals(o)) return 0;
        else return this.food.getId().compareTo(o.food.getId()); 
    }
}
