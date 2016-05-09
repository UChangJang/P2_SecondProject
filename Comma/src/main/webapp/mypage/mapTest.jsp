<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>





<!DOCTYPE html>

<html>
<head>
<title>Google Map 의 클릭한 좌표값을 알아내자</title>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
<script type="text/javascript" src="http://maps.google.com/maps/api/js?sensor=false"></script>
<script type="text/javascript">
var map;
function initialize() {
var myLatlng = new google.maps.LatLng(37.564615,126.98420299999998); 
var myOptions = {   
zoom: 19,     
center: myLatlng,
mapTypeId: google.maps.MapTypeId.ROADMAP
} 
map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
//클릭했을 때 이벤트
google.maps.event.addListener(map, 'click', function(event) {
placeMarker(event.latLng);
infowindow.setContent("latLng: " + event.latLng); // 인포윈도우 안에 클릭한 곳위 좌표값을 넣는다.
infowindow.setPosition(event.latLng);             // 인포윈도우의 위치를 클릭한 곳으로 변경한다.
});
//클릭 했을때 이벤트 끝
//인포윈도우의 생성
 var infowindow = new google.maps.InfoWindow(
 { content: '<br><b>원하는 위치을 클릭</b>하면 좌표값생성<br> <b>복사하여 좌료값 입력</b>하십시요',
 size: new google.maps.Size(50,50),
 position: myLatlng 
 });  
 infowindow.open(map);
} // function initialize() 함수 끝

// 마커 생성 합수
function placeMarker(location)
{ 
var clickedLocation = new google.maps.LatLng(location);
var marker = new google.maps.Marker({       position: location,        map: map   });
map.setCenter(location);
}
 
 </script>
 </head> 
 
<body leftmargin="0" marginwidth="0" topmargin="0" marginheight="0" onload="initialize();">
 <div id="map_canvas" style="width:100%; height:100%"></div>
 </body>
 </html>
