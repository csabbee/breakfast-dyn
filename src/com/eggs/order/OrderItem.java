package com.eggs.order;

public class OrderItem implements Comparable<OrderItem>{

    private int quantity;
    private String foodId;

    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }
    public String getFoodId() {
        return foodId;
    }
    public void setFoodId(String foodId) {
        this.foodId = foodId;
    }
    @Override
    public int compareTo(OrderItem o) {
        if(this.equals(o)) return 0;
        else return this.foodId.compareTo(o.foodId); 
    }
}
