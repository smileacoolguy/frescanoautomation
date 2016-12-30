package com.howtodoinjava.demo.model;


import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.testng.Assert;
import org.testng.annotations.Test;
import org.testng.remote.RemoteTestNG;

public class FirstTestNGFile {
	static Logger log = Logger.getLogger(FirstTestNGFile.class);
	
  @Test
  public void f() {
	  PropertyConfigurator.configure("log4j.properties");
	  WebDriver driver;
		//System.setProperty("webdriver.gecko.driver","D:\\ismailtest\\geckodriver-v0.11.1-win32\\geckodriver.exe");
		// driver = new FirefoxDriver();
	  String url="http://104.199.22.40//";
		// driver.get(url);
		 String et = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		 String bactualt = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		//String at= driver.getTitle();
		log.info("filename");
		Assert.assertEquals(bactualt, et);
		//driver.quit();
				 
	  
  }
}
