<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>

<script type="text/javascript">
$(function(){
		//1.������ư 
		$('#prevBtn').click(function(){		//select_��������
			if('${curpage}'>1){					//������������ ���� ����
				var place=$('#place').val();		//1.������ ��������
				var date=$('#dt').val();			//2.��¥�� ��������
				if(place=="" || date==""){			//*�˻������ �ֽż����� ����
					var param="page="+${curpage-1};
					alert(param);
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*�˻��� �ִ� ���¿��� ����	
					var sortType=$('#sortType').val();	//���ݳ�����
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage-1};
					alert(param);
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//������������ ���� �Ұ���
				alert("ù�������Դϴ�.");
				return;
			}
		});
		
		//2.���� ��ư
		$('#nextBtn').click(function(){		//select_��������
			if('${curpage}'<'${totalpage}'){		//������������ ���� ����
				var place=$('#place').val();		//1.������ ��������
				var date=$('#dt').val();			//2.��¥�� ��������
				if(place=="" || date==""){			//*�˻������ �ֽż����� ����
					var param="page="+${curpage+1};
					alert(param);
					sendMessage("POST", "tourist_nextPrev.do",param, tourContent2);
				}else{								//*�˻��� �ִ� ���¿��� ����	
					var sortType=$('#sortType').val();	//���ݳ�����
					var param="place="+place+"&date="+date+"&type="+sortType+"&page="+${curpage+1};
					alert(param);
					sendMessage("POST", "tourist_sort.do",param, tourContent2);
				}	
			}else{								//������������ ���� �Ұ���
				alert("���������Դϴ�.");
				return;
			}
		});
});

	function tourContent2() {
		if (httpRequest.readyState == 4) {
			if (httpRequest.status == 200) {
				$('#tourContent').html(httpRequest.responseText);
			}
		}
	}
</script>

</head>
<body>
	<section class="wrapper style5" id="touristMarginTop">		<!-- tourist����Ʈ 5���� -->
		<div class="inner">	
	
			<div class="box alt">
					<div class="row uniform 50%">
						<c:forEach var="vo" items="${list }">
						<div class="3u">					<!-- ���� -->
							<span class="image fit">
								<img src="../controller/images/pic01.jpg" alt=""/><!-- �̹������� -->
							</span>	
						</div>
						<div class="9u">					<!-- ����Ʈ -->
							<span class="image fit c">
								<table class="plusDetail" id="d${vo.touristvo.tour_no}" >	<!-- #d3 �̷������� ���� -->
									<tr>
										<td colspan=3>[${vo.text_loc}]${vo.touristvo.tour_theme }</td>
									</tr>
									<tr>
										<td>���¥:${vo.text_tour_date}</td>
										<td>${vo.text_time1 }~${text_time2}</td>
										<td>${vo.text_total_person}�� </td>
									</tr>
									<tr>
										<td>${vo.uservo.user_nick}(${vo.touristvo.user_id })</td>
										<td>����:${vo.uservo.user_sex}</td>
										<td>${vo.text_cost }��</td>
									</tr>
								</table>
							</span>	
						</div>
						
						<!-- �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 �󼼺���1 -->
						<div class="3u 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none"></div>
						<div class="9u$ 12u$(xsmall) dd${vo.touristvo.tour_no}" style="display:none">					<!-- ����Ʈ -->
							<div id="detail_textarea">
								<textarea>${vo.touristvo.tour_detail }</textarea>
							</div>
							<div id="detail_textarea1"> 
								<span><button class="button tourB" id="res${vo.touristvo.tour_no}">Message</button></span>
								<span><button class="button tourB">WishList</button></span>
								<span><button class="button tourB">Reserve</button></span>
							</div>
						</div>
						</c:forEach>
				</div>
			</div>
			
			<!-- ����â -->
			<form class="white-popup mfp-hide" id="resPop${vo.touristvo.tour_no}" method="post" action="login.do">
                     <h1>Log-In</h1>
                     <div>
                     	<input type="text" value="NICK:${vo.uservo.user_nick}">
                     	<input type="text" value="LOCATION:${vo.text_loc}[${vo.touristvo.tour_theme }]">
                     </div>
                     <br>
                     <div>
                        <textarea>${vo.touristvo.tour_detail }</textarea>
                     </div>
                     <br>
                     <br>
                     <div class="logbtn">
                        <input name="idfind" value="SEND" id="idfind-btn" type="button">
                        <input name="pwdfind" value="BACK" id="pwdfind-btn" type="button">
                     </div>
               </form>
               
               
			<!-- ������ ��Ʈ�� -->
			<table id="table_content">
			<tr>
				<td align=right>
					<img src="images/prev.png" border=0 id="prevBtn">&nbsp;
					<img src="images/next.png" border=0 id="nextBtn">&nbsp;&nbsp;
					${curpage} page / ${totalpage } pages 
				</td>
			</tr>
		</table>
		</div>
	</section>
	
                  


	<!-- ���γ��� �߰� jquery -->
	<script type="text/javascript">
		var d = 0;
		

		$(function() {
			$('.plusDetail').click(function() {
				var id = $(this).attr('id'); //id���� ������
				var no = id.substring(1); //d1 d2 d3...
				if (d == 0) {
					$('.dd' + no).show();
					d = 1;
				} else {
					$('.dd' + no).hide();
					d = 0;
				}
			});

		 });
		
	</script>
	
	<!-- ���������� â -->
	<script type="text/javascript">
	Shadowbox.init({
		   players:["iframe"]
		});
			 $('#res'+'${vo.touristvo.tour_no}').magnificPopup({
		         items :{src:'#resPop'+'${vo.touristvo.tour_no}',type : 'inline'},
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
	 </script>
	
	

</body>
</html>