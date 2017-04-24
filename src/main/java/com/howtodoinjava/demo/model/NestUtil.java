package com.howtodoinjava.demo.model;



import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.TimeZone;

import org.apache.commons.lang3.ArrayUtils;
import org.joda.time.DateTime;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.gargoylesoftware.htmlunit.javascript.host.dom.Document;
/*import org.apache.commons.lang.ArrayUtils;
import org.bson.Document;
import org.joda.time.DateTime;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.tritonus.share.sampled.file.TAudioFileFormat;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import se.frescano.nest.batch.enums.InMemoryCache;
*/
public class NestUtil {
//static Logger logger=LoggerFactory.getLogger(NestUtil.class);
	public static String ConvertStringToISODateString (String value){
		DateFormat input = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		DateFormat output = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		try {
			java.util.Date date = input.parse(value==null?getCurrentDate():value);
			return output.format(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return null;
	}
	public static String getCurrentDate(){
		return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());
	}
	public static Timestamp convertStringToTimeStamp(String value)  {
		if(org.apache.commons.lang.StringUtils.isBlank(value))
			return null;
		DateFormat df = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		
		Timestamp sqlDate = null;
		java.util.Date d = null;
		try{
			d = df.parse(value);
			sqlDate = new java.sql.Timestamp(d.getTime());
			
		}catch (Exception e) {
			
			String str1 = org.apache.commons.lang.StringUtils.substringAfter(value, "T");
			if(org.apache.commons.lang.StringUtils.isBlank(str1))
				value = value+"T00:00:00";
			else {
				int count = org.apache.commons.lang.StringUtils.countMatches(value, ":");
				if(count == 1)
					value =value+":00";
				if(count == 0)
					value = value+":00:00";
			}
			try {
				d =  df.parse(value);
			} catch (ParseException e1) {
				e1.printStackTrace();
			}
			sqlDate = new java.sql.Timestamp(d.getTime());
		}
		return sqlDate;
	}
	
	public static int[] convert2int(Integer[] array) {
		return ArrayUtils.toPrimitive(array);
	}
	
	/*public static Document getJsonString(Object inputObj){
		ObjectMapper mapper = new ObjectMapper();
		String jsonInString = "";
		Document jsonDoc = null;
		try {
			jsonInString = mapper.writeValueAsString(inputObj);
			jsonDoc = Document.parse(jsonInString);
		} catch (JsonProcessingException e) {
			e.printStackTrace();
		}
		return jsonDoc;
	}*/
	public static java.sql.Date convertToSQLDate(Date utilDate) {
		  if(utilDate!=null)
			  return new java.sql.Date(utilDate.getTime());	
			return null;
		}
	
	public static Calendar ConvertISOStringToCalendar (String value){
		//Calendar cal = javax.xml.bind.DatatypeConverter.parseDateTime(value);
		if(org.apache.commons.lang.StringUtils.isBlank(value)) return null;
		
		Timestamp timeStamp = convertStringToTimeStamp(value);
		Calendar cal  = Calendar.getInstance();
		cal.setTimeInMillis(timeStamp.getTime());
		return cal;
	}
	
	public static long getJsonFormatDate(String value){
		DateFormat input = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		try {
			java.util.Date date = input.parse(value==null?getCurrentDate():value);
			return date.getTime();
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return 0;
	}
	
	public static Date convertDateTime(String date) {
		DateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		if (date == null) {
			return new Date();
		}
		Date convertedCurrentDate = null;
		try {
			convertedCurrentDate = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return convertedCurrentDate;
	}
	public static Date convertDate(String date) {
		DateFormat  sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedCurrentDate = null;
		try {
			convertedCurrentDate = sdf.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return convertedCurrentDate;
	}
	
	public static String ConvertProductStatusStringToISODateString (String value){
		if (value !=null){
			DateFormat input = new SimpleDateFormat("E MMM dd HH:mm:ss z yyyy");
			DateFormat output = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			try {
				java.util.Date date = input.parse(value);
				//System.out.println(output.format(date));
				return output.format(date);
			} catch (ParseException e) {
				e.printStackTrace();
				return ConvertProductStatusStringToISODateStringNew(value);
			}
		}
		return null;
	}
	
	public static String ConvertProductStatusStringToISODateStringNew (String value){
		if (value !=null){
			DateFormat input = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
			DateFormat output = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
			try {
				java.util.Date date = input.parse(value);
				//System.out.println(output.format(date));
				return output.format(date);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		return null;
	}
	
	
	public static Date convertStringToISODate(String date) {
		if (date == null) {
			return new Date();
		}
		DateFormat  input = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		DateFormat output = new SimpleDateFormat("yyyy-MM-dd");
		Date convertedCurrentDate = null;
		try {
			java.util.Date datenew = input.parse(date);
			//System.out.println(output.format(date));
			String newDateStr = output.format(datenew);
			convertedCurrentDate = output.parse(newDateStr);
			/*cal = Calendar.getInstance();
			java.util.Date date1 = sdf.parse(date);
			output.format(date1);
			cal.setTime(output.parse(date1));*/
		} catch (ParseException e) {
			e.printStackTrace();
		}
		return convertedCurrentDate;
		/*Date convertedCurrentDate = new DateTime(date).toDate();
		return convertedCurrentDate;*/
	}
	/*public static InMemoryCache.FORMAT getFormatFromExtn(String extn){
		InMemoryCache.FORMAT format = null;
		if("mp3".equalsIgnoreCase(extn)){
			format = InMemoryCache.FORMAT.AUDIO_303;
		}else if("pdf".equalsIgnoreCase(extn)){
			format = InMemoryCache.FORMAT.E_102;
		}else if("epub".equalsIgnoreCase(extn)){
			format = InMemoryCache.FORMAT.E_105;
		}
		return format;
	}*/
	public static void main(String[] args) throws ParseException {
		//yyyy-MM-dd'T'HH:mm:ss
		//System.out.println(NestUtil.convertStringToISODate("2011-01-01 00:00:00"));
		/*String startdate = getCurrentTimeStringIn24HourFormat();
		System.out.println(startdate);*/
		/*String date = ConvertProductStatusStringToISODateString("2017-01-23T00:00");
		Calendar cal = ConvertISOStringToCalendar(date);
		System.out.println(date);
		System.out.println(cal);*/
		String DATE_FORMAT = "yyyy-MM-dd'T'HH:mm";
		SimpleDateFormat dateFormatUTC=new SimpleDateFormat(DATE_FORMAT);
		dateFormatUTC.setTimeZone(TimeZone.getTimeZone("UTC"));
		String timStamp=dateFormatUTC.format(new Date());
		int p=1000419;
		
		String URL="https://xdapi.elib.se/v1.0/products/"+p+"/files";
		String URL1=URL.concat(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + p));
		System.out.println(URL1);
		
		String URLbook=URL.concat("/"+p+".mp3/");
		String URL2=URLbook.concat(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + p, "1047585.mp3",timStamp));
		System.out.println(URL2);
		System.out.println(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + p));
		System.out.println(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + p, "1047585.mp3",timStamp));
		/*if(logger.isDebugEnabled())
		{
			logger.debug(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + 1047585, "1048918.epub",timStamp));
			logger.debug(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + 1047585));
		}*/
		/*System.out.println(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + 1015119, "1015119.epub",timStamp));
		System.out.println(getOtherPartURL("2238", "ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb", "" + 1043463));*/
		/*HttpURLConnection connection=null;
		int elibResponsecode=0;		
		try {
			URL url=new URL("https://xdapi.elib.se/v1.0/products/1015119/files/1015119.epub?ServiceID=2238&ServiceKey=ARUYiFCtxHNSvTI6ngXy1hBkQ7LJjVK0ZqrWPsz2wGMedo49mb&ProductID=1015119&Filename=1015119.epub&Timestamp=2017-01-30T07:30&Checksum=6405e7ff3e38fc80a6e958eb0e7ff85592856aeb6709e7a211791ff1bd48098c6620d49b9b19c58ccf99bc9fb01e720ab54ac4249cf443d274e630729fa052fc");
			connection = (HttpURLConnection) url.openConnection();		    
			connection.connect();	       
			Long contentLength = new Long(connection.getContentLength());     	   

			elibResponsecode=connection.getResponseCode();
			System.out.println(elibResponsecode);
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
	}
		
	public static Timestamp getTodaystimeStamp() {
		DateTime date = new DateTime().minusHours(1).toDateTime();
		Timestamp sqlDate = new java.sql.Timestamp(date.getMillis());
		return sqlDate;
	}
	
	public static String getCurrentTimeStringIn24HourFormat()
	{
		DateFormat df1 = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		String startDate1=df1.format(new DateTime().minusHours(1).toDate());
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss");
		SimpleDateFormat output = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date d = null;
		try {
			d = sdf.parse(startDate1);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String formattedTime = output.format(d);
		return formattedTime;
	}
	
	public static String convertExceptionToString (Exception e) {
		StringWriter sw = new StringWriter();
		e.printStackTrace(new PrintWriter(sw));
		return sw.toString();
	}
	
	
	private static String getOtherPartURL(String serviceId, String serviceKey,
			String... params) {
		String urlStr = "?"
				+ getBaseRequestParams(serviceId, serviceKey, params) + "&"
				+ getCheckSumParam(serviceId, serviceKey, params);
		return urlStr;
	}
	
	private static String getBaseRequestParams(String serviceId, String serviceKey,
			String... params) {
		String paramsStr = "";
		if (params != null && params.length > 0) {

			String[] arrParams = params;

			if (arrParams.length == 1) {
				paramsStr = "&ProductID=" + arrParams[0];
			} else if (arrParams.length == 2) {
				paramsStr = "&ProductID=" + arrParams[0] + "&Filename="
						+ arrParams[1];
			} else if (arrParams.length == 3) {
				paramsStr = "&ProductID=" + arrParams[0] + "&Filename="
						+ arrParams[1] + "&Timestamp=" + arrParams[2];
			}
		}

		return "ServiceID=" + serviceId + "&ServiceKey=" + serviceKey
				+ paramsStr;
	}
	
	public static String getCheckSumParam(String serviceId, String serviceKey,
			String... params) {
		String toHash = serviceId;
		if (params != null && params.length > 0) {
			String[] arrParams = params;
			for (String strParam : arrParams) {
				toHash = toHash + strParam;
			}
		}
		toHash = toHash + serviceKey;
		MessageDigest md = null;
		byte[] hash = null;
		try {
			md = MessageDigest.getInstance("SHA-512");
			hash = md.digest(toHash.getBytes("UTF-8"));
		} catch (NoSuchAlgorithmException e) {
			e.printStackTrace();
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		return "Checksum=" + convertToHex(hash);
	}
	public static String convertToHex(byte[] raw) {
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < raw.length; i++) {
			sb.append(Integer.toString((raw[i] & 0xff) + 0x100, 16)
					.substring(1));
		}
		return sb.toString();
	}
	
	public static String replacefirstString(String token, int beginIndex, String replace) {		  
		return replace+token.substring(beginIndex).toString();
		}
	/*public static int getAudioFileDuration (InputStream inputStream) {
		
		int seconds = 0;
		try{
			File tempFile = File.createTempFile("audio", ".mp3");
		    tempFile.deleteOnExit();
		    FileOutputStream out = new FileOutputStream(tempFile);
		    IOUtils.copy(inputStream, out);
			
			 AudioFileFormat fileFormat = AudioSystem.getAudioFileFormat(tempFile);
			    if (fileFormat instanceof TAudioFileFormat) {
			        Map<?, ?> properties = ((TAudioFileFormat) fileFormat).properties();
			        String key = "duration";
			        Long microseconds = (Long) properties.get(key);
			        int mili = (int) (microseconds / 1000);
			        seconds = (mili / 1000);
			        System.out.println("Seconds : "+seconds);
			        int sec = (mili / 1000) % 60;
			        int min = (mili / 1000) / 60;
			        System.out.println("time = " + min + ":" + sec);
			    } else {
			        throw new UnsupportedAudioFileException();
			    }
		}catch (UnsupportedAudioFileException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return seconds;
	}*/
	
}
