<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<div class="about_top">
    <div class="container">
    	<div>
       	 <ul>
       	 <li class="siteline">
       	  <img src="images/homelink.png" style="vertical-align:top;"> 내집 등록</li>
       	 </ul>
       	 </div>
       <div class="about">	 
       	 <h2 class="blog_head" align="left"><b>내집 등록 - 1단계</b></h2>
       	
       	 <div style="margin-left:40px;margin-top:15px;">
       	 
       	에어비앤비에 숙소를 등록하고 호스팅을 시작하세요. 
       	 
       	 </div>
       	        	 
       	 <div style="float:left;margin-left:40px;margin-top:30px;">
       	 
  <div style="border:2px solid #f94b4b;border-radius:10px;padding:20px;">
    <div>
       <ul style="list-style:none;">
       <li style="margin-bottom:-10px;"><h4>집 유형 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;숙소 유형&nbsp;&nbsp;&nbsp;&nbsp;수용 인원 </h4></li>
       <li style="margin-top:10px;">
       <select name=hs style="width:30%;"> 
       <option value=1 selected> 아파트 
       <option value=2> 단독주택
       <option value=3> 게스트하우스
       <option value=4> 빌라
       <option value=5> 호텔
       <option value=6> 기타
       </select> 
       
       <select name=rs style="width:30%;"> 
       <option value=1 selected> 집전체  
       <option value=2> 개인실
       <option value=3> 다인실
       </select> 
       
       <select name=pp style="width:20%;">
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       <option value=4> 4
       <option value=5> 5
       </select> </li>
      </ul>
    </div>
    
     <div style="margin-top:20px;">
       <ul style="list-style:none;">
        <li style="margin-bottom:-10px;"><h4>침실수 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;침대&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;욕실 </h4></li>
        <li style="margin-top:10px;">
       <select name=bdrm style="width:30%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       <option value=4> 4
       </select>
       <select name=bed style="width:20%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       </select> 
       <select name=bthrm style="width:20%;"> 
       <option value=1 selected> 1
       <option value=2> 2
       <option value=3> 3
       </select> </li>
      </ul>
    </div>


  <div style="margin-top:50px;">
   <div>
       <ul style="list-style:none;">
       <li style="margin-bottom:5px;"><h4>도시</h4></li>
       <li><input type="text" size=30></li>
      </ul>
    </div>
    
    <div>
       <ul style="list-style:none;">
        <li style="margin-bottom:5px;margin-top:10px;"><h4>숙소 이름</h4></li>
       <li><input type="text" size=40></li>
      </ul>
    </div>
          
    <div>
       <ul style="list-style:none;">
        <li style="margin-bottom:5px;margin-top:10px;"><h4>세부사항</h4></li>
       <li><input type="text" size=50></li>
      </ul>
    </div>
  </div>
</div>
  
</div>
</div>
    <div class="joinup"> 
 <a href="index.jsp?page=nezip/nezipInsert2.jsp">
 <input type=button value="다음" id="join" class="btn"></a>
</div>   
</div>
</div>
	
