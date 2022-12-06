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
<link rel="stylesheet" href="assets/css/main.css" />
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
					<li class="current"><a href="recycle_site.jsp">캠페인 소개</a></li>
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
						<h2>업사이클링 캠페인</h2>
					</header>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/ownyou.jpg" alt="" height="250" /></a>
								<header>
									<h3>오운-유</h3>
								</header>
								<p>아이를 예술가로 만드는 패션 브랜드 ㈜오운유는 엉뚱하고 기발한 상상력이 넘쳐나는 아이들의 드로잉을
									유머러스 하면서 유니크한 디자인으로 풀어내는 라이프 스타일 패션 잡화 브랜드 입니다. ㈜오운유의 브랜드 네이밍은
									“나의 - OWN”과, “너 - YOU”의 합성어로 [나만의 너 나의 너]라는 의미를 담고 있습니다. '어린
									아이처럼' 돌아가고 싶은 나를 위한 브랜드, ㈜오운유입니다.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.ownu.co.kr/" class="button alt">방문하기</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/allbirds.jpg" alt="" height="250" /></a>
								<header>
									<h3>올버즈</h3>
								</header>
								<p>
									뉴질랜드 태생인 Tim Brown은 메리노 울의 마법과도 같은 특색에 대해 잘 알고 있었습니다. 항상 호기심이
									많던 그는 이렇게 놀랍고도, 지속가능한 재료가 신발 업계에서는 왜 없었는지 스스로에게 묻기 시작했습니다. 그리고
									이 질문을 시작으로 Allbirds의 여정이 시작되었습니다. <br>
								</p>
								<footer>
									<ul class="actions">
										<li><a href="https://allbirds.co.kr/" class="button alt">방문하기</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/terracycle.jpg" alt="" height="250" /></a>
								<header>
									<h3>테라사이클</h3>
								</header>
								<p>Eliminate the idea of waste! 테라사이클은 폐기물의 새로운 가치를 창출하는 글로벌
									재활용 컨설팅 전문기업입니다. ‘Eliminate the idea of waste’(폐기물의 개념을 없애자)는
									비전을 가지고 현재 재활용이 되지 않는 폐기물 등 모든 자원이 재활용될 수 있도록 다양한 솔루션을 제공하고
									있습니다. 재활용 솔루션을 통해 우리가 살아가는 지구환경을 보호하고 협력사에는 사회공헌 브랜드 가치를 창출합니다.
									테라사이클은 현재 21개국에서 주요 소비재 및 제조기업과 협업하고 있습니다.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.terracycle.com/ko-KR/"
											class="button alt">방문하기</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/esty.jpg" alt="" height="250" /></a>
								<header>
									<h3>Etsy</h3>
								</header>
								<p>미국의 웹2.0을 기반으로 한 전자상거래 사이트이다.현재 엣시에는 핸드메이드 물건과 사진, 그림,
									빈티지 제품 등을 판매 할 수 있고 약 150여개 국가에서 240만명의 유저들이 엣시를 이용하고 있다</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.etsy.com/%3E" class="button alt">방문하기</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/kud.png"
									alt="" height="250" /></a>
								<header>
									<h3>한국업사이클디자인협회</h3>
								</header>
								<p>KUD (Korea Upcycle Design Association) 사단법인
									한국업사이클디자인협회(Korea Upcycle Design Association)은 폐기물이라고 불리는 소중한
									자원에 다양한 기능과 특성을 살려 새로운 탄생과 화려한 변신을 주도하는 업사이클링 디자이너 & 작가들의
									모입입니다. 창립 이래 다수의 전시,팝업스토어와 체험프로그램 교육을 개최하였고 업사이클 아티스트의 지원사업과
									소재개발에 힘쓰고 있습니다.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://kud.kr/" class="button alt">방문하기</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/tumblbug.jpg" alt="" height="250" /></a>
								<header>
									<h3>텀블벅</h3>
								</header>
								<p>마음 속 프로젝트 아이디어, 텀블벅에서 현실로. 크라우드펀딩으로 프로젝트를 위한 자금도 모으고, 든든한
									후원자 네트워크도 확보할 수 있습니다.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://tumblbug.com/" class="button alt">방문하기</a></li>
									</ul>
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
											</div> -->
				<!-- <div class="col-6 col-12-small">
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
									</section>  -->
				-->

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
	

</body>
</html>