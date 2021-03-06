package com.town.dao;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jdom2.Document;
import org.jdom2.Element;
import org.jdom2.JDOMException;
import org.jdom2.input.SAXBuilder;

public class TownDAO {
	
	private static String serviceKey;	// 서비스 키
	private static SAXBuilder parser;
	
	static {
		serviceKey = "GsOMk0C65eowBFXigmwttr3eNPb4Rla5v5rXSyMNf8KpJvuGuRCPnvxKiJ0hWKrabToNnRyejT7Z1KWzAAGSvg%3D%3D";
		parser = new SAXBuilder();
		parser.setIgnoringElementContentWhitespace(true);
	}
	
	/**
	 * 지역 코드 or 시군구 코드 검색
	 * @param areaCode - 시군구 코드를 검색할때 사용하는 지역 코드, 빈문자열("")일 경우 지역코드를 리턴한다.
	 * @return 지역 or 시군구 코드(TownCodeDTO) 리스트
	 */
	public static List<TownCodeDTO> getAreaCodeList(String areaCode){
		List<TownCodeDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaCode?ServiceKey=" + serviceKey
				+ "&areaCode=" + areaCode
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide";
		System.out.println("검색 url: " + url);
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			String totalCount = root.getChild("body").getChildText("totalCount");	// 총 개수를 알아온다.
			url += "&numOfRows=" + totalCount;	// 총 개수 만큼 한꺼번에 받아오기 위해 url 수정
			doc = parser.build(url);	// 다시 요청 날림
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
	
	/**
	 * 서비스 분류 코드 조회 
	 * 파라미터 값이 관광타입id만 있을 경우(나머지는 "" 빈문자열) 대분류 코드 리턴
	 * 파라미터 값이 관광타입id과 대분류 코드가 있을 경우(나머지는 "" 빈문자열) 중분류 코드 리턴
	 * 파라미터 값이 전부 있을 경우 소분류 코드 리턴
	 * @param contentTypeId - 관광타입(관광지, 문화시설) id
	 * @param cat1 - 대분류 코드
	 * @param cat2 - 중분류 코드
	 * @return - 서비스 분류 코드(TownCodeDTO) 리스트
	 */
	public static List<TownCodeDTO> getCategoryCodeList(String contentTypeId, String cat1, String cat2){
		List<TownCodeDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/categoryCode?ServiceKey=" + serviceKey
				+ "&contentTypeId=" + contentTypeId
				+ "&cat1=" + cat1
				+ "&cat2=" + cat2
				+ "&numOfRows=50&MobileOS=ETC&MobileApp=TourAPI3.0_Guide";	// getAreaCodeList()처럼 총 개수 받아서 다시 요청하지 않고 50개로 잡았음
		System.out.println("검색 url: " + url);
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			/*String totalCount = root.getChild("body").getChildText("totalCount");
			url += "&numOfRows=" + totalCount;
			doc = parser.build(url);*/
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
	
	/**
	 * 관광정보 조회
	 * @param values - TownListSearchValues(여러 검색 타입을 저장하기 위한 클래스)
	 * @return - 관광정보(TownListDTO) 리스트, 전체 결과수, 페이지번호, 한페이지 결과수 가 포함된 Map
	 */
	public static Map<String, Object> getTownsMap(TownListSearchValues values){
		Map<String, Object> returnMap = new HashMap<>();
		List<TownListDTO> list = new ArrayList<>();
		
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?ServiceKey=" + serviceKey
				+ "&contentTypeId=" + values.getContentTypeId() 	// 관광타입ID
				+ "&areaCode=" + values.getAreaCode()				// 지역 코드
				+ "&sigunguCode=" + values.getSigunguCode()			// 시군구 코드
				+ "&cat1=" + values.getCat1()						// 대분류 코드(서비스 분류 코드)
				+ "&cat2=" + values.getCat2()						// 중분류 코드(서비스 분류 코드)
				+ "&cat3=" + values.getCat3()						// 소분류 코드(서비스 분류 코드)
				+ "&listYN=Y&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&numOfRows=" + values.getCountPerPage() 	// 한페이지당 출력수
				+ "&pageNo=" + values.getCurrPage()		// 현재 페이지
				+ "&arrange=" + values.getArrange();	// 정렬 구분
		System.out.println("검색 url: " + url);
		try {
			Document doc = parser.build(url);
			Element root = doc.getRootElement();
			Integer totalCount = Integer.parseInt(root.getChild("body").getChildText("totalCount"));
			Integer pageNo = Integer.parseInt(root.getChild("body").getChildText("pageNo"));
			Integer numOfRows = Integer.parseInt(root.getChild("body").getChildText("numOfRows"));
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
				dto.setModDay(modifiedTime); // YYYY-MM-DD 식으로 변경한 값 저장
				list.add(dto);
			});
			returnMap.put("totalCount", totalCount);
			returnMap.put("pageNo", pageNo);
			returnMap.put("numOfRows", numOfRows);
			returnMap.put("list", list);
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		return returnMap;
	}
	
	/**
	 * 상세정보1(공통정보) 조회
	 * @param contentId - 조회하고자 하는 컨텐트 id
	 * @param contentType - 조회하고자 하는 컨텐트의 관광타입 id
	 * @return 조회된 공통정보(TownDetailCommonDTO) 
	 */
	public static TownDetailCommonDTO getTownDetailCommon(String contentId, String contentType){
		TownDetailCommonDTO dto = new TownDetailCommonDTO();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailCommon?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&defaultYN=Y&firstImageYN=Y&addrinfoYN=Y&mapinfoYN=Y&overviewYN=Y&transGuideYN=Y";
		System.out.println("검색 url: " + url);
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
			dto.setModDay(modifiedTime); // YYYY-MM-DD 식으로 변경한 값 저장
		} catch (JDOMException | IOException e) {
			e.printStackTrace();
		}
		
		return dto;
	}
	
