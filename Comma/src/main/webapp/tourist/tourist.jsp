<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
	<title>tourist</title>
	
	</head>
<body>

<!-- Main -->
<article id="main">
	<header>
		<h2>가이드찾기</h2><%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
   <title>customerWrite</title>
   
   <!-- <link rel="stylesheet" href="../controller/assets/css/guide.css" /> -->
</head>
<body>
<!-- Main -->
<article id="main">
   <header>
      <h2>가이드찾기 글쓰기</h2>
      <p>Aliquam ut ex ut interdum donec amet imperdiet eleifend</p>
   </header>
   
   <section class="wrapper style5">
      <div class="inner">


         <section>
            <h2>가이드를 찾아요!</h2>
            <form method="post" action="touristInsert.do">
               <div class="row uniform">
               
                  <div class="2u 12u$(xsmall)">
                     <h3>테마</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="tour_theme" id="demo-category">
                           <option value="">- 테마 -</option>
                           <option value="1">먹방</option>
                           <option value="1">관광</option>
                           <option value="1">교육</option>
                           <option value="1">쇼핑</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>여행지</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_loc" id="demo-category">
                           <option value="">- 지역 -</option>
                           <option value="1">서울</option>
                           <option value="1">대전</option>
                           <option value="1">대구</option>
                           <option value="1">부산</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>날짜</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_tour_date" id="dt" placeholder="날짜선택">
                           <div id="dd"></div>
                  </div>
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>비용</h3>
                  </div>
                  <div class="10u 12u$(xsmall)">
                     <input type="text" name="text_cost" id="demo-name" value="" placeholder="비용" />
                  </div>
                  
                  
                  <div class="2u 12u$(xsmall)">
                     <h3>인원</h3>
                  </div>
                  <div class="10u$">
                     <div class="select-wrapper">
                        <select name="text_total_person" id="demo-category">
                           <option value="">- Category -</option>
                           <option value="1">1명</option>
                           <option value="1">2명</option>
                           <option value="1">3명</option>
                           <option value="1">4명</option>
                           <option value="1">5명</option>
                           <option value="1">6명</option>
                           <option value="1">7명</option>
                           <option value="1">8명</option>
                           <option value="1">9명</option>
                           <option value="1">10명</option>
                        </select>
                     </div>
                  </div>
                  
                  
                  <div class="2u 12u$(small)">
                     <h3>시간</h3>
                  </div>
                  <div class="2u 12u$(small)">
            <!-- 5 오른쪽 -->
            <div class="select-wrapper">
               <select name="text_time1" id="demo-category1">
                  <option value="">- 시간 -</option>
                  <option value="1">1</option>
                  <option value="1">2</option>
                  <option value="1">3</option>
                  <option value="1">4</option>
                  <option value="1">5</option>
                  <option value="1">6</option>
                  <option value="1">7</option>
                  <option value="1">8</option>
                  <option value="1">9</option>
                  <option value="1">10</option>
                  <option value="1">11</option>
                  <option value="1">12</option>
               </select>
            </div>
         </div>
         <div class="2u 12u$(small)">
            <div class="select-wrapper">
               <select name="text_time2" id="demo-category2">
                  <option value="">- 시간 -</option>
                  <option value="1">AM</option>
                  <option value="1">PM</option>
               </select>
            </div>
         </div>
         <div class="2u 12u$(small)" id="time flow">
            <b>~</b>
         </div>
         <div class="2u 12u$(small)">
            <!-- 5-1 오른쪽 -->
            <div class="select-wrapper">
               <select name="text_time3" id="demo-category3">
                  <option value="">- 시간 -</option>
                  <option value="1">1</option>
                  <option value="1">2</option>
                  <option value="1">3</option>
                  <option value="1">4</option>
                  <option value="1">5</option>
                  <option value="1">6</option>
                  <option value="1">7</option>
                  <option value="1">8</option>
                  <option value="1">9</option>
                  <option value="1">10</option>
                  <option value="1">11</option>
                  <option value="1">12</option>
               </select>
            </div>
         </div>
         <div class="2u$ 12u$(small)">
            <div class="select-wrapper">
               <select name="text_time4" id="demo-category4">
                  <option value="">- 시간 -</option>
                  <option value="1">AM</option>
                  <option value="1">PM</option>
               </select>
            </div>
         </div>
                  
                  
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-low" name="text_move" value="walking" checked>
                     <label for="demo-priority-low">보도</label>
                  </div>
                  <div class="4u 12u$(small)">
                     <input type="radio" id="demo-priority-normal" name="text_move" value="bicycle" >
                     <label for="demo-priority-normal">자전거</label>
                  </div>
                  <div class="4u$ 12u$(small)">
                     <input type="radio" id="demo-priority-high"name="text_move" value="car" >
                     <label for="demo-priority-high">자동차</label>
                  </div>
                  
                  <h3>이런 가이드를 원해요</h3>
                  <div class="12u$">
                     <textarea name="tour_detail" id="demo-message" placeholder="Enter your message" rows="6"></textarea>
                  </div>
                  
                  <div class="12u$" id="tourist_insert">
                     <ul class="actions">
                        <li><input type="submit" value="등록" class="special" /></li>
                        <li><input type="reset" value="취소" /></li>
                     </ul>
                  </div>
               </div>
            </form>
         </section>

      </div>
   </section>
