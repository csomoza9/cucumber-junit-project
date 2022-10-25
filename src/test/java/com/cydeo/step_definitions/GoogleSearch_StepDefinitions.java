package com.cydeo.step_definitions;

import com.cydeo.pages.GoogleSearchPage;
import com.cydeo.utilities.Driver;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;

public class GoogleSearch_StepDefinitions {
    GoogleSearchPage searchPage = new GoogleSearchPage();

    @Given("user is on Google search page")
    public void user_is_on_google_search_page() {
        Driver.getDriver().get("https://www.google.com");
    }

    @When("user types apple in the google search box and clicks enter")
    public void user_types_apple_in_the_google_search_box_and_clicks_enter() {
        searchPage.searchBox.sendKeys("apple" + Keys.ENTER);
    }

    @Then("verify user sees apple in google title")
    public void user_sees_apple_google_title() {
        Assert.assertTrue("Title verification is failed!",Driver.getDriver().getTitle().contains("apple"));
    }
}
