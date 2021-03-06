<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>가이드 글 수정하기</title>
<link rel="stylesheet" type="text/css" href="../controller/assets/css/introKor.css" />
<!-- 사진 삽입 코드 (url:http://touchsoul.tistory.com/84) -->
<!-- <script type="text/javascript" src="http://code.jquery.com/jquery-2.1.0.min.js"></script> -->
<script type="text/javascript">
	$(function() {
		$("#profile_img").on('change', function() {
			readURL1(this);
		});
		$("#profile_img2").on('change', function() {
			readURL2(this);
		});
		$("#profile_img3").on('change', function() {
			readURL3(this);
		});
	});

	function readURL1(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL2(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah2').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
	function readURL3(input) {
		if (input.files && input.files[0]) {
			var reader = new FileReader();

			reader.onload = function(e) {
				$('#blah3').attr('src', e.target.result);
			}

			reader.readAsDataURL(input.files[0]);
		}
	}
</script>

</head>
<body>
<!-- Main -->
<article id="main"> 
	<header id="header_guideWrite">
	<h2>Guide Write</h2>
	<p>You can be some one's guide</p>
	</header> 
	<section class="wrapper style5">
		<div class="inner">


	<section> <!-- 글쓰기 -->
	<form method="post" action="guideWrite_ok.do" id="guideUpdateFmt" enctype="multipart/form-data">
		<div class="row uniform" id="guideWrite_text">
			<div class="2u 12u$(xsmall)">
				<!-- 1 왼쪽 : 제목-->
				<h5>Subject</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<input type="text" name="guide_subject" id="demo-name" value="${vo.guidevo.guide_subject }"
					placeholder="Subject" />
			</div>

			<div class="2u 12u$(xsmall)">
				<!-- 2 왼쪽 : 관광지소개-->
				<h5>Introduce Tour Location</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<textarea name="guide_loc_intro" id="demo-message"
					placeholder="Write your trip plan" rows="6">${vo.guidevo.guide_loc_intro }</textarea>
			</div>





		 	<div class="2u 12u$(xsmall)">
				<h5>Image & Detail Infomation</h5>
			</div>
			<div class="3u 12u$(xsmall)">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img" name="guide_img" value=""/>
					</div>
					<div>
						<img id="blah" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall)">
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6">${vo.guidevo.guide_detail }</textarea>
			</div>
			
			<div class="2u 12u$(xsmall)">
				<h5>Add or Delete</h5>
			</div>
			<div class="10u$ 12u$(xsmall)" id="plusdelbtn">
				<div class="plusBtn">Add&nbsp;&nbsp;</div>
				<div class="deleteBtn">Delete</div>
			</div>
			
			
			<!-- 22222222222222222222222222222222222222222222222222 -->
			<div class="2u 12u$(xsmall) plusWrite1">
				<h5>Image & Detail Infomation 2</h5>
			</div>
			<div class="3u 12u$(xsmall) plusWrite1">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img2" />
					</div>
					<div>
						<img id="blah2" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall) plusWrite1">
				<textarea name="guide_detail2" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>
			
			<!-- 3333333333333333333333333333333333333333333333333-->
			<div class="2u 12u$(xsmall) plusWrite2">
				<h5>Image & Detail Infomation 3</h5>
			</div>
			<div class="3u 12u$(xsmall) plusWrite2">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img3" value="http://211.238.142.74:8080/controller/image/${vo.guidevo.guide_img }"/>
					</div>
					<div>
						<img id="blah3" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall) plusWrite2">
				<textarea name="guide_detail3" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>


			<div class="2u 12u$(xsmall)">
				<!-- 5 왼쪽 : 지역-->
				<h5>Tour Location</h5>
			</div>
			<div class="4u 12u$(xsmall)">
				<!-- 5 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_loc" id="demo-category">
						<option value="">- Location -</option>
						<option value="SEOUL">Seoul</option>
						<option value="BUSAN">BuSan</option>
						<option value="JEJU">JeJu</option>
						<option value="INCHEON">Incheon</option>
						<option value="BORYEONG">BorYeong</option>
						<option value="YEOSU">YeoSu</option>
						<option value="GYEONGJU">GyeongJu</option>
						<option value="CHUNCHEON">ChunCheon</option>
					</select>
				</div>
			</div>

			<div class="1u 12u$(xsmall)">
				<!-- 5-1 왼쪽 : 모집인원-->
				<h5>People</h5>
			</div>
			<div class="5u$ 12u$(xsmall)">
				<!-- 5-1 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_total_person" id="demo-category">
						<option value="">- PEOPLE -</option>
						<c:forEach var="i" begin="5" end="50" step="5">
							<c:if test="${vo.text_total_person==i }">
								<option selected="selected">${ i} People</option>
							</c:if>
							<c:if test="${vo.text_total_person!=i }">
								<option>${ i} People</option>
							</c:if>
						</c:forEach>
					</select>
				</div>
			</div>


			<div class="2u 12u$(xsmall)">
				<!-- 6 왼쪽 : 비용-->
				<h5>Cost</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 6 오른쪽 -->
				<input type="text" name="text_cost" id="demo-name" value="${vo.text_cost }"
					placeholder="Cost" />
			</div>

			<div class="2u 12u$(xsmall)">
				<!-- 7 왼쪽 : 비용상세-->
				<h5>Cost detail</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 오른쪽 -->
				<textarea name="guide_cost_detail" id="demo-message"
					placeholder="Enter your cost message" rows="6">${vo.guidevo.guide_cost_detail }</textarea>
			</div>

			<div class="2u 12u$(xsmall)">
				<!-- 8 왼쪽 : 이동수단-->
				<h5>Move</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 8 오른쪽 -->
				<input type="radio" id="walking" name="text_move" value="walking" ${vo.text_move eq 'walking'?"checked":"" }>
					<label for="walking">walking</label> 
				<input type="radio" id="car" name="text_move" value="car" ${vo.text_move eq 'car'?"checked":"" }> 
					<label for="car">car</label>
				<input type="radio" id="bicycle" name="text_move" value="bicycle" ${vo.text_move eq 'bicycle'?"checked":"" }>
					<label for="bicycle">bicycle</label>
			
			</div>
		
			
			<div class="2u 12u$(xsmall)">
				<!-- 5 왼쪽 : 시간-->
				<h5>Time Check</h5>
			</div>
			<div class="2u 12u$(xsmall)">
				<!-- 5 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_time1" id="demo-category1">
					<option value="">- START -</option>
					<c:forEach var="i" begin="1" end="12">
					<c:if test="${vo.text_time1==i }">
						<option selected="selected">${ i}</option>
					</c:if>
					<c:if test="${vo.text_time1!=i }">
						<option>${ i}</option>
					</c:if>
					</c:forEach>						
					</select>
				</div>
			</div>
			<div class="2u 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time2" id="demo-category2">
						<option value="">- TIME -</option>
						<option value="am" ${vo.text_time2 eq 'am'?"selected":"" }>AM</option>
						<option value="pm" ${vo.text_time2 eq 'pm'?"selected":"" }>PM</option>
					</select>
				</div>
			</div>
			<div class="1u 12u$(xsmall)" id="timeflow">
				<b>~</b>
			</div>
			<div class="2u 12u$(xsmall)">
				<!-- 5-1 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_time3" id="demo-category3">
						<option value="">- END -</option>
						<c:forEach var="i" begin="1" end="12">
						<c:if test="${vo.text_time3==i }">
							<option selected="selected">${ i}</option>
						</c:if>
						<c:if test="${vo.text_time3!=i }">
							<option>${ i}</option>
						</c:if>
						</c:forEach>
					</select>
				</div>
			</div>
			<div class="2u$ 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time4" id="demo-category4">
						<option value="">- TIME -</option>
						<option value="am" ${vo.text_time4 eq 'am'?"selected":"" }>AM</option>
						<option value="pm" ${vo.text_time4 eq 'pm'?"selected":"" }>PM</option>
					</select>
				</div>
			</div>

			<div class="2u 12u$(xsmall)">
				<!-- 1 왼쪽 : 만날장소-->
				<h5>Meet Place</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<input type="text" name="guide_meet" id="demo-name" value="${vo.guidevo.guide_meet }"
					placeholder="Meet place" />
			</div>


			<div class="2u 12u$(xsmall)">
				<!-- 7 왼쪽 : 관광날짜-->
				<h5>Tour Date</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 오른쪽 -->
				<input type="text" id="dt" name="text_tour_date" placeholder="Select Date" value="${vo.text_tour_date }">
			</div>
		</div>
	<br>
	<ul class="actions fit small gWrbtn">
		<li><button class="button special fit small" id="guide_update">Modify</button></li>
		<li><button class="button fit small" onclick="javascript:history.back()">Cancel</button></li>
	</ul>
	</form>
	</section>
</article>
		

<!-- 세부내용 추가 jquery -->
<script type="text/javascript">

	var p=0;
	
	$(function(){
		$('.plusBtn').click(function(){
			if(p==0){
				$('.plusWrite1').show();
				p=1;
			}else if(p==1){
				$('.plusWrite2').show();
				p=2;
			}else{
				alert("더이상 추가 할 수 없습니다.");
			}
		});
		
		$('.deleteBtn').click(function(){
			if(p==1){
				$('.plusWrite1').hide();
				p=0;
			}else if(p==2){
				$('.plusWrite2').hide();
				p=1;
			}else{
				alert("삭제할 것이 없습니다.");
			}
		});
		
		$('#guide_update').click(function(){
			
			$('#guideUpdateFmt').submit();
		});
		
	});
</script>

</body>
</html>