package com.eggs.servlet;

import java.util.Map;
import java.util.TreeMap;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.eggs.domain.Food;

/**
 * Application Lifecycle Listener implementation class InitListener
 *
 */
public class InitListener implements ServletContextListener {

    /**
     * Default constructor. 
     */
    public InitListener() {
        // TODO Auto-generated constructor stub
    }

	/**
     * @see ServletContextListener#contextInitialized(ServletContextEvent)
     */
    public void contextInitialized(ServletContextEvent ctxEvent) {
        Map<String, Food> foods = new TreeMap<>();
        String initFoods = ctxEvent.getServletContext().getInitParameter("Foods");
        String[] initFoodArray = initFoods.split(",");
        for (String initfood : initFoodArray) {
            Food food = new Food();
            food.setId(initfood.split("_")[0]);
            food.setName(initfood.split("_")[1]);
            food.setPrice(Float.parseFloat(initfood.split("_")[2]));
            foods.put(food.getId(), food);
        }
        ctxEvent.getServletContext().setAttribute("foods", foods);
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent ctxEvent) {
        // TODO Auto-generated method stub
    }
	
}
