package com.java.controller;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FController {
	
	@RequestMapping("/index")
	public String index() {
		return "index";
	}
	
	@RequestMapping("/ajax_data")
	@ResponseBody // Data로 반환
	public String ajax_data() throws Exception {
		   String service_key = "Oq8716m%2B%2Be846ymhJLGO0k1vUF0kQbBNjBruiLmlmA2lLBIdGn9UaY0DqqiDDj81kdcn1R4zYBeb%2FLQy3NqWUA%3D%3D";
		   StringBuilder urlBuilder = new StringBuilder("https://apis.data.go.kr/B551011/PhotoGalleryService1/galleryList1"); /*URL*/ //StringBuilder는 메모리 1칸만 사용!
		       urlBuilder.append("?" + URLEncoder.encode("ServiceKey","UTF-8") + "="+service_key); /*Service Key*/
		       //주석처리해야 함.
		       //urlBuilder.append("&" + URLEncoder.encode("ServiceKey","UTF-8") + "=" + URLEncoder.encode("-", "UTF-8")); /*이부분 주석처리 : 공공데이터포털에서 받은 인증키*/
		       urlBuilder.append("&" + URLEncoder.encode("pageNo","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*페이지번호*/
		       urlBuilder.append("&" + URLEncoder.encode("numOfRows","UTF-8") + "=" + URLEncoder.encode("10", "UTF-8")); /*한 페이지 결과 수*/
		       urlBuilder.append("&" + URLEncoder.encode("dataType","UTF-8") + "=" + URLEncoder.encode("json", "UTF-8")); /*요청자료형식(XML/JSON)*/
		       urlBuilder.append("&" + URLEncoder.encode("COURSE_ID","UTF-8") + "=" + URLEncoder.encode("1", "UTF-8")); /*관광 코스ID*/
		       URL url = new URL(urlBuilder.toString());
		       HttpURLConnection conn = (HttpURLConnection) url.openConnection();
		       conn.setRequestMethod("GET");
		       conn.setRequestProperty("Content-type", "application/json");
		       System.out.println("Response code: " + conn.getResponseCode());
		       BufferedReader rd;
		       if(conn.getResponseCode() >= 200 && conn.getResponseCode() <= 300) {
		           rd = new BufferedReader(new InputStreamReader(conn.getInputStream()));
		       } else {
		           rd = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
		       }
		       StringBuilder sb = new StringBuilder();
		       String line;
		       while ((line = rd.readLine()) != null) {
		           sb.append(line);
		       }
		       rd.close();
		       conn.disconnect();
		       System.out.println(sb.toString());
		       return sb.toString();
		   }
	
}
