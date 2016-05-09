<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Guide</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="ajax.js"></script>
<script type="text/javascript">
$(function(){
	
	//1.������ư 
	$('#prevBtn').click(function(){		//select_��������
		 if('${curpage}'>1){	 				//������������ ���� ����
			var place=$('#place').val();							//1.������ ��������
			var methods = document.getElementsByName('method');		//2.�̵����� ��������
			var method_value; // ���⿡ ���õ� radio ��ư�� ���� ���� �ȴ�.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.�ο� ��������
			var date=$('#dt').val();								//4.��¥�� ��������				
			
			if(place==""){											//1.�˻������� ��	(���ĵ� �ʿ����)	
				var param="page="+${curpage-1};
				sendMessage("POST", "guide_p.do",param, guideContent);
			}
			else if(place!="" && method_value==null){				//2.����_�˻����� ��
				//2-1.���� ���� ��
				var sortType=$('#sortType').val();	//���ݳ�����
				
				if(sortType!=""){	//�������� ��
					var param="page="+${curpage-1}+"&place="+place+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//���ľ����� ��
					var param="page="+${curpage-1}+"&place="+place;
					sendMessage("POST", "guide_search.do",param,guideContent);
				}
			}
			
			//���� �߻� �κ�!!!!
			else if(place!="" && method_value!=null && place!="" && people!="" && date!=""){	//3.����,�̵�����,�ο�,��¥_�˻����� ��
				var sortType=$('#sortType').val();
			
				if(sortType!=""){	//�������� ��
					var param="page="+${curpage-1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//���ľ����� ��
					var param="page="+${curpage-1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date;
					sendMessage("POST", "guide_search_detail.do",param,guideContent);
				}				
			}
		}else{								//������������ ���� �Ұ���
			alert("This is 1st page.");
			return;
		} 
	});
			
	//2.���� ��ư
	$('#nextBtn').click(function(){				//select_��������
		if('${curpage}'<'${totalpage}'){		//������������ ���� ����
			var place=$('#place').val();							//1.������ ��������
			var methods = document.getElementsByName('method');		//2.�̵����� ��������
			var method_value; 					// ���⿡ ���õ� radio ��ư�� ���� ���� �ȴ�.
			for(var i=0; i<methods.length; i++) {
			    if(methods[i].checked) {
			    	method_value = methods[i].id;
			    }
			}	
			var people=$('#people').val();							//3.�ο� ��������
			var date=$('#dt').val();								//4.��¥�� ��������	
			
						
			if(place==""){											//1.�˻������� ��	(���ĵ� �ʿ����)	
				var param="page="+${curpage+1};
				sendMessage("POST", "guide_p.do",param, guideContent);
				//alert(method_value+","+people+","+date+","+sortType);
				//alert("������ư����_�˻���������:"+place+","+method_value+","+people+","+date+","+sortType);////////////////////////////////////
			}
			else if(place!="" && method_value==null){				//2.����_�˻����� ��
				//2-1.���� ���� ��
				var sortType=$('#sortType').val();	//���ݳ�����
				
				if(sortType!=""){	//�������� ��
					//alert("������ư����_�����˻�_����o:"+place+","+method_value+","+people+","+date+","+sortType);////////////////////////////////////
					var param="page="+${curpage+1}+"&place="+place+"&type="+sortType;
					sendMessage("POST", "guide_sort.do",param,guideContent);
					
				}else{				//���ľ����� ��
					//alert("������ư����_�����˻�_����x:"+place+","+method_value+","+people+","+date+","+sortType);////////////////////////////////////
					var param="page="+${curpage+1}+"&place="+place;
					sendMessage("POST", "guide_search.do",param,guideContent);
				}
			}
			
			//�����߻��κ�
			else if(place!="" && method_value!=null && place!="" && people!="" && date!=""){	//3.����,�̵�����,�ο�,��¥_�˻����� ��
				var sortType=$('#sortType').val();
				alert("������ �˻��� �����̽��ϴ�.:"+place+","+method_value+","+people+","+date+","+sortType);
		
				if(sortType!=""){	//�������� ��
					var param="page="+${curpage+1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date+"&type="+sortType;
					alert("�����Ͻʴϴ�."+param);
					sendMessage("POST", "guide_sort.do",param,guideContent);
				}else{				//���ľ����� ��
					var param="page="+${curpage+1}+"&place="+place+"&method="+method_value+"&people="+people+"&date="+date;
					alert("���ľ��ϼ̽��ϴ�."+param);
					sendMessage("POST", "guide_search_detail.do",param,guideContent);
				}	
			}	
		}else{								//������������ ���� �Ұ���
			alert("This is the last page.");
			return;
		}
	});
	
	

});

function guideContent() {
	if (httpRequest.readyState == 4) {
		if (httpRequest.status == 200) {
			$('#guideList').html(httpRequest.responseText);
		}
	}
}
</script>
</head>
<body>
<section class="wrapper style5" id="guideListSection">
	<div class="inner">
		<div class="box alt">
			<div class="row uniform 50%">
			
			<c:forEach var="vo" items="${list }">
				<div class="4u">
					<span class="image fit a" id="guidePic"> 
					<a href="guideBoard.do?no=${vo.guidevo.guide_no }" target="_top">
					<img src="http://211.238.142.74:8080/controller/image/${vo.guidevo.guide_img }" alt="" /></a>
						<div class="listText" id="testtest"></div>
						<div class="listText2">
							<div>
								<%-- <img class="mypictureGuideList" src="http://211.238.142.74:8080/controller/profile/${vo.uservo.user_img }" alt=""> --%>
								<input type="button" value="${vo.text_loc }" style="width:10em;font-size:9pt;padding-left:2px;padding-right:2px;float:right;background-color: #0080ff;color: white">
								<span>${vo.uservo.user_nick }(${vo.uservo.user_id })</span>
							</div>
							<div class="secondTable" style="font-size: 12pt;max-height: 2em;padding-top: 1px">${vo.guidevo.guide_subject }</div>
							<div class="ThirdTable">
								<span><font color="#0080ff">��${vo.text_cost }</font></span>
							</div>
							<div class="FourthTable">
								<span><font color="red">${vo.text_move }</font></span>
								<span><font color="yellow">
								<c:forEach var="k" begin="1" end="${vo.num }">��</c:forEach><c:if test="${vo.num!=5 }"><c:forEach var="l" begin="${vo.num+1 }" end="5">��</c:forEach></c:if>
								</font></span>
							</div>
						</div>
					</span>
				</div>
			</c:forEach>
			
			</div>
			<br>
			<div>
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
		</div>
	</div>
</section>

</body>
</html>