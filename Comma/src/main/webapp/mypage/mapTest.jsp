<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>





<!DOCTYPE html>

<html>
<head>
<title>Google Map �� Ŭ���� ��ǥ���� �˾Ƴ���</title>
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
//Ŭ������ �� �̺�Ʈ
google.maps.event.addListener(map, 'click', function(event) {
placeMarker(event.latLng);
infowindow.setContent("latLng: " + event.latLng); // ���������� �ȿ� Ŭ���� ���� ��ǥ���� �ִ´�.
infowindow.setPosition(event.latLng);             // ������������ ��ġ�� Ŭ���� ������ �����Ѵ�.
});
//Ŭ�� ������ �̺�Ʈ ��
//������������ ����
 var infowindow = new google.maps.InfoWindow(
 { content: '<br><b>���ϴ� ��ġ�� Ŭ��</b>�ϸ� ��ǥ������<br> <b>�����Ͽ� �·ᰪ �Է�</b>�Ͻʽÿ�',
 size: new google.maps.Size(50,50),
 position: myLatlng 
 });  
 infowindow.open(map);
} // function initialize() �Լ� ��

// ��Ŀ ���� �ռ�
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
