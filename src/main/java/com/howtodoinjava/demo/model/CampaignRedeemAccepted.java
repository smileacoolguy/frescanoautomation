package com.howtodoinjava.demo.model;

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
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.Test;
import org.testng.asserts.SoftAssert;

public class CampaignRedeemAccepted {
	ResultSet rs1 = null;
	ResultSet rs2 = null;
	int browser = 0;
	String subscriptiontype = null;
	String existingmail = null;
	String mail = null;
	String pwd = null;
	String voucher = null;
	WebDriver driver;
	static Logger log = Logger.getLogger(CampaignRedeemAccepted.class);
	
	
	
	
	
	@Test (enabled=false)//(priority=1)
	public void URLlaunch() {
		WebDriverWait wait = new WebDriverWait(driver, 60);
			
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		String url = "http://104.199.22.40//";
		driver.manage().window().maximize();
		driver.get(url);
	
		
		String et = "Ljudböcker & E-böcker - Ladda ner Gratis Ljudbok/E-bok Online";
		String bactualt = "Ljudbcker & E-bcker - Ladda ner Gratis Ljudbok/E-bok Online";
		String at = driver.getTitle();
		Assert.assertEquals(at, et);
		
		
	//}

	//@Test(priority = 1)
	//public void campaignaccepted() 
		
	
		WebElement element = wait.until(ExpectedConditions.elementToBeClickable(By
						.xpath(".//*[@id='page-wrap']/div[5]/div/div/div[1]/ul/li[10]/a")));
		element.click();
		
		
		
	
		WebElement element1 = wait.until(ExpectedConditions
				.elementToBeClickable(By.id("vouchercode")));
		element1.sendKeys(voucher);
		driver.findElement(By.id("email")).sendKeys(mail);
		WebElement email = driver.findElement(By.id("confirmemail"));
		email.sendKeys(mail);
		WebElement epassword = driver.findElement(By.id("password"));
		epassword.sendKeys(pwd);
		epassword.submit();
		
		
		
		driver.manage().timeouts().implicitlyWait(20, TimeUnit.SECONDS);
		driver.findElement(By.id(subscriptiontype)).click();
		driver.findElement(By.xpath(".//*[@id='campVoucherBean']/button[2]"))
				.submit();
		
		// enter credit card details
		
		driver.findElement(By.id("holderName")).sendKeys("FrescanoTest");
		driver.findElement(By.className("creditcardnumber")).sendKeys(
				"5555444433331111");
		WebElement selectelement = driver
				.findElement(By
						.xpath("html/body/div[2]/div[4]/div/div/div/div[1]/form/div[3]/select"));
		// selecting month from dropdown
		Select dropdown = new Select(selectelement);
		dropdown.selectByIndex(6);
		// driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		// selecting year from dropdown
		WebElement selectelement1 = driver
				.findElement(By
						.xpath("html/body/div[2]/div[4]/div/div/div/div[1]/form/div[4]/select"));
		Select dropdown1 = new Select(selectelement1);
		dropdown1.selectByValue("2016");
		// driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		driver.findElement(
				By.xpath("html/body/div[2]/div[4]/div/div/div/div[1]/form/div[5]/input"))
				.sendKeys("737");
		// driver.manage().timeouts().implicitlyWait(2, TimeUnit.SECONDS);
		driver.findElement(
				By.xpath(".//*[@id='adyen-encrypted-form']/input[4]")).submit();
		
		driver.findElement(By.id("firstname")).sendKeys("QA");
		driver.findElement(By.id("lastname")).sendKeys("Test");
		WebElement login = driver.findElement(By.id("cellphone"));
		login.sendKeys("9999888800");
		login.submit();
		
		
		
		String successurl = "http://104.199.22.40/tack-for-registrering/";
		String currenturl = driver.getCurrentUrl();
		Assert.assertEquals(successurl, currenturl);
		
		
		
