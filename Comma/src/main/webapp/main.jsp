<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>

   <head>
      <title>���డ�̵� ����</title>
      <!-- meta:������ �⺻���� ����/ ���� -->
      <meta charset="utf-8" />
      <meta http-equiv="Content-Script-Type" content="text/javascript" />
      <meta http-equiv="Content-Style-Type" content="text/css" />
      <meta http-equiv="X-UA-Compatible" content="IE=10" />

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
      
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
      
      <!-- ���� �ڵ� ��ũ�� ���--> 
      <link rel='stylesheet prefetch' href='http://dimsemenov-static.s3.amazonaws.com/dist/magnific-popup.css'>
	
	<script type="text/javascript">
	$(function(){
		var jsp=$('.nav2Name').attr('id');
		if(jsp=='intro/introduceKor.jsp'){
			$('.nav2Name').text('ABOUT KOREA');
		}
	});
	
	</script>
</head>
   

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
           <p id="${jsp }" class="nav2Name">${jsp }</p>
         </center>
         <nav id="nav">
            <ul>
               <li class="special">
               
                  <!-- 1�߰�:�α��� ���̾� �˾�â-->
                  <c:if test="${sessionScope.id!=null }">
                     ${sessionScope.name }�� ȯ���մϴ�.
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
                     <div class="logbtn">
                        <input name="login" value="login" id="log-btn" type="button">
                        <input name="join" value="join" id=join-btn type="button">
                     </div>
                     <br>
                     <div class="logbtn">
                        <input name="idfind" value="idã��" id="idfind-btn" type="button">
                        <input name="pwdfind" value="pwdã��" id="pwdfind-btn" type="button">
                     </div>
                     
                  </form>  
                  
                  <!-- 2�߰�:ȸ������ ���̾� �˾�â-->
                  <form class="white-popup mfp-hide" id="join-form" action="join.do" method="post">
                     <h1>Join-us</h1>
                     <div>
                        <input name="id" id="join_id" required="" type="text" placeholder="ID"><span>
                        <input name="id_check" value="Ȯ��" id="id_check"type="button"></span>
                     </div>
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
                        <input name="nick_check" value="Ȯ��" id="id2" type="button">
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
                  <!-- 3���̵�޴� -->
                  <a href="#menu" class="menuToggle"><span>Menu</span></a>
                  <div id="menu" class="group g1">
                     <ul>
                        <div class="box">
                           <li><a href="main.do">Home</a></li>
                        </div>
                        <div class="box">
                           <li><a href="introduceSite.do">�Ұ�������</a></li>
                        </div>
                        <div class="box">
                           <li><a href="introduceKor.do">�ѱ��Ұ�</a></li>
                        </div>

                        <div class="box">
                           <li class="title"><a href="#">���̵�</a></li>
                           <div class="cont">
                              <li><a href="guide.do">1.���̵���</a></li>
                              <li><a href="guideWrite.do">2.���̵�۾���</a></li>
                           </div>
                        </div>

                        <div class="box">
                           <li class="title"><a href="#">������</a></li>
                           <div class="cont">
                              <li><a href="tourist.do">1.���������</a></li>
                              <li><a href="touristWrite.do">2.�������۾���</a></li>
                           </div>
                        </div>
                        <div class="box">
                           <li><a href="mypage.do">����������</a></li>
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

   <!-- inline �α��� �˾�â -->
   <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
   
   <script type="text/javascript">
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
      
   });
   </script>
   
   <!-- �����ܸ޴� -->
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
   
   <!-- ���̵� �޴� -->
   <script type="text/javascript">
            $(function() {

              var group = $(".group");
            
              group.each(function() {
                var _group = new GroupBox(this);
              });
            
              // ����� ���� ������ �Լ� ����
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
            
              // ����� ���� ������ �Լ� ����
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

   <!-- ���� ��� �����̵� -->
   <script src="http://code.jquery.com/jquery-latest.js"></script>
   <script type="text/javascript" src="../controller/js/jquery.ulslide.js"></script>

   <script src='http://dimsemenov-static.s3.amazonaws.com/dist/jquery.magnific-popup.min.js'></script>

   <!-- �޷� -->
   <script src="../controller/assets/js/dcalendar.picker.js"></script>
   <script type="text/javascript">
      $('#calendar-demo').dcalendar();
      $('#dt').dcalendarpicker();
   </script>
   
   <script type="text/javascript">
    $(function() {
         $('#main_bn').ulslide({      /* ��� �����̵� */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             navigator: '#mainRight a',
             duration: 300,
         autoslide: 3000
         
         });
         
         $('#weather').ulslide({      /* ���� �����̵� */
             statusbar: true,
             affect: 'slide',
             axis: 'x',
             duration: 300,
         autoslide: 3000
         });  
     });
    </script>


   <!-- ���콺 ������ hot �� ���� -->
   <!-- <script type="text/javascript"
      src="assets/js/jquery-1.4.1.min.js"></script> -->
   <script type="text/javascript"
      src="../controller/assets/js/tabControl.js"></script>
   <!-- ���� hot�� ��� ��ũ��  -->
   <script type="text/javascript">
      $(function() {
         $("#tabControlWrap").tabControls();
      })
   </script>
   
   <!-- ��ġ�� -->
   <script type="text/javascript">
      $(document).ready(function() {
         $("#bt").click(function() {
            $("#panel").slideToggle();
         });
      });
   </script>


</body>
</html>