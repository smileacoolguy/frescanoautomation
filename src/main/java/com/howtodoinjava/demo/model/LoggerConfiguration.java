package com.howtodoinjava.demo.model;
 
import java.io.IOException;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.log4j.BasicConfigurator;
import org.apache.log4j.Level;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;


 
public class LoggerConfiguration {
 
    static //static final Logger logger = Logger.getLogger(Log4jHelloWorld.class);
	//Logger logger = Logger.getLogger(LoggerConfiguration.class.getName());
    Logger logger = Logger.getLogger(LoggerConfiguration.class);
    static Logger logger1 = Logger.getLogger("this is bad");
    
    public static void main(String[] args) throws IOException,SQLException, InterruptedException
    {
    	//you can set the level of logs below code will show o/p greater than warn
    	logger.setLevel(Level.ALL);
    	//logger1.setLevel(Level.WARN);
    	//logger.setLevel(Level.ERROR);
    	//use either property or basic configurator
    	PropertyConfigurator.configure("log4j.properties");
    	//PropertyConfigurator.configure("D:\\ismailtest\\testng\\TestNG-web\\log4j.properties");
    	//BasicConfigurator.configure();
    	DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
		Date dateobj = new Date();
		System.out.println(df.format(dateobj));
    	String s="wow";
    	logger.setLevel(Level.WARN);
    	logger1.info("info Message!");
    	logger.trace(s);
    	//Thread.sleep(1000);
    	logger.info(s);
    	//logger.warn("warning");
    	logger1.info("info Message!");
    	//logger.trace("This is my first log4j's statement");
    	logger.debug("debug message"+" "+df.format(dateobj));
    	logger.debug("debug");
    	
    	logger1.error("Error Message!");
    	logger1.fatal("Fatal Message!");
    	logger1.info("info Message!");
    	
    
    }
}