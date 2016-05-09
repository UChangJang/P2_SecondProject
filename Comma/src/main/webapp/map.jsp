<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
<style type="text/css">

 html { height : 100% }
 body { height : 100%; margin: 0% 0% 0% 0%; padding: 0 }
  #map_canvas { height : 100% }
</style>

<script type = "text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=true"></script>
<script type="text/javascript" src="http://google-maps-utility-library-v3.googlecode.com/svn/trunk/markerclusterer/src/markerclusterer_compiled.js"></script>
<script type = "text/javascript">
var map;
var infowindow;
var i = 0;
var markers =[];
var markerCluster = null;

//MarkerClusterer 오브젝트를 담기 위한 변수를 생성합니다.
//이 변수를 Global 변수로 지정해야 아래의 세 함수에서 모두 사용할 수 잇습니다.
//Refresh 버튼을 생성하기 위한 함수입니다.
function NewControl(controlDiv, map) {

   // Set CSS styles for the DIV containing the control
   // Setting padding to 5 px will offset the control
   // from the edge of the map
   controlDiv.style.padding = '5px';

   // Set CSS for the control border
   var controlUI = document.createElement('DIV');
   controlUI.style.backgroundColor = 'white';
   controlUI.style.borderStyle = 'solid';
   controlUI.style.borderWidth = '3px';
   controlUI.style.cursor = 'pointer';
   controlUI.style.textAlign = 'center';
   controlUI.title = 'Click to set the map to Home';
   controlDiv.appendChild(controlUI);

   // Set CSS for the control interior
   var controlText = document.createElement('DIV');
   controlText.style.fontFamily = 'Arial,sans-serif';
   controlText.style.fontSize = '14px';
   controlText.style.paddingLeft = '4px';
   controlText.style.paddingRight = '4px';
   controlText.innerHTML = 'Refresh';
   controlUI.appendChild(controlText);

   // 'Refresh' 컨트롤을 클릭할 경우 지도에 있는 마커와 MarkerClustere를 제거합니다.
   google.maps.event.addDomListener(controlUI, 'click', function() {
   if(markerCluster){
    	markerCluster.clearMarkers();
  		//MarkerClusterer 오브젝트의 clearMarkers() 함수를 사용하여 Clustering하던 모든 마커를 제거합니다.
   }

   for(var j=0; j<markers.length; j++){ 
       markers[j].setMap(null); 
   } 

   markers.length = 0; 
   markers = [];
   i = 0;
   }); 

}

function initialize(){
	
	if("${vo.guidevo.guide_map}"!=""){//board에서쓰일부분
		alert("${vo.guidevo.guide_map}");
	var te="${vo.guidevo.guide_map}";
	alert("te="+te);
	var t1 = te.substring(0,te.lastIndexOf(','));
	var t2 = te.substring(te.lastIndexOf(',')+2);
	alert(t1);
	alert(t2);
		var latlng = new google.maps.LatLng(t1, t2);
		alert(latlng);
	 	var myOptions = {
		  	zoom: 8,
		  	center:latlng,
		  	mapTypeId: google.maps.MapTypeId.ROADMAP   
		};
	}
	else{
	 	var latlng = new google.maps.LatLng(36.5240220, 127.9265940);
	 	var myOptions = {
		  	zoom: 8,
		  	center:latlng,
		  	mapTypeId: google.maps.MapTypeId.ROADMAP   
		};
	}
	map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	var newControlDiv = document.createElement('DIV');
	var newControl = new NewControl(newControlDiv, map);
	newControlDiv.index = 1;
	map.controls[google.maps.ControlPosition.TOP_RIGHT].push(newControlDiv);
	// refresh 버튼을 누르면 newControl 함수를 실행합니다.
	
	markerCluster = new MarkerClusterer(map,markers);
	// 위에서 생성한 markerCluster 변수에 MarkerClusterer 오브젝트를 생성합니다.
	
	infowindow = new google.maps.InfoWindow();
	google.maps.event.addListener(map, 'click', Setmarker);
	// 지도를 클릭했을 때 클릭한 지점에 마커를 생성하는 함수를 실행합니다.
};

//클릭했을 때 마커를 생성하는 함수입니다.
function Setmarker(event) {
   	markers.push(new google.maps.Marker({
	   position: event.latLng,
	   map: map
   	}));
   	alert(event.latLng);
   	document.guideInsertFmt.guide_map.value=event.latLng;
   	alert(document.guideInsertFmt.guide_map.value);
	//markers 배열에 클릭한 지점에 위치하는 마커를 추가합니다.
  	//infowindow.setContent("The " + i +"th marker is presented here.");
  	//infowindow.open(map,markers[i]);
	//클릭할 때마다 마커를 생성함과 동시에 infowindow도 열어줍니다.
  	markerCluster.addMarker(markers[i],0);
	//markerCluster 클래스에 addMarker라는 마커를 추가시켜주는 함수를 통해 생성한 마커를 MarkerClusterer에 추가합니다.
	i++; 
};


</script>
</head>
<body onload="initialize()">

 <!-- <div id="map_canvas" style="width:100%; height:100%"></div> -->

</body>
</html>