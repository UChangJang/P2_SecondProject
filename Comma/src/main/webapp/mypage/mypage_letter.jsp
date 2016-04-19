<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
	
</head>
<body>
	<section class="wrapper style5">
	<div class="inner">
		<section id="tabs">
		
			<div class="tab1"><a href="#">받은 쪽지</a></div>
			<div class="tab2"><a href="#">보낸 쪽지</a></div>
			
			<div class="table-wrapper tabscontents t1">
				<table class="alt">
					<thead>
						<tr>
							<th width="10%">제목</th>
							<th width="40%">내용</th>
							<th width="10%">별명</th>
							<th width="10%">날짜</th>
							<th width="7%">답장</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?
							여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			<div class="table-wrapper tabscontents t2">
				<table class="alt">
					<thead>
						<tr>
							<th width="10%">제목1</th>
							<th width="40%">내용1</th>
							<th width="10%">별명1</th>
							<th width="10%">날짜1</th>
							<th width="7%">답장1</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?
							여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
						<tr>
							<td>[서울]</td>
							<td>여행에 관련해서 문의드립니다. 가격 좀 낮춰 주실 수 있으신가요?</td>
							<td>보잉</td>
							<td>2016-4-20</td>
							<td><input type="button" value="답장"></td>
						</tr>
					</tbody>
				</table>
			</div>
			</div>
		</section>
	</div>
	</section>
	
	
	<script async src="//jsfiddle.net/cosmosjs/xQ8JC/3/embed/"></script>
	<script type="text/javascript">
		$('.t1').show();

		$('#tabs div a').on('click',
				function() {
					// alert('');
					index = $(this).parent().index() + 1;
					if(index==3){
						index=2;
					}
					$('#tabs div a').css('background-color', '#999').removeClass('active')
					$('.tabscontents').hide();
					
					$('.t' + index).fadeIn();
					$(this).css('background-color', '#000').addClass('active');
				});
	</script>

</body>
</html>