		File scrFile = ((TakesScreenshot) driver).getScreenshotAs(OutputType.FILE);
		// Now you can do whatever you need to do with it, for example copy
		// somewhere
		try {
			DateFormat df = new SimpleDateFormat("dd/MM/yy HH:mm:ss");
			Date dateobj = new Date();
			String datemask="screenshot".concat((df.format(dateobj)).replaceAll("/", "_").replaceAll(" ","_").replaceAll(":","_"));
			log.info(datemask);
			FileUtils.copyFile(scrFile, new File("D:\\ismailtest\\testng\\screenshot\\"+datemask+".png"));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
		
		@Test  // (priority=10)
		public void checkthemembertypecode() {
			int membertypecodeactual=0;
			int membertypecodeexpected=202002;
			try {
				String myDriver = "com.mysql.jdbc.Driver";
				String myUrl = "jdbc:mysql://localhost:3306/qatest";
				// String myUrl = "jdbc:mysql://104.199.22.40:3306/nextory_new";
				
				
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(myUrl, "root", "test");
			Statement stmt1 = conn.createStatement();
			
//change the below query when deployed
			rs1 = stmt1.executeQuery("select member_type_code as membercode from nextory_new.customerinfo where member_type_code=202002 limit 1;");

			while (rs1.next()) {
				membertypecodeactual = rs1.getInt("membercode");
			}
			}
			catch (Exception e) {
				log.error(e.getMessage());
			} finally {
				try {
					rs1.close();
					// rs2.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			Assert.assertEquals(membertypecodeexpected,membertypecodeactual);
		}
	
	

	@BeforeMethod
	public void browserselect() {
		// setting up browser firefox 1, chrome 2. 3phantomheadless

		// static int browser=1;
		// public static int browserselect() {
		
	
		try {
			String myDriver = "com.mysql.jdbc.Driver";
			String myUrl = "jdbc:mysql://localhost:3306/qatest";
			// String myUrl = "jdbc:mysql://104.199.22.40:3306/nextory_new";
			
						
			Class.forName(myDriver);
			Connection conn = DriverManager.getConnection(myUrl, "root", "test");
			Statement stmt1 = conn.createStatement();
			

			rs1 = stmt1.executeQuery("select browser as selectbrowser,subscriptiontype as subscriptiontype,existingmail as existingmail,mail as mail,pwd as pwd from config where id=1  ");

			while (rs1.next()) {
				browser = rs1.getInt("selectbrowser");
				subscriptiontype = rs1.getString("subscriptiontype");
				existingmail = rs1.getString("existingmail");
				mail = rs1.getString("mail");
				pwd = rs1.getString("pwd");

				// rs1.close();
			}
			rs1 = stmt1
					.executeQuery("select b.voucher_code as voucher,a.frequency,a.displayprice from nextory_new.campaign_voucher_master a left outer join nextory_new.camp_voucher_map b on a.camp_id=b.camp_id where multiple_reduction_allow=1  and status='ACTIVE' and active=1 and expiry_date>=curdate() and camp_name='Buzzador_friend' limit 1;");
			// and displayprice>0 and camp_name='Buzzador_friend'
			while (rs1.next()) {
				voucher = rs1.getString("voucher");
			}
		} catch (Exception e) {
			log.error(e.getMessage());
		} finally {
			try {
				rs1.close();
				// rs2.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		log.info(browser + " " + subscriptiontype + " "
				+ existingmail + " " + mail + " " + pwd + " " + voucher);
		if (browser == 1) {
			System.setProperty("webdriver.gecko.driver",
					"D:\\ismailtest\\geckodriver-v0.11.1-win32\\geckodriver.exe");
			driver = new FirefoxDriver();
		} else if (browser == 2) {
			System.setProperty("webdriver.chrome.driver",
					"D:\\ismailtest\\chromedriver_win32_2.6\\chromedriver.exe");
			driver = new ChromeDriver();
		} else if (browser == 3) {
			System.setProperty(
					"phantomjs.binary.path",
					"D:\\ismailtest\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe");
			driver = new PhantomJSDriver();
		}
	}

	@AfterClass
	public void killbrowserprocesses() {
		driver.quit();
	}
}
	


	
