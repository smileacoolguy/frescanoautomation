package com.howtodoinjava.demo.model;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;
import org.junit.Assert;
import org.junit.Test;
import org.openqa.selenium.By;
import org.openqa.selenium.JavascriptExecutor;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;

import java.io.File;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.apache.commons.io.FileUtils;
import org.apache.log4j.Logger;
import org.apache.log4j.PropertyConfigurator;
import org.junit.Assert;
import org.openqa.selenium.By;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.TakesScreenshot;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.phantomjs.PhantomJSDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;




public class NextoryAutomationScripts {
	
	static Logger log = Logger.getLogger(CampaignRedeemAccepted.class);

	// setting up browser firefox 1, chrome 2.

	// static int browser=1;
	public void resetfirefoxbrowser() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\Firefoxbatch.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public void resetgooglebrowser() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\Googlebatch.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public void resetphantombrowser() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\Phantomheadlessbatch.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public void subscriptionbase() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\basesubscription.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	
	public void subscriptionstandard() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\standardsubscription.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	public void subcriptionpremium() {
		try {
	        String[] command = {"cmd.exe", "/C", "Start", "D:\\ismailtest\\testng\\Batches\\premiumsubscription.bat"};
	        Process p =  Runtime.getRuntime().exec(command);           
	    } catch (IOException e) {
	    	e.printStackTrace();
	    }
	}
	
	public static int browser22() {
		ResultSet rs1 = null;
		int browser = 0;
		try {

			String myDriver = "com.mysql.jdbc.Driver";
			String myUrl = "jdbc:mysql://localhost:3306/qatest";
			// String myUrl = "jdbc:mysql://104.199.22.40:3306/nextory_new";
			Class.forName(myDriver);
			Connection conn = DriverManager
					.getConnection(myUrl, "root", "test");
			Statement stmt1 = conn.createStatement();

			rs1 = stmt1
					.executeQuery("select browser  from config where id=1  ");
			while (rs1.next()) {
				browser = rs1.getInt(1);

				// rs1.close();
			}

		} catch (Exception e) {
			log.error(e.getMessage());
		} finally {
			try {
				rs1.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return browser;
	}

	// bas 5 , standard 6 , premium 7
	static String subscriptiontype = "standard";
	static String existingmail = "ismail@test.se";
	static String mail = "ismail3@test.se";
	static String pwd = "ismail";
	static WebDriver driver;

	

	@Test
	public void loadingHomepage() {
		WebDriver driver;
		System.setProperty("webdriver.gecko.driver",
				"//10.91.0.73/Shared/Drivers/geckodriver.exe");
		driver = new FirefoxDriver();
		String url = "http://104.199.22.40//";
		driver.get(url);
		// String et =
		// "Ljudb�cker & E-b�cker - Ladda ner Gratis Ljudbok/E-bok Online";
		String et = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		String bactualt = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		String at = driver.getTitle();
		Assert.assertEquals(bactualt, et);
		driver.quit();

	}


	public void loginScriptForTestNG() {
		String lastName = null;
		try {

			// getSeleniumTestCreatefail();
			getSeleniumTest();
			String myDriver = "com.mysql.jdbc.Driver";
			String myUrl = "jdbc:mysql://localhost:3306/nextory_new";
			// String myUrl = "jdbc:mysql://104.199.22.40:3306/nextory_new";
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(myUrl, "root", "test");
			// Connection conn = DriverManager.getConnection(myUrl, "root",
			// "MyNewPass");

			Statement stmt = conn.createStatement();
			ResultSet rs;

			// rs = stmt.executeQuery("select count(*) as name from ismail  ");
			rs = stmt
					.executeQuery("select member_type_code as name from customerinfo where email='test.8@test.se' ");
			while (rs.next()) {
				lastName = rs.getString("name");
				// String ID = rs.getString("ID");
				// log.info(lastName+"-"+ID);
				int k = 0;
				int i = lastName.length();
				int j = i - 1;
				for (k = 1; k < i - 1; k++)
					k = k + 1;
				// log.info(lastName+" "+i+" "+j+" "+k );
				log.info(lastName);

			}

			String day14membercode = "203002";
			Assert.assertEquals(lastName, day14membercode);
			log.info("Test case passed");

			conn.close();
		} catch (Exception e) {
			log.error("Got an exception! ");
			log.error(e.getMessage());
		}
	}

	public static void getSeleniumTest() throws InterruptedException {

		// WebDriver driver;
		browser22();
		int a = NextoryAutomationScripts.browser22();
		log.info(a);
		if (NextoryAutomationScripts.browser22() == 1) {
			System.setProperty("webdriver.gecko.driver",
					"//10.91.0.73/Shared/Drivers/geckodriver.exe");
			driver = new FirefoxDriver();
		} else if (NextoryAutomationScripts.browser22() == 2) {
			System.setProperty("webdriver.chrome.driver",
					"//10.91.0.73/Shared/Drivers/chromedriver.exe");
			driver = new ChromeDriver();
		} else if (NextoryAutomationScripts.browser22() == 3) {
			System.setProperty(
					"phantomjs.binary.path",
					"//10.91.0.73/Shared/Drivers/phantomjs.exe");
					//"D:\\ismailtest\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe");
			driver = new PhantomJSDriver();
		}
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		driver.get("http://104.199.22.40//");

		// Thread.sleep(10000);
		// driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		// driver.findElement(By.linkText("LOGGA IN")).click();

		log.info(driver.getTitle());
		WebDriverWait wait = new WebDriverWait(driver, 60);
		WebElement element = wait
				.until(ExpectedConditions.elementToBeClickable(By
						.xpath("html/body/div[1]/div[3]/div/div/div/div[1]/nav/ul/li[5]/a")));
		element.click();
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		driver.findElement(By.id("e-mail")).sendKeys(existingmail);
		WebElement epassword = driver.findElement(By.id("password"));
		epassword.sendKeys(pwd);
		epassword.submit();
		// driver.findElement(By.linkText("Logga in")).submit();
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		log.info(driver.getTitle() + " Test Passed Login successful");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);

		// driver.findElement(By.xpath(".//*[@id='subMenu-wrap']/div/div/div/ul/li[3]/span/a")).click();

		WebElement logout = driver
				.findElement(By
						.xpath("html/body/div[1]/div[2]/div[4]/div/div/div/ul/li[3]/span/a"));
		JavascriptExecutor executor = (JavascriptExecutor) driver;
		executor.executeScript("arguments[0].click();", logout);

		// String
		// logout=driver.findElement(By.xpath("html/body/div[1]/div[2]/div[4]/div/div/div/ul/li[3]/span/a")).getText();
		// driver.findElement(By.xpath("html/body/div[1]/div[2]/div[4]/div/div/div/ul/li[3]/span/a")).click();
		Thread.sleep(5000);
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);

		log.info(driver.getTitle() + " " + logout + " "
				+ "Test Passed Logout successful");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		Thread.sleep(5000);
		driver.quit();
	}
}
