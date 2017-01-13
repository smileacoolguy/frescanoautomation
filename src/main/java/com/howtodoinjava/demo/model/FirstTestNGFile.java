package com.howtodoinjava.demo.model;


import java.io.File;
import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.io.FileUtils;
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
		DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date dateobj = new Date();
		String filename=(df.format(dateobj)).replaceAll("/", "_").replaceAll(" ","_").replaceAll(":","_");
		log.info(filename);
		File oldfile = new File("D:\\ismailtest\\testng\\log4j\\HTMLLayout.html");
		String filename1="Campaign".concat(filename);
		String s1="//192.168.2.25/Shared/Logs/"+filename1+".html";
	      File newfile = new File(s1);
	      try {
			FileUtils.copyFile(oldfile,newfile);
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	  
  }
}
