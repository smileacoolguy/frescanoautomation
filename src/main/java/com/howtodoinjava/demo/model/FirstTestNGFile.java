package com.howtodoinjava.demo.model;


import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;

public class FirstTestNGFile {
	
	
  @Test
  public void f() {
		WebDriver driver;
		System.setProperty("webdriver.gecko.driver","D:\\ismailtest\\geckodriver-v0.11.1-win32\\geckodriver.exe");
		 driver = new FirefoxDriver();
	  String url="http://104.199.22.40//";
		 driver.get(url);
		 String et = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		 String bactualt = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		String at= driver.getTitle();
		
		Assert.assertEquals(bactualt, et);
		driver.quit();
				 
	  
  }
}
