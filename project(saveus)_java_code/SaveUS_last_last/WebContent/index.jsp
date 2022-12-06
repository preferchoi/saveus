<%@page import="com.VO.ProjectVO"%>
<%@page import="com.DAO.ProjectDAO"%>
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
.my_comment_ul {
	list-style: none;
	margin: 0;
	padding: 0;
}

.my_comment_li {
	margin: 0 0 0 0;
	padding: 0 0 0 0;
	border: 0;
	display: inline-block;
}

#menubar {
	display: flex;
	flex-direction: row;
	justify-content: flex-end;
	align-items: flex-end;
	background-color: white;
	margin-left: 1500px;
	display: inline-block;
}

#info, .smart, .location {
	position: relative;
	display: inline-block;
}#main{
z-index: 1;
}

.dropdown-content, .drop-content, .down-content {
	display : none;
	position: absolute;
	background-color: #F9F9F9;
	min-width: 160px;
	padding: 8px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 2;
}


</style>
<script src="/jquery/jquery.js"></script>
<script>
	$(document).ready(function() {
		if (!('url' in window) && ('webkitURL' in window)) {
			window.URL = window.webkitURL;
		}
		$('#camera').change(function(e) {
			$('#pic').attr('src', URL.createObjectURL(e.target.files[0]));
		});
	});
