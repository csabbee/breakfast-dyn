package com.eggs.servlet;

import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import com.eggs.domain.Food;
import com.eggs.domain.YamlFileFoodRepository;

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
        ctxEvent.getServletContext().setAttribute("foods", foods);
        
        String initYamlFile = ctxEvent.getServletContext().getInitParameter("YamlFile");
        InputStream inputstream = ctxEvent.getServletContext().getResourceAsStream(initYamlFile);
        YamlFileFoodRepository repo = new YamlFileFoodRepository();
        List<Food> initfoods = repo.read(inputstream);
        for (Food food : initfoods) {
            foods.put(food.getId(), food);
        }
    }

	/**
     * @see ServletContextListener#contextDestroyed(ServletContextEvent)
     */
    public void contextDestroyed(ServletContextEvent ctxEvent) {
        // TODO Auto-generated method stub
    }
	
}
