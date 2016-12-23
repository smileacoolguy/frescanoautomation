package com.howtodoinjava.demo.model;

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

public class NextoryAutomationScripts {

	// setting up browser firefox 1, chrome 2.

	// static int browser=1;
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
			System.err.println(e.getMessage());
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
				"D:\\ismailtest\\geckodriver-v0.11.1-win32\\geckodriver.exe");
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
				// System.out.println(lastName+"-"+ID);
				int k = 0;
				int i = lastName.length();
				int j = i - 1;
				for (k = 1; k < i - 1; k++)
					k = k + 1;
				// System.out.println(lastName+" "+i+" "+j+" "+k );
				System.out.println(lastName);

			}

			String day14membercode = "203002";
			Assert.assertEquals(lastName, day14membercode);
			System.out.println("Test case passed");

			conn.close();
		} catch (Exception e) {
			System.err.println("Got an exception! ");
			System.err.println(e.getMessage());
		}
	}

	public static void getSeleniumTest() throws InterruptedException {

		// WebDriver driver;
		browser22();
		int a = NextoryAutomationScripts.browser22();
		System.out.println(a);
		if (NextoryAutomationScripts.browser22() == 1) {
			System.setProperty("webdriver.gecko.driver",
					"D:\\ismailtest\\geckodriver-v0.11.1-win32\\geckodriver.exe");
			driver = new FirefoxDriver();
		} else if (NextoryAutomationScripts.browser22() == 2) {
			System.setProperty("webdriver.chrome.driver",
					"D:\\ismailtest\\chromedriver_win32_2.6\\chromedriver.exe");
			driver = new ChromeDriver();
		} else if (NextoryAutomationScripts.browser22() == 3) {
			System.setProperty(
					"phantomjs.binary.path",
					"D:\\ismailtest\\phantomjs-2.1.1-windows\\phantomjs-2.1.1-windows\\bin\\phantomjs.exe");
			driver = new PhantomJSDriver();
		}
		driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		driver.manage().window().maximize();
		driver.get("http://104.199.22.40//");

		// Thread.sleep(10000);
		// driver.manage().timeouts().implicitlyWait(15, TimeUnit.SECONDS);
		// driver.findElement(By.linkText("LOGGA IN")).click();

		System.out.println(driver.getTitle());
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
		System.out.println(driver.getTitle() + " Test Passed Login successful");
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

		System.out.println(driver.getTitle() + " " + logout + " "
				+ "Test Passed Logout successful");
		driver.manage().timeouts().implicitlyWait(5, TimeUnit.SECONDS);
		Thread.sleep(5000);
		driver.quit();
	}
}
