<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css?after" />
<style type="text/css">
#main{
z-index: 1;
}
.smart, .location {
	position: relative;
	display: inline-block;
}

.drop-content, .down-content {
	display : none;
	position: absolute;
	background-color: #F9F9F9;
	min-width: 160px;
	padding: 8px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 2;
}
</style>
<script language='JavaScript' type='text/javascript'>
	function layer_toggle(obj) {
		if (obj.style.display == 'none')
			obj.style.display = 'block';
		else if (obj.style.display == 'block')
			obj.style.display = 'none';
	}
</script>
</head>
<body class="no-sidebar is-preload">
	<%
		String id = (String) session.getAttribute("id");
	%>
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="메인로고"
				height="100" width="400"></a>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<!-- 안쓰는 기능 
								<li>
									<a href="#">Dropdown</a>
									<ul>
										<li><a href="#">Lorem ipsum dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li>
											<a href="#">Phasellus consequat</a>
											<ul>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
												<li><a href="#">Veroeros feugiat</a></li>
												<li><a href="#">Nisl sed aliquam</a></li>
												<li><a href="#">Dolore adipiscing</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li> -->
					<%-- 	<%
						if (id == null) {
					%> --%>
				<li class="smart"><a href="smart.jsp">스마트 분리수거</a><i
						class="fas fa-question-circle"></i></li>
					<div class="drop-content">
						<h3>사진을 업로드하면 그에 알맞는 분리수거방법을 알려드립니다!</h3>
						<hr>
						<b><p>스마트 분리수거 서비스 이용방법</p>
						<p>1. 메인 페이지에서 사진을 업로드한다.</p>
						<p>2. 분석시작 버튼을 누른다.</p>
						<p>3. 분리수거 방법을 확인한다.</p>
						<p>4. 마일리지를 적립한다.</p></b>
					</div>
					<li><a href="method.jsp">올바른 재활용법</a></li>
					<li class="location"><a href="test10.jsp">분리수거 자판기</a><i
						class="fas fa-question-circle"></i></li>
					<div class="down-content">
						<h3>우리 지역에 있는 분리수거 자판기를 찾아보세요!!</h3>
						<hr>
						<b><p>분리수거 자판기 서비스 이용방법</p>
						<p>1. 검색창에 현재 거주하고 있는 지역을 검색한다.	ex)서울, 광주</p>
						<p>2. 우리 지역 내에 있는 분리수거 자판기 위치를 확인한다.</p></b>
					</div>
					<script type="text/javascript">
	document.querySelector('.smart').onmouseover=function(){
		 document.querySelector('.drop-content').style.cssText="display:block;left : 300px;"
	 	}
	 document.querySelector('.smart').onmouseleave=function(){
	 	document.querySelector('.drop-content').style.display="none"/* .visibility="visible" */
	 	}
	 document.querySelector('.location').onmouseover=function(){
		 document.querySelector('.down-content').style.cssText="display:block;left : 800px;"
	 	}
	 document.querySelector('.location').onmouseleave=function(){
	 	document.querySelector('.down-content').style.display="none"/* .visibility="visible" */
	 	}
	</script>
					<li><a href="recycle_site.jsp">캠페인 소개</a></li>
					<%
						if (id == null) {
					%>
					<li><a href="login.jsp">로그인 | 회원가입</a></li>
					<%
						} else if (id.equals("admin")) {
					%>
					<li><a href="selectMember.jsp">회원관리</a> <a
						href="LogoutService">로그아웃</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService">로그아웃</a></li>
					<%
						}
					%>
				</ul>
			</nav>

		</section>

		<!-- Main -->
		<section id="main">
			<div class="container">

				<!-- Portfolio -->
				<section>
					<header class="major">
						<h2>종류별 재활용 방법</h2>
					</header>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/plastic2.jpg" alt="" /></a>
								<header>
									<h3>플라스틱류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 페트병과 플라스틱 용기에 든 내용물은 깨끗이 비운다.</p>
										<p>2. 부착상표와 뚜껑 등 다른 재질로 된 부분은 분리한다.</p>
										<p>3. 가능한 압착하여 배출한다.</p>
										<p>4. 알약 포장재와 테이프 등 다른 재질이 섞인 제품은 종량제 봉투에 담기!</p>
									</details>

								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/glass.jpg" alt="" /></a>
								<header>
									<h3>유리병류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 담배꽁초와 같은 이물질은 제거한다.</p>
										<p>2. 거울, 깨진 유리, 도자기, 식기류는 유리병류가 아니다.</p>
										<p>3. 이런 쓰레기는 종량제봉투나 전용 마대에 버려주세요!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/Styrofoam2.png" alt="" /></a>
								<header>
									<h3>스티로폼</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 용기에 든 내용물은 깨끗이 비운다.</p>
										<p>2. 테이프나 운송장, 상표 등을 완전히 제거한 뒤 버린다.</p>
										<p>3. 이물질이 많이 묻었다면 스티로폼을 쪼개 종량제 봉투에 담기!</p>
										<p>4. 라면 국물이 밴 컵라면 용기는 음식물 찌꺼기를 물에 헹군 후 버린다.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/vinil2.jpg" alt="" /></a>
								<header>
									<h3>비닐류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 음식물과 이물질이 묻었다면 물로 헹궈서 잔여물을 없앤다.</p>
										<p>2. 이물질 제거가 어려운 경우에는 종량제 봉투에 배출!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/paper.jpg" alt="" /></a>
								<header>
									<h3>종이류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 물에 젖지 않도록 한다 .</p>
										<p>2. 비닐 코팅과 스프링 등은 제거한다.</p>
										<p>3. 붙어 있는 테이프나 철핀을 제거하고 끈으로 묶어 배출한다.</p>
										<p>4. 종이컵과 종이팩 등은 일반 종이류와 구분하여 배출한다!</p>
									</details>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/can.jpg"
									alt="" /></a>
								<header>
									<h3>캔/고철류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 이물질과 물기 등 수분을 최대한 제거한다</p>
										<p>2. 소금 성분이 많은 김치, 장류 등은 물에 헹구어 배출한다.</p>
										<p>3. 부피가 큰 경우에는 잘게 잘라서 배출하면 더욱 좋다.</p>
										<p>4. 음식물 종량제 봉투 및 전용수거용기에 배출!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/food.jpg" alt="" /></a>
								<header>
									<h3>음식물쓰레기</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 이물질과 물기 등 수분을 최대한 제거한다</p>
										<p>2. 소금 성분이 많은 김치, 장류 등은 물에 헹구어 배출한다.</p>
										<p>3. 부피가 큰 경우에는 잘게 잘라서 배출하면 더욱 좋다.</p>
										<p>4. 음식물 종량제 봉투 및 전용수거용기에 배출!</p>
									</details>
									<details>
										<summary>
											<strong>음식물 쓰레기가 아닌 것들</strong>
										</summary>
										<br>
										<p>1. 채소류 - 뿌리, 씨, 껍질</p>
										<p>2. 과일류 - 호두, 파인애플 등 딱딱한 껍데기, 씨</p>
										<p>3. 육류 - 소, 돼지, 닭 등의 뼈와 털</p>
										<p>4. 어패류 - 조개, 소라 등의 껍데기, 생선뼈, 갑각류의 껍질</p>
										<p>5. 기타 - 달걀 껍데기, 각종 티백 찌꺼기, 껌, 한약찌꺼기</p>
									</details>
								</footer>
								<ction>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/gas.jpg"
									alt="" /></a>
								<header>
									<h3>가연성 용기류</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 대표적으로 부탄가스, 헤어스프레이, 미스트 등의 화장품용기류 등이 있다.</p>
										<p>2. 잔여가스를 남긴 채로 분리수거할 경우 화재가 발생할 수 있다.</p>
										<p>3. 반드시 구멍을 뚫어 잔여가스를 배출시킨뒤 캔류에 분리수거 한다.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/receipt.jpg" alt="" /></a>
								<header>
									<h3>영수증/택배주문서</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 대표적으로 분리수거를 하면 안되는 경우이다.</p>
										<p>2. 다른 예로는 코팅지, 오염된 종이, 벽지, 부직포 등이 있다.</p>
										<p>3. 위와 같은 경우는 일반쓰레기로 종량제 봉투로 배출한다.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/medijpg.jpg" alt="" /></a>
								<header>
									<h3>의약품</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 약국, 보건소, 보건진료소에 배치된 폐의약품 전용수거함에 배출한다.</p>
										<p>2. 의약품 포장재 중 1차 포장재는 폐의약품 전용수거함에 배출해도 된다.</p>
										<p>3. 약국에서 포장한 2차 포장재는 폐의약품 전용 수거함에 배출할 수 없다.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/battery.jpg" alt="" /></a>
								<header>
									<h3>폐건전지/폐형광등</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 아파트 관리사무소, 동사무소, 사회복지관, 상가 주변 등에 배치된 폐건전지 및 폐형광등
											전용수거함에 배출한다.</p>
										<p>2. 폐건전지는 원상태로 분리배출한다.</p>
										<p>3. 폐형광등은 종이, 비닐 등 외피를 제거한 후 파손되지 않도록 주의하여 배출한다.</p>
										<p>4. 깨어진 형광등은 재활용되지 않으므로로 특수규격봉투(마대)에 담아서 배출한다.</p>
										<p>5. 백열전구나 깨어진 형광등 등은 재활용되지 않으므로로 종량제봉투에 배출한다.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/micro.jpg" alt="" /></a>
								<header>
									<h3>대형폐기물</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>자세히 알아보기</strong>
										</summary>
										<br>
										<p>1. 거주지 동사무소를 방문하여 신고서를 작성 및 접수하고 받은 스티커를 폐기물에 부착한 후
											배출한다.</p>
										<p>2. 배출자가 직접 쓰레기 중간집하장으로 수송할 경우 처리에 따른 수수료는 없다.</p>
										<p>3. 대형폐기물 신고는 실제 거주지의 지역 홈페이지에서도 할 수 있다.</p>
										<p>4. 컴퓨터나 노트북, 청소기, 밥솥 등의 폐소형 가전제춤은 무상수거가 가능하다.</p>
									</details>
								</footer>
							</section>
						</div>
					</div>
				</section>

			</div>
			<div class="col-12">

				<!-- Blog -->
				<!-- <section>
										<header class="major">
											<h2>The Blog</h2>
										</header>
										<div class="row">
											<div class="col-6 col-12-small">
												<section class="box">
													<a href="#" class="image featured"><img src="images/pic08.jpg" alt="" /></a>
													<header>
														<h3>Magna tempus consequat</h3>
														<p>Posted 45 minutes ago</p>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed et blandit consequat sed veroeros lorem et blandit adipiscing feugiat phasellus tempus hendrerit, tortor vitae mattis tempor, sapien sem feugiat sapien, id suscipit magna felis nec elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos lorem ipsum dolor sit amet.</p>
													<footer>
														<ul class="actions">
															<li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a></li>
															<li><a href="#" class="button alt icon solid fa-comment">33 comments</a></li>
														</ul>
													</footer>
												</section>
											</div>
											<div class="col-6 col-12-small">
												<section class="box">
													<a href="#" class="image featured"><img src="images/pic09.jpg" alt="" /></a>
													<header>
														<h3>Aptent veroeros aliquam</h3>
														<p>Posted 45 minutes ago</p>
													</header>
													<p>Lorem ipsum dolor sit amet sit veroeros sed et blandit consequat sed veroeros lorem et blandit adipiscing feugiat phasellus tempus hendrerit, tortor vitae mattis tempor, sapien sem feugiat sapien, id suscipit magna felis nec elit. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos lorem ipsum dolor sit amet.</p>
													<footer>
														<ul class="actions">
															<li><a href="#" class="button icon solid fa-file-alt">Continue Reading</a></li>
															<li><a href="#" class="button alt icon solid fa-comment">33 comments</a></li>
														</ul>
													</footer>
												</section>
											</div>
										</div>
									</section>-->

			</div>
	</div>

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
								<p>코로나19로 인한 비대면 생활로 인해 생활 쓰레기의 폭증에 관한 문제제기. 분리수거의 중요성을 인지하고
									프로젝트 시작</p></li>
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
				<!-- 안쓰는 기능 
					<div class="col-4 col-12-medium">
						<section>
							<header>
								<h2>What's this all about?</h2>
							</header>
							<a href="#" class="image featured"><img
								src="images/pic10.jpg" alt="" /></a>
							<p>
								This is <strong>Dopetrope</strong> a free, fully responsive
								HTML5 site template by <a href="http://twitter.com/ajlkn">AJ</a>
								for <a href="http://html5up.net/">HTML5 UP</a> It's released for
								free under the <a href="http://html5up.net/license/">Creative
									Commons Attribution</a> license so feel free to use it for any
								personal or commercial project &ndash; just don't forget to
								credit us!
							</p>
							<footer>
								<ul class="actions">
									<li><a href="#" class="button">Find out more</a></li>
								</ul>
							</footer>
						</section>
					</div> -->
				<!-- 안쓰는기능
					<div class="col-4 col-6-medium col-12-small">
						<section>
							<header>
								<h2>Tempus consequat</h2>
							</header>
							<ul class="divided">
								<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
								<li><a href="#">Sed et blandit consequat sed tlorem
										blandit</a></li>
								<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
								<li><a href="#">Hendrerit tortor vitae mattis tempor
										sapien</a></li>
								<li><a href="#">Sem feugiat sapien id suscipit magna
										felis nec</a></li>
								<li><a href="#">Elit class aptent taciti sociosqu ad
										litora</a></li>
							</ul>
						</section>
					</div> -->
				<!-- 안쓰는 기능
					<div class="col-4 col-6-medium col-12-small">
						<section>
							<header>
								<h2>Ipsum et phasellus</h2>
							</header>
							<ul class="divided">
								<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
								<li><a href="#">Sed et blandit consequat sed tlorem
										blandit</a></li>
								<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
								<li><a href="#">Hendrerit tortor vitae mattis tempor
										sapien</a></li>
								<li><a href="#">Sem feugiat sapien id suscipit magna
										felis nec</a></li>
								<li><a href="#">Elit class aptent taciti sociosqu ad
										litora</a></li>
							</ul>
						</section>
					</div> -->
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
									(사)세이브어스<br /> 스마트미디어인재개발원, 조선대학교<br /> 담당자 Tel 010-2761-3824
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
<!-- 	<script type="text/javascript">
	document.querySelector('.smart').onmouseover=function(){
		 document.querySelector('.drop-content').style.cssText="display:block;left : 300px;"
	 	}
	 document.querySelector('.smart').onmouseleave=function(){
	 	document.querySelector('.drop-content').style.display="none"/* .visibility="visible" */
	 	}
	 document.querySelector('.location').onmouseover=function(){
		 document.querySelector('.down-content').style.cssText="display:block;left : 800px;"
	 	}
	 document.querySelector('.location').onmouseleave=function(){
	 	document.querySelector('.down-content').style.display="none"/* .visibility="visible" */
	 	}
	</script> -->


</body>
</html>