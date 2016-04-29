<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>

<head>
<title>tourist</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>

<script type="text/javascript">
	$(function(){
		//1.검색했을 때
		$('#tourSearch').click(function(){		//select_지역선택
			var place=$('#place').val();		//1.지역값 가져오기
			var date=$('#dt').val();			//2.날짜값 가져오기
			alert(place+","+date);				//seoul, 31/03/2016
			if(place=="" || date==""){			//둘 중 하나라도 없으면 검색안돼
				alert("지역과 날짜를 입력하세요");
				return;
			}
			
			var param="place="+place+"&date="+date;
			sendMessage("POST", "tourist_search.do",param, tourContent);
		});

		//2.정렬
		$('#sortType').change(function(){		
			var sortType=$('#sortType').val();	//가격높은순
			var place=$('#place').val();		//1.지역값 가져오기
			var date=$('#dt').val();			//2.날짜값 가져오기
			if(place=="" || date==""){
				return;
			}
			var param="place="+place+"&date="+date+"&type="+sortType;
			alert(param);
			sendMessage("POST", "tourist_sort.do",param, tourContent);	
			
		});
	});

	//마지막. 데이터리스트 불러오기
	function tourContent() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				$('#tourContent').html(httpRequest.responseText);
			}
		}
	}
</script>
</head>


<body>

	<!-- Main -->
	<article id="main">
		<header id="test">
			<h2>가이드찾기</h2>
			<p>가이드찾기설명</p>
		</header>

		<section class="wrapper style5">
			<div class="inner">
				<div class="row uniform">

					<!-- 1. 지도 -->
					<div id="map"></div>


					<!-- 2. 검색창 -->
					<div class="5u 12u$(xsmall)">
						<div class="select-wrapper tourist_local">

							<select name="text_loc1" id="place">
								<option value="">- 지역 -</option>
								<option value="신촌8">seoul</option>
								<option value="busan">busan</option>
								<option value="jeju">jeju</option>
								<option value="gangwon">gangwon</option>
								<option value="jeonju">jeonju</option>
								<option value="incheon">incheon</option>
								<option value="chuncheon">chuncheon</option>
							</select>
						</div>
					</div>

					<div class="5u 12u$(xsmall)">
						<div class="tourist_center" id="demo">
							<input type="text" id="dt" placeholder="날짜선택">
							<div id="dd"></div>
						</div>
					</div>

					<div class="2u$ 12u$(xsmall)">
						<div class="tourist_center">
							<ul class="actions">
								<a href="#two" class="scrolly">
									<li><input type="submit" value="GO" class="special" id="tourSearch"/></li>
								</a>
							</ul>
						</div>
					</div>
				</div>
			</div>

			
			<!-- 3. 정렬 -->
			<div class="inner">
				<br><br>
				<div class="9u 12u$(xsmall)">
					<h4>I FIND GUIDE!</h4>
				</div>
				<div class="select-wrapper tourist_select 3u$ 12u$(xsmall)">
					<select name="text_loc2" id="sortType">
						<option value="">- 정렬 -</option>
						<option value="가격높은순">가격높은순</option>
						<option value="등록일자순">등록일자순</option>
					</select>
				</div>
			</div>


		</section>


		<!-- 5개 투어리스트 리스트 출력 -->
		
		<div id="tourContent">
			<jsp:include page="${innerList }"></jsp:include>
		</div>

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
    zoom: 6,            //클수록 확대많이
    center: {lat: 35.5, lng: 127.5},         //위도,경도
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