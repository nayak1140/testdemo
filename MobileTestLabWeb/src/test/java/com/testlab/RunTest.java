package com.testlab;

import org.junit.runner.RunWith;

import cucumber.junit.Cucumber;

@RunWith(Cucumber.class)
@Cucumber.Options(
format = {"html:target/cucumber"},
tags = "@addproject")
public class RunTest{

}
