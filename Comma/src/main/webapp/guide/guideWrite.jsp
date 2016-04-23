<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>가이드 글 작성</title>
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
<article id="main"> <header>
<h2>가이드 글쓰기</h2>
<p>글을 쓰세요</p>
</header> <section class="wrapper style5">
<div class="inner">


	<section> <!-- 글쓰기 -->
	<form method="post" action="guide_Insert.do">
		<div class="row uniform" id="guideWrite_text">
			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 1 왼쪽 : 제목-->
				<h5>제목</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<input type="text" name="guide_subject" id="demo-name" value=""
					placeholder="Subject" />
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 2 왼쪽 : 관광지소개-->
				<h5>관광지소개</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<textarea name="guide_loc_intro" id="demo-message"
					placeholder="Write your trip plan" rows="6"></textarea>
			</div>





		 	<div class="2u 12u$(xsmall) gWrite_left">
				<h5>세부소개1</h5>
			</div>
			<div class="3u 12u$(xsmall)">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img" />
					</div>
					<div>
						<img id="blah" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall)">
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>
			
			<div class="2u 12u$(xsmall)">
			</div>
			<div class="10u$ 12u$(xsmall)" id="plusdelbtn">
				<div class="plusBtn">내용추가&nbsp;&nbsp;</div>
				<div class="deleteBtn">내용삭제</div>
			</div>
			
			
			<!-- 22222222222222222222222222222222222222222222222222 -->
			<div class="2u 12u$(xsmall) gWrite_left plusWrite1">
				<h5>세부소개2</h5>
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
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>
			
			<!-- 3333333333333333333333333333333333333333333333333-->
			<div class="2u 12u$(xsmall) gWrite_left plusWrite2">
				<h5>세부소개3</h5>
			</div>
			<div class="3u 12u$(xsmall) plusWrite2">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img3" />
					</div>
					<div>
						<img id="blah3" src="#" alt="" />
					</div>

				</span>
			</div>
			<div class="7u$ 12u$(xsmall) plusWrite2">
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>

			






			<!-- <div class="2u 12u$(xsmall) gWrite_left">
				3 왼쪽 : 관광지세부사진
				<h5>세부관광지_사진</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img" />
					</div>
					<div>
						<img id="blah" src="#" alt="" />
					</div>

				</span> <span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img2" />
					</div>
					<div>
						<img id="blah2" src="#" alt="" />
					</div>
				</span> <span class="my-thumb-1">
					<div>
						<input type='file' id="profile_img3" />
					</div>
					<div>
						<img id="blah3" src="#" alt="" />
					</div>
				</span>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				4 왼쪽 : 세부관광지소개
				<h5>세부소개1</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				4 오른쪽
				<textarea name="guide_detail" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				4 왼쪽 : 세부관광지소개
				<h5>세부소개2</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				4 오른쪽
				<textarea name="demo-message" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				4 왼쪽 : 세부관광지소개
				<h5>세부소개3</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				4 오른쪽
				<textarea name="demo-message" id="demo-message"
					placeholder="Enter your message detail" rows="6"></textarea>
			</div> -->

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 5 왼쪽 : 지역-->
				<h5>지역</h5>
			</div>
			<div class="4u 12u$(xsmall)">
				<!-- 5 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_loc" id="demo-category">
						<option value="">- 지역 -</option>
						<option value="1">서울</option>
						<option value="1">부산</option>
						<option value="1">제주도</option>
						<option value="1">강원도</option>
					</select>
				</div>
			</div>

			<div class="1u 12u$(xsmall) gWrite_left">
				<!-- 5-1 왼쪽 : 모집인원-->
				<h5>모집인원</h5>
			</div>
			<div class="5u$ 12u$(xsmall)">
				<!-- 5-1 오른쪽 -->
				<div class="select-wrapper">
					<select name="text_total_person" id="demo-category">
						<option value="">- 모집인원 -</option>
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


			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 6 왼쪽 : 비용-->
				<h5>비용</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 6 오른쪽 -->
				<input type="text" name="text_cost" id="demo-name" value=""
					placeholder="Cost" />
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 7 왼쪽 : 비용상세-->
				<h5>비용상세</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 오른쪽 -->
				<textarea name="guide_cost_detail" id="demo-message"
					placeholder="Enter your cost message" rows="6"></textarea>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 8 왼쪽 : 이동수단-->
				<h5>이동수단</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 8 오른쪽 -->
				<input type="radio" id="walking" name="text_move" checked>
					<label for="walking">walking</label> 
				<input type="radio" id="car" name="demo-priority"> 
					<label for="car">car</label>
				<input type="radio" id="bicycle" name="demo-priority">
					<label for="bicycle">bicycle</label>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 5 왼쪽 : 시간-->
				<h5>시간</h5>
			</div>
			<div class="2u 12u$(xsmall)">
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
			<div class="2u 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time2" id="demo-category2">
						<option value="">- 시간 -</option>
						<option value="1">AM</option>
						<option value="1">PM</option>
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
			<div class="2u$ 12u$(xsmall)">
				<div class="select-wrapper">
					<select name="text_time4" id="demo-category4">
						<option value="">- 시간 -</option>
						<option value="1">AM</option>
						<option value="1">PM</option>
					</select>
				</div>
			</div>

			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 1 왼쪽 : 만날장소-->
				<h5>만날장소</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 2 오른쪽 -->
				<input type="text" name="guide_meet" id="demo-name" value=""
					placeholder="Meet place" />
			</div>


			<div class="2u 12u$(xsmall) gWrite_left">
				<!-- 7 왼쪽 : 관광날짜-->
				<h5>관광날짜</h5>
			</div>
			<div class="10u$ 12u$(xsmall)">
				<!-- 7 오른쪽 -->
				<input type="text" id="dt" name="text_date" placeholder="Select Date">
			</div>
		</div>
	<br>
	<ul class="actions fit small gWrbtn">
		<li><button class="button special fit small">등록</button></li>
		<li><button class="button fit small">취소</button></li>
		<!-- <li><a href="#" class="button special fit small">등록</a></li>
		<li><a href="#" class="button fit small">취소</a></li> -->
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
		
	});
</script>

</body>
</html>