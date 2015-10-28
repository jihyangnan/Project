package com.nizipnezip.town.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

public class TownDAO {
	
	private static String serviceKey;
	private static SAXBuilder parser;
	
	static {
		serviceKey = "GsOMk0C65eowBFXigmwttr3eNPb4Rla5v5rXSyMNf8KpJvuGuRCPnvxKiJ0hWKrabToNnRyejT7Z1KWzAAGSvg%3D%3D";
		parser = new SAXBuilder();
		parser.setIgnoringElementContentWhitespace(true);
	}
	 
	public static List<TownCodeDTO> getAreaCodeList(String areaCode){
		List<TownCodeDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?ServiceKey=" + serviceKey
				+ "&areaCode=" + areaCode
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide";
		
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			String totalCount = root.getChild("body").getChildText("totalCount");
			url += "&numOfRows=" + totalCount;
			doc = parser.build(url);
			root = doc.getRootElement();
			List<Element> itemList = root.getChild("body").getChild("items").getChildren();
			itemList.forEach(e -> {
				TownCodeDTO dto = new TownCodeDTO();
				dto.setCode(e.getChildText("code"));
				dto.setName(e.getChildText("name"));
				dto.setMum(e.getChildText("mum"));
				list.add(dto);
			});
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static List<TownCodeDTO> getCategoryCodeList(String contentTypeId, String cat1, String cat2){
		List<TownCodeDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?ServiceKey=" + serviceKey
				+ "&contentTypeId=" + contentTypeId
				+ "&cat1=" + cat1
				+ "&cat2=" + cat2
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide";
		
		
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			String totalCount = root.getChild("body").getChildText("totalCount");
			url += "&numOfRows=" + totalCount;
			doc = parser.build(url);
			root = doc.getRootElement();
			List<Element> itemList = root.getChild("body").getChild("items").getChildren();
			itemList.forEach(e -> {
				TownCodeDTO dto = new TownCodeDTO();
				dto.setCode(e.getChildText("code"));
				dto.setName(e.getChildText("name"));
				dto.setMum(e.getChildText("mum"));
				list.add(dto);
			});
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	
	public static List<TownListDTO> getTownList(TownListSearchValues values){
		List<TownListDTO> list = new ArrayList<>();
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=" + serviceKey
				+ "&contentTypeId=" + values.getContentTypeId() 
				+ "&areaCode=" + values.getAreaCode()
				+ "&sigunguCode=" + values.getSigunguCode()
				+ "&cat1=" + values.getCat1()
				+ "&cat2=" + values.getCat2()
				+ "&cat3=" + values.getCat3()
				+ "&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&arrange=A&numOfRows=" + values.getContentTypeId()
				+ "&pageNo=" + values.getCurrPage();
		
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			List<Element> itemList = root.getChild("body").getChild("items").getChildren();
			itemList.forEach(e -> {
				TownListDTO dto = new TownListDTO();
				dto.setTitle(e.getChildText("title"));
				dto.setAddr1(e.getChildText("addr1"));
				dto.setAddr2(e.getChildText("addr2"));
				dto.setImage(e.getChildText("firstimage"));
				dto.setContentId(e.getChildText("contentid"));
				dto.setContentTypeId(e.getChildText("contenttypeid"));
				dto.setReadCount(e.getChildText("readcount"));
				dto.setTel(e.getChildText("tel"));
				String modifiedTime = e.getChildText("modifiedtime");
				modifiedTime = modifiedTime.substring(0, 4) + "-" + modifiedTime.substring(4, 6) + "-" + modifiedTime.substring(6, 8);
				dto.setModDay(modifiedTime);
				list.add(dto);
			});
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		
		return list;
	}
	
	public static TownDetailCommonDTO getTownDetailCommon(String contentId, String contentType){
		TownDetailCommonDTO dto = new TownDetailCommonDTO();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y";
		
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setTitle(item.getChildText("title"));
			dto.setAddr1(item.getChildText("addr1"));
			dto.setAddr2(item.getChildText("addr2"));
			dto.setZipcode(item.getChildText("zipcode"));
			dto.setMapX(item.getChildText("mapx"));
			dto.setMapY(item.getChildText("mapy"));
			dto.setMlevel(item.getChildText("mlevel"));
			dto.setOverview(item.getChildText("overview"));
			dto.setImage(item.getChildText("firstimage"));
			dto.setTel(item.getChildText("tel"));
			dto.setTelName(item.getChildText("telname"));
			dto.setHomepage(item.getChildText("homepage"));
			String modifiedTime = item.getChildText("modifiedtime");
			modifiedTime = modifiedTime.substring(0, 4) + "-" + modifiedTime.substring(4, 6) + "-" + modifiedTime.substring(6, 8);
			dto.setModDay(modifiedTime);
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	private static Element getRootElementFromDetailIntro(String contentId, String contentType) throws JDOMException, IOException{
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y";
		Document doc = parser.build(url);
		return doc.getRootElement();
	}
	
	public static TownDetailIntroTourSpotDTO getTownDetailIntroTourSpot(String contentId, String contentType){
		TownDetailIntroTourSpotDTO dto = new TownDetailIntroTourSpotDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setAccoumCount(item.getChildText("accomcount"));
			dto.setInfoCenter(item.getChildText("infocenter"));
			dto.setChkBabyCarriage(item.getChildText("chkbabycarriage"));
			dto.setChkCreditCard(item.getChildText("chkcreditcard"));
			dto.setChkPet(item.getChildText("chkpet"));
			dto.setExpAgeRange(item.getChildText("expagerange"));
			dto.setExpGuide(item.getChildText("expguide"));
			dto.setHeritage1(item.getChildText("heritage1"));
			dto.setHeritage2(item.getChildText("heritage2"));
			dto.setHeritage3(item.getChildText("heritage3"));
			dto.setOpenDate(item.getChildText("opendate"));
			dto.setParking(item.getChildText("parking"));
			dto.setRestDate(item.getChildText("restdate"));
			dto.setUseSeason(item.getChildText("useseason"));
			dto.setUseTime(item.getChildText("usetime"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static TownDetailIntroCultureDTO getTownDetailIntroCulture(String contentId, String contentType){
		TownDetailIntroCultureDTO dto = new TownDetailIntroCultureDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setAccoumCount(item.getChildText("accomcountculture"));
			dto.setChkBabyCarriage(item.getChildText("chkbabycarriageculture"));
			dto.setChkCreditCard(item.getChildText("chkcreditcardculture"));
			dto.setChkPet(item.getChildText("chkpetculture"));
			dto.setDiscountInfo(item.getChildText("discountinfo"));
			dto.setInfoCenter(item.getChildText("infocenterculture"));
			dto.setParking(item.getChildText("parkingculture"));
			dto.setParkingFee(item.getChildText("parkingfee"));
			dto.setRestDate(item.getChildText("restdateculture"));
			dto.setUseFee(item.getChildText("usefee"));
			dto.setUseTime(item.getChildText("usetimeculture"));
			dto.setScale(item.getChildText("scale"));
			dto.setSpendTime(item.getChildText("spendtime"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static TownDetailIntroFestivalDTO getTownDetailIntroFestival(String contentId, String contentType){
		TownDetailIntroFestivalDTO dto = new TownDetailIntroFestivalDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setAgeLimit(item.getChildText("agelimit"));
			dto.setBookingPlace(item.getChildText("boolingplace"));
			dto.setDiscountInfo(item.getChildText("discountinfofestival"));
			dto.setEventEndDate(item.getChildText("eventenddate"));
			dto.setEventHomepage(item.getChildText("eventhomepage"));
			dto.setEventPlace(item.getChildText("eventplace"));
			dto.setEventStartDate(item.getChildText("eventstartdate"));
			dto.setPlaceInfo(item.getChildText("placeinfo"));
			dto.setPlaytime(item.getChildText("playtime"));
			dto.setProgram(item.getChildText("program"));
			dto.setSpendTime(item.getChildText("spendtimefestival"));
			dto.setSponsor1(item.getChildText("sponsor1"));
			dto.setSponsor1Tel(item.getChildText("sponsor1tel"));
			dto.setSponsor2(item.getChildText("sponsor2"));
			dto.setSponsor2Tel(item.getChildText("sponsor2tel"));
			dto.setSubevent(item.getChildText("subevent"));
			dto.setUseTime(item.getChildText("usetimefestival"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}

	public static TownDetailIntroCourseDTO getTownDetailIntroCourse(String contentId, String contentType){
		TownDetailIntroCourseDTO dto = new TownDetailIntroCourseDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setDistance(item.getChildText("distance"));
			dto.setInfoCenter(item.getChildText("infocentertourcourse"));
			dto.setSchedule(item.getChildText("schedule"));
			dto.setTakeTime(item.getChildText("taketime"));
			dto.setTheme(item.getChildText("theme"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static TownDetailIntroLeportsDTO getTownDetailIntroLeports(String contentId, String contentType){
		TownDetailIntroLeportsDTO dto = new TownDetailIntroLeportsDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setAccoumCount(item.getChildText("accomcountleports"));
			dto.setChkBabyCarriage(item.getChildText("chkbabycarriageleports"));
			dto.setChkCreditCard(item.getChildText("chkcreditcardleports"));
			dto.setChkPet(item.getChildText("chkpetleports"));
			dto.setExpAgeRange(item.getChildText("expagerangeleports"));
			dto.setInfoCenter(item.getChildText("infocenterleports"));
			dto.setOpenPeriod(item.getChildText("openperiod"));
			dto.setParkingFee(item.getChildText("parkingfeeleports"));
			dto.setParking(item.getChildText("parkingleports"));
			dto.setReservation(item.getChildText("reservation"));
			dto.setRestDate(item.getChildText("restdateleports"));
			dto.setScale(item.getChildText("scaleleports"));
			dto.setUseFee(item.getChildText("usefeeleports"));
			dto.setUseTime(item.getChildText("usetimeleports"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static TownDetailIntroShoppingDTO getTownDetailIntroShopping(String contentId, String contentType){
		TownDetailIntroShoppingDTO dto = new TownDetailIntroShoppingDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setChkBabyCarriage(item.getChildText("chkbabycarriageshopping"));
			dto.setChkCreditCard(item.getChildText("chkcreditcardshopping"));
			dto.setChkPet(item.getChildText("chkpetshopping"));
			dto.setCultureCenter(item.getChildText("culturecenter"));
			dto.setFairday(item.getChildText("fairday"));
			dto.setInfoCenter(item.getChildText("infocentershopping"));
			dto.setOpenDate(item.getChildText("opendateshopping"));
			dto.setOpenTime(item.getChildText("opentime"));
			dto.setParking(item.getChildText("parkingshopping"));
			dto.setRestDate(item.getChildText("restdateshopping"));
			dto.setRestroom(item.getChildText("restroom"));
			dto.setSaleItem(item.getChildText("saleitem"));
			dto.setSaleItemcost(item.getChildText("saleitemcost"));
			dto.setScale(item.getChildText("scaleshopping"));
			dto.setShopguide(item.getChildText("shopguide"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static TownDetailIntroFoodDTO getTownDetailIntroFood(String contentId, String contentType){
		TownDetailIntroFoodDTO dto = new TownDetailIntroFoodDTO();
		try {
			Element root = getRootElementFromDetailIntro(contentId, contentType);
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setChkCreditCard(item.getChildText("chkcreditcardfood"));
			dto.setDiscountInfo(item.getChildText("iscountinfofood"));
			dto.setFirstmenu(item.getChildText("firstmenu"));
			dto.setInfoCenter(item.getChildText("infocenterfood"));
			dto.setKidsfacility(item.getChildText("kidsfacility"));
			dto.setOpenDate(item.getChildText("opendatefood"));
			dto.setOpenTime(item.getChildText("opentimefood"));
			dto.setPacking(item.getChildText("packing"));
			dto.setParking(item.getChildText("parkingfood"));
			dto.setReservation(item.getChildText("reservationfood"));
			dto.setRestDate(item.getChildText("restdatefood"));
			dto.setScale(item.getChildText("scalefood"));
			dto.setSeat(item.getChildText("seat"));
			dto.setSmoking(item.getChildText("smoking"));
			dto.setTreatmenu(item.getChildText("treatmenu"));
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	public static List<TownDetailRepeatInfoDTO> getTownDetailRepeatInfo(String contentId, String contentType){
		List<TownDetailRepeatInfoDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&listYN=Y";
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			List<Element> itemList = root.getChild("body").getChild("items").getChildren();
			itemList.forEach(e -> {
				TownDetailRepeatInfoDTO dto = new TownDetailRepeatInfoDTO();
				dto.setContentId(e.getChildText("contentid"));
				dto.setContentTypeId(e.getChildText("contenttypeid"));
				dto.setFldgubun(e.getChildText("fldgubun"));
				dto.setInfoName(e.getChildText("infoname"));
				dto.setInfoText(e.getChildText("infotext"));
				dto.setSerialNum(e.getChildText("serialnum"));
				dto.setSubContentId(e.getChildText("subcontentid"));
				dto.setSubDetailalt(e.getChildText("subdetailalt"));
				dto.setSubDetailimg(e.getChildText("subdetailimg"));
				dto.setSubDetailOverview(e.getChildText("subdetailoverview"));
				dto.setSubName(e.getChildText("subname"));
				dto.setSubNum(e.getChildText("subnum"));
				list.add(dto);
			});
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}

	public static List<TownDetailImageDTO> getTownDetailImage(String contentId, String contentType){
		List<TownDetailImageDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&imageYN=Y";
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			List<Element> itemList = root.getChild("body").getChild("items").getChildren();
			itemList.forEach(e -> {
				TownDetailImageDTO dto = new TownDetailImageDTO();
				dto.setImageName(e.getChildText("imagename"));
				dto.setOriginalURL(e.getChildText("originimgurl"));
				dto.setSerialNum(e.getChildText("serialnum"));
				dto.setSmallImageURL(e.getChildText("smallimageurl"));
				list.add(dto);
			});
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return list;
	}
	

}
