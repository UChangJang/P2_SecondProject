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
		<h2>가이드찾기</h2>
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