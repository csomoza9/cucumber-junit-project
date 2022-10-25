package com.cydeo.step_definitions;

import com.cydeo.utilities.Driver;
import io.cucumber.java.After;
import io.cucumber.java.Before;

public class Hooks {

    @Before
    public void setupScenario(){
        System.out.println("Setting up browser using cucumber @Before each scenario");
    }

    @After
    public void teardownScenario(){
        System.out.println("it will be closing browser using cucumber @After each scenario");
    }




}
