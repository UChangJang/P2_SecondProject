<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>


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
   <section class="wrapper style5" id="two">      
      <div class="inner">
         <h4>Information</h4>
         <div class="table-wrapper">
         <form name="infoCorrection_frm" action="infoCorrection_ok.do" method=post id=infoCorrectionFrm enctype="multipart/form-data">
            <table class="infomodify">              
                  <tr>

                     <td rowspan="3">                     
                        <input type='file' id="profile_img" name="user_img"/>
                        <img id="blah" src="#" alt="your image" style="height:16em"/>            
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
            
            <h4>More Detail</h4>
            
            <table class="infomodify">

                  <tr>
                     <th>Birth</th>
                     <td>
                     <div id="demo">
                        <select name=year id=year>
                         <c:forEach begin="1960" end="2010" var="y">
                         
                         	<c:if test="${year==y }">							
								<option value=${y } selected="selected">${y }Year</option>
							</c:if>
							<c:if test="${year!=y }">						
								<option value=${y }>${y }Year</option>
							</c:if>
                         
                           
                         </c:forEach>                                               
                        </select>                        
                        </div>
                        </td>
                        
                        <td>
                         <div id="demo" >

                           <select name=month id=month>
                             <c:forEach begin="01" end="12" var="m">                             
                           <c:if test="${month==m }">							
								<option value=${m } selected="selected">${m }Month</option>
							</c:if>
							<c:if test="${month!=m }">						
								<option value=${m }>${m }Month</option>
							</c:if>
                          </c:forEach>
                         </select>
                       </div>
                        </td>
                        
                          
                        <td>
                          <div id="demo" >
                            <select name=day id=day>
                            <c:forEach begin="01" end="31" var="d">

                          <c:if test="${day==d }">							
								<option value=${d } selected="selected">${d }day</option>
							</c:if>
							<c:if test="${day!=d }">						
								<option value=${d }>${d }day</option>
							</c:if>
                         </c:forEach>
                        </select>
                        </div>
                        </td>
                        
                  </tr>
                   <tr>
                     <th >Sex</th>
                     <td colspan="3">   
                     <input type="radio" class="gender" id="demo-priority-low" name="demo-priority" value="남자"  ${vo.user_sex eq '남자'?"checked":"" }/>
                     <label for="demo-priority-low">Male</label>
                     <input type="radio" class="gender" id="demo-priority-normal" name="demo-priority" value="여자" ${vo.user_sex eq '여자'?"checked":"" } />
                     <label for="demo-priority-normal">Female</label>
                     </td>
                  </tr>
                  <tr>
                     <th>Mobile</th>
                     <td class="phonemy1" colspan="3">
                        <select id="tel1" name=tel1  style="width: 5em; display: inline;">
                        
                           <option value="010" ${tel1 eq '010'?"selected":"" } >010</option>
                           <option value="011" ${tel1 eq '011'?"selected":"" }>011</option>
                           <option value="017" ${tel1 eq '017'?"selected":"" }>017</option>
                           <option value="016" ${tel1 eq '016'?"selected":"" }>016</option>
                        </select>                  
                        - <input type="text" id="tel2" name=tel2 size="4" value="${tel2 }" style="width: 8em; display: inline;" >
                        - <input type="text" id="tel3" name=tel3 size="4"  value="${tel3 }" style="width: 8em; display: inline;">
                     </td>                     
                  </tr>  
            </table>
            <table>
               <thead>
                  <tr><b>Introduce Yourself, shortly!</b></tr>
               </thead>
               <tbody>
                  <textarea readonly="readonly" rows="4" cols="50" name=introduce>${vo.user_introduce }</textarea>
               </tbody>
               

               <tfoot/>                
            </table>
            <table >
                <tr height=30>
                     <td colspan=2 align=center style="background-color: white;">
                        <input type=button value="Modify" id=sendBtn>
                        <input type=button value="Cancel">
                     </td>
                  </tr>
             </table>
            </form>

         </div>
      </div>
   </section>

         
</body>
</html>