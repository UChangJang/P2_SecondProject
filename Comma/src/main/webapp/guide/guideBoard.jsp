<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>

<html>
<head>
<title>guideBoard</title>
<!-- bxSlider() �Լ� ��ü�� �̻��ϴٰ� �Ǵ�!! �ٸ����� �ִ� ���� �ٸ� jquery�� ������... -->
<!-- <script type="text/javascript">
	$(function() {
		$('.bxslider').bxSlider();
	});
</script> -->

<script type=text/javascript>
	
 $(function(){
	var width1=$(window).width();
	var navoffset = $('#guideBoardSide').offset();

	$(window).scroll(function(){  //��ũ���ϸ� �Ʒ� �ڵ� ����
		
		
	       var num = $(this).scrollTop();  // ��ũ�Ѱ�
	       if( num >= 530 && width1>=2000){  			// ��ũ���� 36�̻� ���� ��
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","5em");
	    	}
	       if( num >= 530 && width1>1680){  			// ��ũ���� 36�̻� ���� ��
	    	   $("#guideBoardSide").css("position","fixed").css("width","13em").css("top","5em");
	    	}else if(num >= 530 && width1>1280){
	    		   $("#guideBoardSide").css("position","fixed").css("width","12.5em").css("top","5em");
	    	}else if(num >= 530 && width1>1100){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","5em");
	    	}
	    	else if(num >= 530 && width1>980){
	    		   $("#guideBoardSide").css("position","fixed").css("width","16em").css("top","4em");
	    	}else if(num >= 530 && width1>780){
	    		   $("#guideBoardSide").css("position","fixed").css("width","14em").css("top","4em");
	    	}	         
	       
			if(num<530){				//��ũ�� ���� ������
	          $("#guideBoardSide").css("position","relative").css("width","100%");
	       }  
			
			if(width1<980){				//���α��� ª������ �������
				 $(".side2").css("display","none");
			}
	  });
}); 

</script>
</head>
<body>
<!-- Main -->
<article id="main">
	<header>
		<h2>[����]���ﵵ������</h2>
		<p>��մ� ����</p>
	</header>

	<section class="wrapper style5">
		<div class="inner">
			<!-- <section class="style5"> -->
			<div class="row side0">

				<div class="3u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>���̵�</div>		
						<div class="topBoardShort">�Ⱥ���</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>����Ը�</div>		
						<div class="topBoardShort">3��</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>�ҿ�ð�</div>		
						<div class="topBoardShort">6�ð�</div>							
					</div>
				</div>
				<div class="2u 12u$(small)">								<!-- 1 ���� -->
					<div id="">
						<div>�̵�����</div>		
						<div class="topBoardShort">�ڵ���</div>							
					</div>
				</div>
				<div class="3u$ 12u$(small)">	
																		
				</div>
				
				
				<div class="9u 12u$(medium) side1">
					<hr />
					<h5>���̵�Ұ�</h5>
					<blockquote>Fringilla nisl. Donec accumsan interdum
						nisi, quis tincidunt felis sagittis eget tempus euismod.
						Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
						adipiscing eu felis iaculis volutpat ac adipiscing accumsan
						faucibus.</blockquote>


					<hr />
					<h5>������Ÿ�ϼҰ�</h5>
					<blockquote>Fringilla nisl. Donec accumsan interdum
						nisi, quis tincidunt felis sagittis eget tempus euismod.
						Vestibulum ante ipsum primis in faucibus vestibulum. Blandit
						adipiscing eu felis iaculis volutpat ac adipiscing accumsan
						faucibus.</blockquote>

					<hr />
					<h4>Image</h4>
					<h5>Fit</h5>
					<ul class="bxslider">

						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
						<li><img src="../controller/images/character.png" /></li>
					</ul>

					<hr />
					<h4>Table</h4>
					<h5>Default</h5>
					<div class="table-wrapper">
						<table>
							<thead>
								<tr>
									<th>�׸�</th>
									<th>���λ���</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>����</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>���</td>
									<td>Vis ac commodo adipiscing arcu aliquet.</td>
								</tr>
								<tr>
									<td>���Ի���</td>
									<td>Morbi faucibus arcu accumsan lorem.</td>
								</tr>
								<tr>
									<td>����Ը�</td>
									<td>Vitae integer tempus condimentum.</td>
								</tr>
								<tr>
									<td>������¥</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>�����ð�</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>�̵��ð�</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
								<tr>
									<td>�������</td>
									<td>Ante turpis integer aliquet porttitor.</td>
								</tr>
							</tbody>
						</table>
					</div>



					<hr />
					<h5>�ı�</h5>
					<div class="box alt">
						<div class="row uniform 50%">
							<div class="2u">
								<span class="image fit"> <a href="guideWrite.jsp"><img
										src="../images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.jsp"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>

							<div class="2u">
								<span class="image fit"> <a href="guideWrite.html"><img
										src="../controller/images/banner.jpg" alt="" /></a>
								</span>
							</div>

							<div class="10u">
								<span class="image fit">
									<table class="alt">
										<tr>
											<td>�Ⱥ���</td>
											<td>���ټ���</td>
										</tr>
										<tr>
											<td colspan=4>���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.
												���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.���������̾����ϴ�.</td>
										</tr>
									</table>
								</span>
							</div>
						</div>
					</div>

					<hr />
					<ul class="actions fit small">
						<li><a href="#" class="button special fit small">����������</a></li>
						<li><a href="#" class="button fit small">�����ϱ�</a></li>
						<li><a href="#" class="button special fit small">���ɻ�ǰ</a></li>
					</ul>
				</div>


				<!-- ���̵�޴�! -->
				<div class="3u$ side2">
					<div id="guideBoardSide">
						<div id="reservenow">RESERVE NOW</div>	
						<div class="BoardSide1">�ų��� ���� �߰� ����</div>
						<hr>
						<div class="BoardSide1">����:20000��</div>
						<div class="BoardSide1">��¥:2016-04-24</div>
						<div class="BoardSide1">�ο�:3��</div>
						<div class="BoardSide1">����:�ڵ���</div>
						<div class="BoardSide1"><input type="button" value="reserve"></div>
					</div>
				</div>
			</div>

		</div>
	</section>
</article>

</body>
</html>