	/**
	 * 상세정보2(소개정보) 조회를 위한 root 엘리먼트를 반환한다.
	 * 관광타입에 따라 파싱해야할 소개정보다 다르기 때문에 각 타입에서 파싱하기 위한 root 엘리먼트를 반환한다.
	 * @param contentId - 조회하고자 하는 컨텐트 id
	 * @param contentType - 조회하고자 하는 컨텐트의 관광타입 id
	 * @return root엘리먼트
	 * @throws JDOMException
	 * @throws IOException
	 */
	private static Element getRootElementForDetailIntro(String contentId, String contentType) throws JDOMException, IOException{
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailIntro?ServiceKey=" + serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&introYN=Y";
		System.out.println("검색 url: " + url);
		Document doc = parser.build(url);
		return doc.getRootElement();
	}
	
	/**
	 * 관광지(12) 타입의 소개정보 검색
	 * @param contentId - 조회하고자 하는 컨텐트 id
	 * @param contentType - 조회하고자 하는 컨텐트의 관광타입 id
	 * @return - 관광지 타입의 소개정보(TownDetailIntroTourSpotDTO)
	 */
	public static TownDetailIntroTourSpotDTO getTownDetailIntroTourSpot(String contentId, String contentType){
		TownDetailIntroTourSpotDTO dto = new TownDetailIntroTourSpotDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType);	// 루트 엘리먼트 가져옴
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
	
