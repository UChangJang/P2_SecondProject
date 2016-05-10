<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Tourist</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
//1.검색했을 때
		$('#tourSearch').click(function(){		//select_지역선택
			var place=$('#place').val();		//1.지역값 가져오기
			var date=$('#dt').val();			//2.날짜값 가져오기

			if(place=="" || date==""){			//둘 중 하나라도 없으면 검색안돼
				alert("Place and Date are essential condition in searching.");
				return;
			}
			var param="place="+place+"&date="+date;
			sendMessage("POST", "tourist_search.do", param, tourContent);
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
		<header id="tourHeader">
			<h2>Tourist</h2>
			<center>
			<p>I will Find You!</p>
			<p>Check the board to guide someone in Korea!</p>
			</center>
			<a href="#one" class="more scrolly"><img src="images/triangle.png">
					<br>view more</a>
		</header>

		<section class="wrapper style5" id="one">
			<div class="inner">
				<div class="row uniform">

					<!-- 1. 지도 -->
					<div id="map"></div>

					<!-- 2. 검색창 -->
					<div class="5u 12u$(xsmall)">
						<div class="select-wrapper tourist_local">

							<select name="text_loc1" id="place">
								   <option value="">- PLACE -</option>
		                           <option value="SEOUL">SEOUL</option>
		                           <option value="DAEGU">DAEGU</option>
		                           <option value="BUSAN">BUSAN</option>
		                           <option value="JEJU">JEJU</option>
		                           <option value="INCHEON">INCHEON</option>
		                           <option value="CHUNCHEON">CHUNCHEON</option>
		                           <option value="BORYEONG">BORYEONG</option>
		                           <option value="JEONJU">JEONJU</option>
		                           <option value="GYEONGJU">GYEONGJU</option>
		                           <option value="YEOSU">YEOSU</option>
		                           <option value="KANGWONDO">KANGWONDO</option>
		                           <option value="GYEONGGIDO">GYEONGGIDO</option>
							</select>
						</div>
					</div>

					<div class="5u 12u$(xsmall)">
						<div class="tourist_center" id="demo">
							<input type="text" id="dt" placeholder="DATE">
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
				<div class="9u 12u$(xsmall) tourFit">
					<h4>I FIND GUIDE!</h4>
				</div>
				<div class="select-wrapper tourist_select 3u$ 12u$(xsmall) tourFit">
					<select name="text_loc2" id="sortType">
						<option value="">- SORT -</option>
						<option value="cost">Cost</option>
						<option value="newest">Newest</option>
					</select>
				</div>
			</div>


		</section>


		<!-- 5개 투어리스트 리스트 출력 -->
		<div id="tourContent">
			<jsp:include page="${innerjsp }"></jsp:include>
		</div>

	</article>

	<script type="text/javascript">
   var mapJeju=${mapJeju};
   var mapSeoul=${mapSeoul};
   var mapBusan=${mapBusan};
   var mapChuncheon=${mapChuncheon};
   var mapIncheon=${mapIncheon};
   var mapBoryeong=${mapBoryeong};
   var mapJeonju=${mapJeonju};
   var mapGyeongJu=${mapGyeongJu};
   var mapYeosu=${mapYeosu};
   
      
var citymap = {
     jeju: {
    center: {lat: 33.4, lng: 126.5},
    population: mapJeju
  },
  busan: {
    center: {lat: 35.2, lng: 129},
    population: mapBusan
  },
  jeonju: {
    center: {lat: 35.8, lng: 127},
    population: mapJeonju
  },
  yeosu: {
    center: {lat: 34.7, lng: 127.58},
    population: mapYeosu
  },
  gyeongju: {
       center: {lat: 35.8, lng: 129.3},
       population: mapGyeongJu
     },
   boryeong: {
          center: {lat: 36.35, lng: 126.6},
          population: mapBoryeong
        },
   incheon: {
          center: {lat: 37.5, lng: 126.68},
          population: mapIncheon
        },
        seoul: {
             center: {lat: 37.6, lng: 126.9},
             population: mapSeoul
           },
           chuncheon: {
                center: {lat: 37.85, lng: 127.7},
                population: mapChuncheon
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