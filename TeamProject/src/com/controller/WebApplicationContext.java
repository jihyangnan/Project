package com.controller;

//Model Ŭ���� ��Ƽ� ��������
import java.util.HashMap;
import java.util.Map;

import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.xml.sax.helpers.DefaultHandler;
import java.io.File;
import com.common.*;

public class WebApplicationContext extends DefaultHandler{
	private Map clsMap=new HashMap();
	//������
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
	//��û Ŭ���� ����
	public Model getBean(String id)
	{
		//Ŭ���� ����
		return (Model)clsMap.get(id);
	}
}
