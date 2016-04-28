<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>

<title>tourist</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>

<script type="text/javascript">

	function find()
	{	
	    var fm2  = document.form2;
		var type = fm2.text_loc2.options[fm2.text_loc2.selectedIndex].value;	//����Ÿ��(1,2,3)
		alert("type:"+type);
	
		var title = fm2.text_loc1.options[fm2.text_loc1.selectedIndex].value;	//�����˻���
		if(title ==""){		//�˻�� ���������
			var param = "type=" + type;
			alert("param"+param);
			sendMessage("POST", "tourist_sort.do", param, theaterInfo)
		}else{				//�˻�� ������
			alert(title);
			var param = "type=" + type+"&local="+title;
			alert("param"+param);
			sendMessage("POST", "tourist_sort.do", param, theaterInfo)
		}		 
		
		
	}

	function theaterInfo() {
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
		<header>
			<h2>���̵�ã��</h2>
			<p>���̵�ã�⼳��</p>
		</header>

	<form name='form2' id="touristForm"> 
			<section class="wrapper style5">

				<div class="inner">

					<div class="row uniform">
						<!-- �󼼰˻�div -->

						<div id="map"></div>
						<!-- 1. ���� -->

					<div class="3u 12u$(xsmall)">
						<div class="select-wrapper tourist_local">
							<select name="text_loc2" id="demo-category"
								onchange='javascript:find();'>
								<option value="">- ���� -</option>
								<option value="1">���ݳ�����</option>
								<option value="2">�ֽż�</option>
								<option value="3">�αⰡ�̵��</option>
							</select>
						</div>
						</div>

						<div class="4u 12u$(xsmall)">
							<div class="select-wrapper tourist_local">

								<select name="text_loc1" id="demo-category">
									<option value="">- ���� -</option>
									<option value="����">����</option>
									<option value="�λ�">�λ�</option>
									<option value="���ֵ�">���ֵ�</option>
									<option value="������">������</option>
								</select>
							</div>
						</div>

						<div class="3u 12u$(xsmall)">
							<div class="tourist_center" id="demo">
								<input type="text" id="dt" placeholder="��¥����">
								<div id="dd"></div>
							</div>
						</div>

						<div class="2u$ 12u$(xsmall)">
							<div class="tourist_center">
								<ul class="actions">
									<a href="#two" class="scrolly">
										<li><input type="submit" value="GO"
											class="special" /></li></a>
								</ul>
							</div>
						</div>


					</div>
				</div>
				
				
				<!-- ���� -->
			<!-- 	<div class="inner">
				<br><br>
				<div class="select-wrapper tourist_select">
					<select name="text_loc2" id="demo-category"
						onchange='javascript:find();'>
						<option value="">- ���� -</option>
						<option value="1">���ݳ�����</option>
						<option value="2">�ֽż�</option>
						<option value="3">�αⰡ�̵��</option>
					</select>
				</div>
				</div> -->

			</section>
	</form> 

		<!-- 5�� �����Ʈ ����Ʈ ��� -->
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
    zoom: 6,            //Ŭ���� Ȯ�븹��
    center: {lat: 35.5, lng: 127.5},         //����,�浵
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