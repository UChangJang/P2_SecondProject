<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">

		<div class="tab1">
			<a href="#">가이드 위시리스트</a>
		</div>
		<div class="tab2">
			<a href="#">관광객 위시리스트</a>
		</div>

		<div class="box alt table-wrapper tabscontents t1">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">지역</th>
						<th width="30%">제목</th>
						<th width="10%">별명</th>
						<th width="10%">날짜</th>
						<th width="7%">인원</th>
						<th width="7%">삭제</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
				</tbody>
			</table>
		</div>
		
		<div class="box alt table-wrapper tabscontents t2">
			<table class="alt">
				<thead>
					<tr>
						<th width="10%">지역1</th>
						<th width="30%">제목1</th>
						<th width="10%">별명1</th>
						<th width="10%">날짜1</th>
						<th width="7%">인원1</th>
						<th width="7%">삭제1</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
					<tr>
						<td>서울</td>
						<td>서울 문화 기행</td>
						<td>보잉</td>
						<td>2016-4-20</td>
						<td>5명</td>
						<td><input type="button" value="삭제"></td>
					</tr>
				</tbody>
			</table>
		</div>

		
		</section>
	</div>
	</section>



	<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
	<script type="text/javascript">
		$('.t1').show();

		$('#tabs div a').on(
				'click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if (index == 3) {
						index = 2;
					}
					$('#tabs div a').css('background-color', '#999')
							.removeClass('active')
					$('.tabscontents').hide();

					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});
	</script>
</body>
</html>