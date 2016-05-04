<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

   <head>
      <title>여행가이드 메인</title>
      <!-- meta:문서의 기본형식 지정/ 메인 -->
      <meta charset="utf-8" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="X-UA-Compatible" content="IE=10" />
      <link href="images\CommaWorld(1).ico" rel="shortcut icon">
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/mytest.css" />
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/basic.css" />
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/style.css" />
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/main.css" />      
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/tabControl.css" />   
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/mypage.css" />
      <link rel="stylesheet" type="text/css" href="../controller/assets/css/tourist.css" />
      <link rel="stylesheet" href="../controller/assets/css/introKor.css" />
      <link rel="stylesheet" href="../controller/assets/css/dcalendar.picker.css">
      <link href="../controller/assets/css/jquery.bxslider.css" rel="stylesheet" />
      <link rel="stylesheet" type="text/css" href="mypage/shadow/css/shadowbox.css">
      
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
      <script type="text/javascript" src="ajax.js"></script>
      <script type='text/javascript' src='http://code.jquery.com/jquery-latest.js'></script>
      
      <!-- 메인 자동 스크롤 배너--> 
      <link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>

	<script type="text/javascript">
	$(function(){
		var jsp=$('.nav2Name').attr('id');
		if(jsp=='intro/introduceKor.jsp'){
			$('.nav2Name').text('ABOUT KOREA');
		}else if(jsp=='intro/introduceSite.jsp'){
			$('.nav2Name').text('COMMA');
		}else if(jsp=='guide/guide.jsp'){
			$('.nav2Name').text('GUIDE LIST');
		}else if(jsp=='guide/guideWrite.jsp'){
			$('.nav2Name').text('GUIDE WRITE');
		}else if(jsp=='tourist/tourist.jsp'){
			$('.nav2Name').text('TOUR REQUEST LIST');
		}else if(jsp=='tourist/touristWrite.jsp'){
			$('.nav2Name').text('TOUR REQUEST WRITE');
		}else if(jsp=='mypage/mypage.jsp'){
			$('.nav2Name').text('MY PAGE');
		}
		else{
			$('.nav2Name').text('');
		}
	});
	
	</script>

