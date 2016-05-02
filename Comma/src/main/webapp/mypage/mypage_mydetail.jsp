<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link rel="stylesheet" href="../assets/css/main.css" />
<link rel="stylesheet" href="../assets/css/mytest.css" />
<link rel="stylesheet" href="../assets/css/mypage.css" />
<!-- 달력css -->
<link rel="stylesheet" href="../assets/css/dcalendar.picker.css">

<link rel="stylesheet" type="text/css" href="mypage/shadow/css/shadowbox.css">
<script type="text/javascript" src="mypage/shadow/js/shadowbox.js"></script>

<!-- 프로필 사진 삽입 코드 (url:http://touchsoul.tistory.com/84) -->

<script type="text/javascript">
Shadowbox.init({
	 players:["iframe"]
});
  $(function() {
  	
      $("#profile_img").on('change', function(){
          readURL(this);
      });
  });
  
  
  function readURL(input) {
      if (input.files && input.files[0]) {
      var reader = new FileReader();

      reader.onload = function (e) {
              $('#blah').attr('src', e.target.result);
          }

        reader.readAsDataURL(input.files[0]);
      }
  }
  function postfind(){
   Shadowbox.open({
      content:'mypage/postfind.jsp',
      player:'iframe',
      width:490,
      height:350,
      title:'우편번호 찾기'
   });
}
  
 $(function(){
	$('#sendBtn').click(function(){		
		var pwd=$('#pwd').val();
		var nick=$('#nick').val();
		var email=$('#email').val();		
		var pwd_check=$('#pwd_check').val();
		var birth=$('#year').val()+"/"+$('#month').val()+"/"+$('#day').val();
		var gender=$('#demo-priority-low').val();
		var tel=$('#tel1').val()+"-"+$('#tel2').val()+"-"+$('#tel3').val();
		var addr=$('#addr1').val()+"-"+$('#addr2').val();
		if(nick.trim()==""){
			alert("nick입력")
			$('#nick').focus();
			return;
		}
		if(pwd.trim()==""){
			alert("pwd입력")
			$('#pwd').focus();
			return;
		}
		if(pwd!=pwd_check){
			alert("pwd check확인")
			$('#pwd').focus();	
			return;
		}
		if(email.trim()==""){
			alert("email입력")
			$('#email').focus();
			return;
		}
		$('#infoCorrectionFrm').submit();
				
		
		
	})
})
       
   </script>

</head>
<body>
	<h3>복구중....</h3>


	<section class="wrapper style5" id="two">		
		<div class="inner">
			<h4>기본정보</h4>
			<div class="table-wrapper">
			<form name="infoCorrection_frm" action="infoCorrection_ok.do" method=post id=infoCorrectionFrm>
				<table class="infomodify">				  
						<tr>

							<td rowspan="3">							
								<input type='file' id="profile_img"/>
								<img id="blah" src="#" alt="your image"/>							
							</td>
						
							<th>ID</th>							
							<td>

								<input type="text" name=id id="id" value="${id }" readonly="readonly">
							</td>
															
							<th>Nickname</th>							
							<td>

								<input type="text" name=nick id="nick" value="${vo.user_nick }">

							</td>
							
						</tr>
						<tr>
							<th>Password</th>
							<td><input type="password" name=pwd id="pwd" value=""  /></td>
							<th>Password check</th>
							<td><input type="password" id="pwd_check" value="" /></td>
						</tr>
						<tr >
							
							<th>E-Mail</th>
							<td colspan=3 style="padding-top: 2em;">
								<input type="email" name=email id="email" value="${vo.user_mail }" size="8" style="width: 20em;display:inline;"/>
							</td>
						</tr>
				</table>
				<hr/>
				
				<h4>추가정보</h4>
				
				<table class="infomodify">

						<tr>
							<th>생년월일</th>
							<td>
							<div id="demo">
								<select name=year id=year>
								 <c:forEach begin="1960" end="2010" var="y">
								   <option value=${y }>${y }년</option>
								 </c:forEach>								 							 
								</select>      						
   							</div>
   							</td>
   							
   							<td>
   							 <div id="demo" >

   							   <select name=month id=month>
	   							  <c:forEach begin="01" end="12" var="m">	   							  
									<option value=${m }>${m }월</option>
								  </c:forEach>
								 </select>
							  </div>
   							</td>
   							
   							  
   							<td>
   							  <div id="demo" >
   							    <select name=day id=day>
	   							 <c:forEach begin="01" end="31" var="d">

									<option value=${d }>${d }일</option>
								 </c:forEach>
								</select>
							   </div>
   							</td>
   							
						</tr>
						 <tr>
							<th >성별</th>
							<td colspan="3">	
							<input type="radio" class="gender" id="demo-priority-low" name="demo-priority" value="남자"/>
							<label for="demo-priority-low">male</label>
							<input type="radio" class="gender" id="demo-priority-normal" name="demo-priority" value="여자"/>
							<label for="demo-priority-normal">female</label>
							</td>
						</tr>
						<tr>
							<th>Mobile</th>
							<td class="phonemy1" colspan="3">
								<select id="tel1" name=tel1  style="width: 5em; display: inline;">
									<option value="010">010</option>
									<option value="011">011</option>
									<option value="017">017</option>
									<option value="016">016</option>
								</select>						
								- <input type="text" id="tel2" name=tel2 size="4" style="width: 8em; display: inline;" >
								- <input type="text" id="tel3" name=tel3 size="4" style="width: 8em; display: inline;">
							</td>							
						</tr>
						<tr>
				            <th>우편번호</th>
							<td class="post" colspan="3">				
								<input type="text" id="post1" name=post1 size="4" readonly="readonly" style="width: 8em; display: inline; " >
								- <input type="text" id="post2" name=post2 size="4" readonly="readonly" style="width: 8em; display: inline;">
								<input type=button value="우편번호 검색" onclick="postfind()">
							</td>	
				         </tr>
				         <tr>
				            <th>주소</th>
				            <td colspan="3">
				               <input type=text name=addr1 size=45 id=addr1 readonly>
				            </td>
				         </tr>
				         <tr>
				            <th>상세주소</th>
				            <td colspan="3">
				               <input type=text name=addr2 size=45  id=addr2 >
				            </td>
				         </tr>
				</table>
				<table>
					<thead>
						<tr><b>Introduce Yourself, shortly!</b></tr>
					</thead>
					<tbody>
						<textarea rows="4" cols="50" name=introduce>${vo.user_introduce }</textarea>
					</tbody>
					

					<tfoot/> 					
				</table>
				<table >
					 <tr height=30>
			            <td colspan=2 align=center style="background-color: white;">
			               <input type=button value="수정" id=sendBtn>
			               <input type=button value="취소">
			            </td>
			         </tr>
			    </table>
				</form>

			</div>
		</div>
	</section>

	
<!-- 			달력 
			<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
			<script src="../assets/js/dcalendar.picker.js"></script>
				<script>
				$('#calendar-demo').dcalendar();
				$('#dt').dcalendarpicker();
				</script> -->
			
</body>
</html>