	/**
	 * 문화시설(14) 타입의 소개정보 검색
	 * @param contentId - 조회하고자 하는 컨텐트 id
	 * @param contentType - 조회하고자 하는 컨텐트의 관광타입 id
	 * @return 문화시설 타입의 소개정보(TownDetailIntroCultureDTO)
	 */
	public static TownDetailIntroCultureDTO getTownDetailIntroCulture(String contentId, String contentType){
		TownDetailIntroCultureDTO dto = new TownDetailIntroCultureDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
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
	
	/**
	 * '행사/공연/축제'(15) 타입의 소개정보 검색
	 * @param contentId
	 * @param contentType
	 * @return 행사/공연/축제' 타입의 소개정보(TownDetailIntroFestivalDTO)
	 */
	public static TownDetailIntroFestivalDTO getTownDetailIntroFestival(String contentId, String contentType){
		TownDetailIntroFestivalDTO dto = new TownDetailIntroFestivalDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
			Element item = root.getChild("body").getChild("items").getChild("item");
			dto.setAgeLimit(item.getChildText("agelimit"));
			dto.setBookingPlace(item.getChildText("boolingplace"));
			dto.setDiscountInfo(item.getChildText("discountinfofestival"));
			String endDay = item.getChildText("eventenddate");
			endDay = endDay.substring(0, 4) + "-" + endDay.substring(4, 6) + "-" + endDay.substring(6, 8);
			dto.setEventEndDate(endDay);
			dto.setEventHomepage(item.getChildText("eventhomepage"));
			dto.setEventPlace(item.getChildText("eventplace"));
			String startDay = item.getChildText("eventstartdate");
			startDay = startDay.substring(0, 4) + "-" + startDay.substring(4, 6) + "-" + startDay.substring(6, 8);
			dto.setEventStartDate(startDay);
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

	/**
	 * 여행코스 타입(25)의 소개정보 검색
	 * @param contentId
	 * @param contentType
	 * @return 여행코스 타입의 소개정보(TownDetailIntroCourseDTO)
	 */
	public static TownDetailIntroCourseDTO getTownDetailIntroCourse(String contentId, String contentType){
		TownDetailIntroCourseDTO dto = new TownDetailIntroCourseDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
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
	
	/**
	 * 레포트 타입(28)의 소개정보 검색
	 * @param contentId
	 * @param contentType
	 * @return 레포츠 타입의 소개정보(TownDetailIntroLeportsDTO)
	 */
	public static TownDetailIntroLeportsDTO getTownDetailIntroLeports(String contentId, String contentType){
		TownDetailIntroLeportsDTO dto = new TownDetailIntroLeportsDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
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
	
	/**
	 * 쇼핑 타입(38)의 소개정보 검색
	 * @param contentId
	 * @param contentType
	 * @return 소핑 타입의 소개정보(TownDetailIntroShoppingDTO)
	 */
	public static TownDetailIntroShoppingDTO getTownDetailIntroShopping(String contentId, String contentType){
		TownDetailIntroShoppingDTO dto = new TownDetailIntroShoppingDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
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
	
	/**
	 * 음식점 타입(39)의 소개정보 검색
	 * @param contentId
	 * @param contentType
	 * @return 음식점 타입(TownDetailIntroFoodDTO)의 소개정보
	 */
	public static TownDetailIntroFoodDTO getTownDetailIntroFood(String contentId, String contentType){
		TownDetailIntroFoodDTO dto = new TownDetailIntroFoodDTO();
		try {
			Element root = getRootElementForDetailIntro(contentId, contentType); // 루트 엘리먼트 가져옴
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
	
	/**
	 * 상세정보3 (반복정보) 조회
	 * @param contentId
	 * @param contentType
	 * @return 반복정보(TownDetailRepeatInfoDTO) 리스트
	 */
	public static List<TownDetailRepeatInfoDTO> getTownDetailRepeatInfo(String contentId, String contentType){
		List<TownDetailRepeatInfoDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailInfo?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&listYN=Y";
		System.out.println("검색 url: " + url);
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

	/**
	 * 상세정보4 (이미지정보) 조회
	 * @param contentId
	 * @param contentType
	 * @return 이미지정보(TownDetailImageDTO) 리스트
	 */
	public static List<TownDetailImageDTO> getTownDetailImage(String contentId, String contentType){
		List<TownDetailImageDTO> list = new ArrayList<>();
		String url = "http://api.visitkorea.or.kr/openapi/service/rest/KorService/detailImage?ServiceKey="
				+ serviceKey
				+ "&contentTypeId=" + contentType
				+ "&contentId=" + contentId
				+ "&MobileOS=ETC&MobileApp=TourAPI3.0_Guide&imageYN=Y";
		System.out.println("검색 url: " + url);
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
