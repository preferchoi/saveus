<%@page import="com.DAO.ProjectDAO"%>
<%@page import="com.VO.ProjectVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style type="text/css">
form {
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;
}

#submit {
	display: flex;
	justify-content: space-between;
	align-items: center;
}
}.line{display: flex;  flex-direction: row; align-items: center;}
</style>
</head>

<body class="no-sidebar is-preload">
<%
		String id = (String) session.getAttribute("id");
	ProjectDAO dao=new ProjectDAO();
	ProjectVO vo = dao.myInfo(id);
	%>
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<h1>
				<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="메인로고" height="100" width="400"></a>
			</h1>

		</section>

		<!-- Main -->
		<section id="main">
			<div class="container">


				<form method='post' action='DonateService'>
						<h2 style="color:#86E57F;">여러분의 마일리지로 기부하세요!!</h2>
						<br>
						<p>얼마나 후원하시겠습니까? <br> 현재 당신의 마일리지는 <%=vo.getPoint() %>p입니다</p>
						<div style="display: flex;"><input name='point' type='text' size="30"><span style="font-size: 30px;">P</span></div>
						<hr>
						<div id=submit>
							<input type='submit' value='Donate' id="donate">
							<!-- <a href="#" class="button large">Login</a> -->
							<input type='reset' value='취소' style="margin-left: 30px;"><!-- style="margin-left: 10px;" -->
						</div>
				</form>


			</div>
		</section>

		<!-- Footer -->
		<section id="footer">
			<div class="container">
				<div class="row">
					<div class="col-8 col-12-medium">
						<section>
							<header>
								<h2>연혁</h2>
							</header>
							<ul class="dates">
								<li><span class="date">Oct <strong>26</strong></span>
									<h3>
										<a href="#">프로젝트 논의 시작</a>
									</h3>
									<p>김나은, 박정우, 송현진, 최선호로 구성된 아우어스 팀의 구성. 환경을 주제로 선정하며 세이브어스를
										구상</p></li>
								<li><span class="date">Nov <strong>2</strong></span>
									<h3>
										<a href="#">넘쳐나는 쓰레기 문제에 관심</a>
									</h3>
									<p>코로나19로 인한 비대면 생활로 인해 생활 쓰레기의 폭증에 관한 문제제기. 분리수거의 중요성을
										인지하고 프로젝트 시작</p></li>
								<li><span class="date">Nov <strong>24</strong></span>
									<h3>
										<a href="#">스마트 분리수거 서비스</a>
									</h3>
									<p>잘못된 분리수거 방법을 교정하여 재활용률을 높이기 위한 스마트 분리수거 서비스의 시범 시작</p></li>
								<li><span class="date">Day by<strong>day</strong></span>
									<h3>
										<a href="#">서비스의 발전</a>
									</h3>
									<p>스마트 분리수거 기능의 고도화와 추가 기능 업데이트 중...</p></li>
							</ul>
						</section>
					</div>

					<div class="col-4 col-12-medium">
						<section>
							<header>
								<h2>SNS</h2>
							</header>
							<ul class="social">
								<li><a class="icon brands fa-facebook-f" href="#"><span
										class="label">Facebook</span></a></li>
								<li><a class="icon brands fa-twitter" href="#"><span
										class="label">Twitter</span></a></li>
								<li><a class="icon brands fa-dribbble" href="#"><span
										class="label">Dribbble</span></a></li>
								<li><a class="icon brands fa-tumblr" href="#"><span
										class="label">Tumblr</span></a></li>
								<li><a class="icon brands fa-linkedin-in" href="#"><span
										class="label">LinkedIn</span></a></li>
							</ul>
							<ul class="contact">
								<li>
									<h3>Address</h3>
									<p>
										(사)세이브어스<br /> 스마트미디어인재개발원, 조선대학교<br /> 담당자 Tel
										010-2761-3824
									</p>
								</li>
								<li>
									<h3>Mail</h3>
									<p>
										<a href="#">jeongw1@naver.com</a>
									</p>
								</li>
								<li>
									<h3>Phone</h3>
									<p>(062)000-0000</p>
								</li>
							</ul>
						</section>
					</div>
					<div class="col-12">

						<!-- Copyright -->
						<div id="copyright">
							<ul class="links">
								<li>&copy; 세이브어스. All rights reserved.</li>
								<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>
	<script type="text/javascript">
	 document.querySelector('#donate').addEventListener('click',function(){
		alert("후원이 완료되었습니다 감사합니다!");
	});
	 </script>

</body>
</html>