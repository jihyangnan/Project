package com.controller;
import java.util.*;

import org.xml.sax.Attributes;
import org.xml.sax.SAXException;
import org.xml.sax.helpers.DefaultHandler;
//파싱함
public class HandlerMapping extends DefaultHandler{
	Map map=new HashMap();
	//재정의

	@Override
	public void startElement(String uri, String localName, String qName, Attributes attributes) throws SAXException {
		try
		{
			//파싱됨
			if(qName.equals("bean"))
			{
				//속성 가져오기
				String id=attributes.getValue("id");
				String cls=attributes.getValue("class");
				//메모리 할당
				Class clsName=Class.forName(cls);
				Object obj=clsName.newInstance();
				
				//저장
				map.put(id, obj);
				
			}
		}
		catch(Exception ex){}
		
	}
	
}