</script>
</head>
<body class="homepage is-preload">

	<%
		String id = (String) session.getAttribute("id");
	ProjectDAO dao = new ProjectDAO();
	ProjectVO vo = dao.myInfo(id);
	/* webView webView = //initialization......

			webView.getSettings().setUseWideViewPort(true);
			webView.getSettings().setLoadWithOverviewMode(true); */
	%>

	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="메인로고"
				height="100" width="400"></a> <br>

			<!-- Nav -->
			<div id="menubar">
				<%
					if (id == null) {
				%>
				로그인 해주세요
				<%
					} else {
				%>
				<ul class="my_comment_ul">
					<li class="my_comment_li"><img src="images/earth.png"
						alt="이미지" height="30" width="30"></li>
					<%
						if (id.equals("admin")) {
					%>
					<li class="my_comment_li" id="info">관리자</li>
					<%--<div id="dropdown-content">
					<ul class="my_comment_ul" >
						<!-- <li><a href="update.jsp">회원정보</a></li> -->
						<li><a href="selectMember.jsp" id="end">회원관리</a></li>
						<li><a href="LogoutService">로그아웃</a></li>
					</ul></div>
					<li class="my_comment_li"><%=vo.getPoint()%>p</li>
				</ul> --%>
					<%
						} else {
					%>
					<!-- 	<ul class="my_comment_ul">
					<li class="my_comment_li"><img src="images/earth.png" alt="이미지"
						height="30" width="30"></li> -->
					<li class="my_comment_li" id="info"><a href="#"><%=id%>님</a></li>
					<div class="dropdown-content">
						<ul class="my_comment_ul">
							<li><a href="update.jsp">회원정보</a></li>
							<li><a href="LogoutService">로그아웃</a></li>
							<li><a href="DeleteService" id="end">회원탈퇴</a></li>
						</ul>
					</div>
					<li class="my_comment_li"><%=vo.getPoint()%>p</li>
				</ul>
				<script type="text/javascript">
					document.querySelector('#end').addEventListener('click',
							function() {
								let result = confirm("정말로 탈퇴하시겠습니까?")
								if (result) {
									alert("탈퇴가 완료되었습니다");
								}
							});
					document.querySelector('#info').onmouseover = function() {
						document.querySelector('.dropdown-content').style.display = "block"/* .visibility="visible" */
					}
					document.querySelector('body').onclick = function() {
						document.querySelector('.dropdown-content').style.display = "none"/* .visibility="visible" */
					}
				</script>
				<%
					}
				}
				%>
			</div>

			<nav id="nav" id="navPanel">
				<ul>
					<li class="current"><a href="index.jsp">Home</a></li>

					<!-- <li>
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
										</li> -->
					<!-- 	<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>  -->
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
							<p>1. 검색창에 현재 거주하고 있는 지역을 검색한다. ex)서울, 광주</p>
							<p>2. 우리 지역 내에 있는 분리수거 자판기 위치를 확인한다.</p></b>
					</div>
					<script type="text/javascript">
						document.querySelector('.smart').onmouseover = function() {
							document.querySelector('.drop-content').style.cssText = "display:block;left : 300px;"
						}
						document.querySelector('.smart').onmouseleave = function() {
							document.querySelector('.drop-content').style.display = "none"/* .visibility="visible" */
						}
						document.querySelector('.location').onmouseover = function() {
							document.querySelector('.down-content').style.cssText = "display:block;left : 800px;"
						}
						document.querySelector('.location').onmouseleave = function() {
							document.querySelector('.down-content').style.display = "none"/* .visibility="visible" */
						}
					</script>
					<li><a href="recycle_site.jsp">캠페인 소개</a></li>
					<%
						if (id == null) {
					%>
					<li><a href="login.jsp">로그인|회원가입</a></li>
					<%
						} else if (id.equals("admin")) {
					%>
					<li><a href="selectMember.jsp">회원관리</a></li>
					<li><a href="LogoutService">로그아웃</a></li>

					<%
						} else {
					%>
					<li><a href="LogoutService">로그아웃</a></li>
					<%
						}
					%>
				</ul>
			</nav>
			<!-- </section> -->
			<%--   <!-- Topbar Navbar -->
          
          <% if(id==null){%>
        	  로그인을 해주세요
          <%}else{  %>
          
          <ul class="navbar-nav ml-auto">

            <!-- Nav Item - Search Dropdown (Visible Only XS) -->
            <li class="nav-item dropdown no-arrow d-sm-none">
              <a class="nav-link dropdown-toggle" href="#" id="searchDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                <i class="fas fa-search fa-fw"></i>
              </a>
              <%} %> --%>

			<!-- Banner -->
			<section id="banner">
				<header>
					<h2>우리가 만드는 세상, 스마트 분리수거</h2>
					<%
						if (id == null) {
					%><hr>
					<a href="login.jsp" style="color: white">로그인이 필요한 서비스입니다.</a>
					<%
						} else if (id.equals("admin")) {
					%>
					<hr>
					<form method="post"
						action="http://localhost:9000/trash_recognition"
						enctype="multipart/form-data">
						<p>
							사진을 업로드 해주세요 <input type="file" name="file" accept="image/*">
						</p>
						<br> <input type="submit" value="분석시작">
						<!-- color ="blue" -->
					</form>
					<%
						} else {
					%>
					<strong><p><%=id%>님 환영합니다!
						</p></strong>
					<hr>
					<form method="post"
						action="http://localhost:9000/trash_recognition"
						enctype="multipart/form-data">
						<p>
							사진을 업로드 해주세요 <input type="file" name="file" accept="image/*">
						</p>
						<br> <input type="submit" value="분석시작">
						<!-- color ="blue" -->
					</form>
					<%
						}
					%>
				</header>
			</section>

			<!-- Intro -->
			<section id="intro" class="container">
				<div class="row">
					<div class="col-4 col-12-medium">
						<section class="first">
							<i class="icon solid featured fa-cog"></i>
							<header>
								<h2>쓰레기 처리비용 감소</h2>
							</header>
							<p>연간 3000억원에 달하는 쓰레기 처분 비용을 감소시킵니다.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="middle">
							<i class="icon solid featured alt fa-bolt"></i>
							<header>
								<h2>환경오염의 방지</h2>
							</header>
							<p>국내에서 발생하는 쓰레기는 모두 소각처리 되어 지구 온난화를 촉진시키고 있습니다.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="last">
							<i class="icon solid featured alt2 fa-star"></i>
							<header>
								<h2>제로웨이스트의 선진화</h2>
							</header>
							<p>세이브어스를 통해 우리는 제로웨이스트 사회를 만드는데 앞장서겠습니다.</p>
						</section>
					</div>
				</div>
				<footer>
					<ul class="actions">
						<li><a href="recycle_site.jsp" class="button large">더
								알아보기</a></li>
						<%
							if (id == null) {
						%>
						<li><a href="login.jsp" class="button alt large" id="donate">후원하기</a></li>
						<script>
							document.querySelector('#donate').addEventListener(
									'click', function() {
										alert("로그인이 필요한 서비스입니다");
									});
						</script>
						<%
							} else {
						%>
						<li><a href="donate.jsp" class="button alt large">후원하기</a></li>
						<%
							}
						%>
					</ul>
				</footer>
			</section>

		</section>

		<!-- Main -->
		<!-- 이거 안씀~~~~~~
		<section id="main">
			<div class="container">
				<div class="row">
					<div class="col-12"></div>
		</section>
 -->
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


</body>
</html>