</article>
</body>
</html>
		<p>가이드찾기설명</p>
	</header>
	
	<section class="wrapper style5">
		<div class="inner">						
			<form method="post" action="#">
				<div class="row uniform">					<!-- 상세검색div -->
				
					<div id="map"></div>					<!-- 1. 지도 -->
					
					<div class="4u 12u$(xsmall)">
					<div class="select-wrapper tourist_local">
						<select name="text_loc" id="demo-category">
							<option value="">- 지역 -</option>
							<option value="1">서울</option>
							<option value="1">부산</option>
							<option value="1">제주도</option>
							<option value="1">강원도</option>
						</select>
					</div>
					</div>
					
					<div class="4u 12u$(xsmall)">
						<div class="tourist_center" id="demo">
							<input type="text" id="dt" placeholder="날짜선택">
	   							<div id="dd"></div>
						 </div>
					 </div>
					 
					<div class="4u$ 12u$(xsmall)">
					<div class="tourist_center">
						<ul class="actions">
							<a href="#two" class="scrolly">
								<li><input type="submit" value="Send Message"
									class="special" /></li>
							</a>
						</ul>
					</div>
					</div>
					
					
				</div>
			</form>
		</div>
	</section>
			
	<!-- 3x3가이드리스트 출력 -->
	<jsp:include page="${innerList }"></jsp:include>
	

</article>


<script type="text/javascript">
	
// First, create an object containing LatLng and population for each city.
var citymap = {
  	jeju: {
    center: {lat: 33.4, lng: 126.5},
    population: 30
  },
  busan: {
    center: {lat: 35.2, lng: 129},
    population: 30
  },
  jeonju: {
    center: {lat: 35.8, lng: 127},
    population: 30
  },
  yeosu: {
    center: {lat: 34.7, lng: 127.58},
    population: 40
  },
  gyeongju: {
	    center: {lat: 35.8, lng: 129.3},
	    population: 20
	  },
	boryeong: {
		    center: {lat: 36.35, lng: 126.6},
		    population: 2
		  },
	incheon: {
		    center: {lat: 37.5, lng: 126.68},
		    population: 4
		  },
		  seoul: {
			    center: {lat: 37.6, lng: 126.9},
			    population: 40
			  },
			  chuncheon: {
				    center: {lat: 37.85, lng: 127.7},
				    population: 20
				  }
};

function initMap() {
  // Create the map.
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 6,				//클수록 확대많이
    center: {lat: 35.5, lng: 127.5},			//위도,경도
    mapTypeId: google.maps.MapTypeId.TERRAIN
  });

  // Construct the circle for each value in citymap.
  // Note: We scale the area of the circle based on the population.
  for (var city in citymap) {
    // Add the circle for this city to the map.
    var cityCircle = new google.maps.Circle({
      strokeColor: '#FF0000',
      strokeOpacity: 0.8,
      strokeWeight: 0,
      fillColor: '#FF0000',
      fillOpacity: 0.5,
      map: map,
      center: citymap[city].center,     
      radius: Math.sqrt(citymap[city].population) * 8000
    });

  }
  
  
}

    </script>
	<script async defer
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAIq1i-4xWCw8MmkDAnt3jWBPKxInl1y5o&signed_in=true&callback=initMap"></script>



</body>
</html>