<body class="landing">
   <!-- Page Wrapper -->
   <div id="page-wrapper">

      <!-- Header -->
      <c:if test="${jsp eq 'section.jsp' }">
      <header id="header" class="alt">
      </c:if>
      <c:if test="${jsp ne 'section.jsp' }">
      <header id="header">
      </c:if>
         <h1>
            <a href="main.do"><img alt="" src="images/commaLogo(small).png" width="130em" style="margin-top:0.5em;"></a>
         </h1>
         <center>
           <p id="${jsp }" class="nav2Name"></p>
         </center>
         <nav id="nav">
            <ul>
               <li class="special">
               
                  <!-- 1추가:로그인 레이어 팝업창-->
                  <c:if test="${sessionScope.id!=null }">
                     ${sessionScope.name }님 환영합니다.
                     <button class="button special log" id="logout-btn">Logout</button>
                     <form method="post" id="logout-frm" action="logout.do" hidden="hidden"></form>
                  </c:if>
                  <c:if test="${sessionScope.id==null }">
                  <button class="button special log" id="join-btn">Sign In</button>&nbsp;&nbsp;
                  <button class="button special log" id="login-btn">Login</button> 
                  <form class="white-popup mfp-hide" id="login-form" method="post" action="login.do">
                     <h1>Log-In</h1>
                     <div>
                        <input name="id" id="id" required="" type="text"
                           placeholder="ID">
                     </div>
                     <br>
                     <div>
                        <input name="pwd" id="pwd" required="" type="password"
                           placeholder="Password">
                     </div>
                     <br>
                     <table class="buttonGroup">
                       <tr>
                         <td><input name="login" value="login" id="log-btn" type="button"></td>
                         <td><input name="join" value="join" id=join-btn type="button"></td>
                       </tr>
                       <tr>
                         <td><input name="idfind" value="find id" id="idfind-btn" type="button"></td>
                         <td><input name="pwdfind" value="find pwd" id="pwdfind-btn" type="button"></td>
                       </tr>
                     </table>
                     
                  </form>  
                  
                   <!-- 아이디찾기 레이어팝업창-->
                 
                  <form class="white-popup mfp-hide" id="idfind-form" method="post" action="idFind.do">
                     <h1>ID-Find</h1>
                     <div>
                        <input name="name" id="name" required="" type="text"
                           placeholder="Name">
                     </div>
                     <br>
                     <div class="logbtn">
                        <input name="idfind" value="idfind" id="idFindBtn" type="button">
                        <input name="idfind-b" value="Login" id="idFindBtn-b" type="button">
                        
                     </div>
                     <br>
                      <div name="idFindPrint" id="idFindPrint"></div>
                    
                  </form> 
                  
                  <!-- 비밀번호찾기 레이어팝업창-->
                 
                  <form class="white-popup mfp-hide" id="pwdfind-form" method="post" action="pwdFind.do">
                     <h1>Password-Find</h1>
                        
                     <div>
                        <input name="id" id="id" required="" type="text"
                           placeholder="ID">
                     </div>
                     <br>
          
                     <div class="logbtn">
                       
                        <input name="pwdfind" value="pwdfind" id="pwdFindBtn" type="button">
                        <input name="pwdfind-b" value="Login" id="pwdFindBtn-b" type="button">
                        
                     </div>
                     
                      <br><br>
          
                      <div name="pwdFindPrint" id="pwdFindPrint"></div>
                     
                  </form>   
                  
                  
                  
                  <!-- 2추가:회원가입 레이어 팝업창-->
                  <form class="white-popup mfp-hide" id="join-form" action="join.do" method="post">
                     <h1>Join-us</h1>
                     <div><span>
                        <input name="id" id="join_id" required="" type="text" placeholder="ID">
                        <input name="id_check" value="확인" id="id_check" type="button"></span>
                     </div>
                        <div name="checkPrint" id="checkPrint"></div>
                     <br>
                     <div>
                        <input name="pwd" id="join_pwd" required="" type="password"   placeholder="Password">
                     </div>
                     <br>
                     <div>
                        <input name="pwd" id="join_pwd_check" required="" type="password" placeholder="Password">
                     </div>
                     <br>
                     <div>
                        <input name="name" id="join_name" required="" type="text" placeholder="Name">
                     </div>
                     <br>
                     <div>
                        <input name="nick" id="join_nick" required="" type="text" placeholder="NickName">                        
                     </div>
                     <br>
                     <div>
                        <input name="email" id="join_email" required="" type="text" placeholder="E-mail">
                     </div>
                     <br>
                     <div class="joinBtn">
                        <input name="join" value="join" id="join" type="button">
                     </div>                     
                  </form> 
                  </c:if>
                              
                  <!-- 3사이드메뉴 -->
                  <a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu" class="group g1">
                     <ul>
                        <div class="box">
                           <li><a href="main.do">Home</a></li>
                        </div>
                        <div class="box">
                           <li><a href="introduceSite.do">소개페이지</a></li>
                        </div>
                        <div class="box">
                           <li><a href="introduceKor.do">한국소개</a></li>
                        </div>

                        <div class="box">
                           <li class="title"><a href="#">가이드</a></li>
                           <div class="cont">
                              <li><a href="guide.do">1.가이드목록</a></li>
                              <c:if test="${sessionScope.id!=null}">	
                             	 <li><a href="guideWrite.do">2.가이드글쓰기</a></li>
                              </c:if>
                           </div>
                        </div>

                        <div class="box">
                           <li class="title"><a href="#">관광객</a></li>
                           <div class="cont">
                              <li><a href="tourist.do">1.관광객목록</a></li>
                              <c:if test="${sessionScope.id!=null}">	
                              	<li><a href="touristWrite.do">2.관광객글쓰기</a></li>
                              </c:if>
                           </div>
                        </div>
                         <c:if test="${sessionScope.id!=null}">
                        <div class="box">
                           <li><a href="mypage.do">마이페이지</a></li>
                        </div>
                        </c:if>
                        <div class="box">
                           <li><a href="board_list.do">게시판</a>
                        </div>
                     </ul>
                  </div> 
               </li>
            </ul>
         </nav>
      </header>


      <!-- Main -->
      <jsp:include page="${jsp }"></jsp:include>
      <jsp:include page="${mypage }"></jsp:include>

      <!-- Footer -->
      <jsp:include page="footer.jsp"></jsp:include>

   </div>


   <!-- Scripts -->
   <script src="../controller/assets/js/jquery.min.js"></script>
   <script src="../controller/assets/js/jquery.scrollex.min.js"></script>
   <script src="../controller/assets/js/jquery.scrolly.min.js"></script>
   <script src="../controller/assets/js/skel.min.js"></script>
   <script src="../controller/assets/js/util.js"></script>
   <script src="../controller/assets/js/main.js"></script>
   <script src="../controller/js/jquery.bxslider.min.js"></script>

   <script type="text/javascript" src="mypage/shadow/js/shadowbox.js"></script>

   <!-- inline 로그인 팝업창 -->
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
   
   <script type="text/javascript">

   Shadowbox.init({
      players:["iframe"]
   });
   $(document).ready(function() {
      $('#login-btn').magnificPopup({
         items :{src:'#login-form',type : 'inline'},
               preloader: false,focus: '#name',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#name';
                  }
               }
         }
      });
      
      $('#log-btn').click(function(){
         
         var id = $('#id').val();
         if(id.trim()==""){
            $('#id').focus();
            return;
         }
         
         var pwd = $('#pwd').val();
         if(pwd.trim()==""){
            $('#pwd').focus();
            return;
         }
         
         $('#login-form').submit();                  
      });
      
      $('#logout-btn').click(function(){
         $('#logout-frm').submit();                                 
      });
      
      
      $('#join-btn').magnificPopup({
         items :{src:'#join-form',type : 'inline'},
               preloader: false,focus: '#name',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#name';
                  }
               }
         }
      });
      $('#join').click(function(){
         var id = $('#join_id').val();
         var pwd = $('#join_pwd').val();
         var nick = $('#join_nick').val();
         var name = $('#join_name').val();
         var email = $('#join_email').val();
         if(id.trim()==""){
            $('#join_id').focus();
            return;
         }
         if(pwd.trim()==""){
            $('#join_pwd').focus();
            return;
         }
         if(name.trim()==""){
            $('#join_name').focus();
            return;
         }
         if(nick.trim()==""){
            $('#join_nick').focus();
            return;
         }            
         if(email.trim()==""){
            $('#join_email').focus();
            return;
         }
         $('#join-form').submit();
         
         
      });
      $('#id_check').click(function(){        
        var id = $('#join_id').val();
        
        if(id.trim()==""){
           alert(id)
           $('#join_id').focus();
           return;
        }
     
        var param="id="+encodeURIComponent(id);
        sendMessage("POST", "idCheck.do", param, idCheck)
        
     })
    
      
       $('#idfind-btn').magnificPopup({
         items :{src:'#idfind-form',type : 'inline'},
               preloader: false,focus: '#name',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#name';
                  }
               }
         }
      });
      
      $(function(){
        $('#idFindBtn').click(function(){      
           var name=$('#name').val();
           if(name.trim()==""){
              $('#name').focus();
              return;
           }
           var param="name="+encodeURIComponent(name);
           sendMessage("POST", "idFind.do", param, idfind)
           
        });
       
     });
     function idfind(){
        if(httpRequest.readyState==4){
           if(httpRequest.status==200){            
              $('#idFindPrint').html(httpRequest.responseText);
           }
        }
     }
     $('#idFindBtn-b').magnificPopup({
         items :{src:'#login-form',type : 'inline'}
      });

     
     $('#pwdfind-btn').magnificPopup({
         items :{src:'#pwdfind-form',type : 'inline'},
               preloader: false,focus: '#id',
               callbacks: {beforeOpen: function() {
                  if($(window).width() < 700) {
                     this.st.focus = false;
                  } else {
                     this.st.focus = '#id';
                  }
               }
         }
      });
      
      $(function(){
        $('#pwdFindBtn').click(function(){      
           var id=$('#id').val();
           if(id.trim()==""){
              $('#id').focus();
              return;
           }
           var param="id="+encodeURIComponent(id);
           sendMessage("POST", "pwdFind.do", param, pwdfind)
           
        });
       
     });
     function pwdfind(){
        if(httpRequest.readyState==4){
           if(httpRequest.status==200){            
              $('#pwdFindPrint').html(httpRequest.responseText);
           }
        }
     }
     $('#pwdFindBtn-b').magnificPopup({
         items :{src:'#login-form',type : 'inline'}
      });
   
   
 
   function idCheck(){         
      if(httpRequest.readyState==4){
         if(httpRequest.status==200){               
            $('#checkPrint').html(httpRequest.responseText);
         }
      }
   }
   })

   
   </script>
   
   <!-- 숨김상단메뉴 -->
   <script type="text/javascript">
      $(function() {
         $(window).scroll(function() {
            var scrollTop = $(window).scrollTop();
            if (scrollTop > 380)
               $('#nav2').stop().animate({
                  'opacity' : '1'
               }, 400);
            else
               $('#nav2').stop().animate({
                  'opacity' : '0'
               }, 5);
         });
      });
   </script>
   
   <!-- 사이드 메뉴 -->
   <script type="text/javascript">
            $(function() {

              var group = $(".group");
            
              group.each(function() {
                var _group = new GroupBox(this);
              });
            
              // 사용자 정의 생성자 함수 정의
              function GroupBox(groupElement) {
            
                var box = $(groupElement).find(".box");
                var title = $(groupElement).find(".box .title a");
            
                box.each(function(idx) {
                  var newBox = new RootBox(this);
                  if (idx > 0) {
                    newBox.siblingsClose();
                  }
                });
              }
            
              // 사용자 정의 생성자 함수 정의
              function RootBox(boxElement) {
                var _this = this;
                var boxEl = $(boxElement);
                var target = $(boxEl).find(".title a");
                var cont = $(boxEl).find(".cont");
            
                // _groupParent = $(boxEl).parent();
            
                target.on("click", anchorClickEvent);
            
                function anchorClickEvent() {
            
                  if (cont.is(':hidden')) {
                    _this.open();
                  } else {
                    _this.close();
                  }
                }
            
                _this.siblingsClose = function() {
                  cont.css('display', 'none');
                };
            
                _this.open = function() {
                  cont.slideDown();
                };
                _this.close = function() {
                  cont.slideUp();
                }
              }
            });
   </script>

   <!-- 메인 배너 슬라이드 -->
   <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script type="text/javascript" src="../controller/js/jquery.ulslide.js"></script>

   <script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>

   <!-- 달력 -->
   <script src="../controller/assets/js/dcalendar.picker.js"></script>
   <script type="text/javascript">
      $('#calendar-demo').dcalendar();
      $('#dt').dcalendarpicker();
   </script>
   
   <script type="text/javascript">
    $(function() {
         $('#main_bn').ulslide({      /* 배너 슬라이드 */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             navigator: '#mainRight a',
             duration: 300,
         autoslide: 3000
         
         });
         
         $('#weather').ulslide({      /* 날씨 슬라이드 */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             duration: 300,
         autoslide: 3000
         });  
     });
    </script>


   <!-- 마우스 오버시 hot 글 보임 -->
   <!-- <script type="text/javascript"
      src="assets/js/jquery-1.4.1.min.js"></script> -->
   <script type="text/javascript"
      src="../controller/assets/js/tabControl.js"></script>
   <!-- 메인 hot글 배너 스크롤  -->
   <script type="text/javascript">
      $(function() {
         $("#tabControlWrap").tabControls();
      })
   </script>
   
   <!-- 펼치기 -->
   <script type="text/javascript">
      $(document).ready(function() {
         $("#bt").click(function() {
            $("#panel").slideToggle();
         });
      });
   </script>


</body>
</html>