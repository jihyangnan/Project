package com.controller;

//Model 클래스 모아서 관리해줌
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;

import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

import com.common.*;

public class WebApplicationContext extends DefaultHandler{
	private Map clsMap=new HashMap();
	//생성자
	public WebApplicationContext(String path)
	{
		try
		{
			SAXParserFactory spf= SAXParserFactory.newInstance();
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(new File(path), hm);
			
			clsMap=hm.map;
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}	
	}
	
	public WebApplicationContext(InputStream is){
		SAXParserFactory spf = SAXParserFactory.newInstance();
		try {
			SAXParser sp = spf.newSAXParser();
			HandlerMapping hm = new HandlerMapping();
			sp.parse(is, hm);
			clsMap = hm.map;
		} catch (ParserConfigurationException | SAXException | IOException e) {
			e.printStackTrace();
		}
		
	}
	
	//요청 클래스 전송
	public Model getBean(String id)
	{
		//클래스 받음
		return (Model)clsMap.get(id);
	}
}
