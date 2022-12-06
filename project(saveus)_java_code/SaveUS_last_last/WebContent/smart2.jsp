<%@page import="java.util.Enumeration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.DAO.ProjectDAO"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
<meta charset="UTF-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />
<style type="text/css">
	.box.post{
		
	display: flex;
	flex-direction: column;
	justify-content: center;
	align-items: center;

	}
	#trash{ width: 100%; height: auto; }

</style>
<%
	String name = request.getParameter("name");
String path = request.getParameter("path");
%>
</head>
<body class="no-sidebar is-preload">
<%
	String id = (String)session.getAttribute("id");
%>
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<h1>
				<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="메인로고" height="100" width="400"></a>
			</h1>
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
					<li class="current"><a href="smart.jsp">스마트 분리수거</a></li>
					<li><a href="method.jsp">올바른 재활용법</a></li>
								<li><a href="test10.jsp">분리수거 자판기</a></li>
					<li><a href="recycle_site.jsp">캠페인 소개</a></li>
					<%if(id==null){ %>
					<li><a href="login.jsp">로그인 | 회원가입</a></li>
					<%}else if(id.equals("admin")){%>
					<li><a href = "selectMember.jsp">회원관리</a> <a href="LogoutService">로그아웃</a></li>
					<%}else {%>
					<li><a href="LogoutService">로그아웃</a></li>
					<%}%>
							</ul>
						</nav>

				</section>

		<!-- Main -->
		<section id="main">
			<div class="container">

				<!-- Content -->
				<article class="box post">
					
					<header>
						<h2>분리수거 방법을 확인하세요!</h2>
						<p>올바른 분리수거 방법을 확인하세요</p>
					</header>
					 <%if(id==null){ %>
						<a href="login.jsp" style="font-size: 30px;">로그인이 필요한 서비스입니다.</a>
					<%}else{ %>
					<img src="<%=path%>" alt="Trash Picture" id="trash"/></a>
					
				 <!-- <form action="result" method="get">
						<input type="text" id="garbage" name="garbage"> <input
							type="button" onclick="trashResult()" value="확인">
					</form>  -->

					<!-- <p>
									Vestibulum scelerisque ultricies libero id hendrerit. Vivamus malesuada quam faucibus ante dignissim auctor
								</p> -->
					
					<section>
						<header>
						<%  
						String result = request.getParameter("result");
				         String a = "";   
				         if (result.equals("0")){
				                   a = "박스";} 
				                   else if (result.equals("1")){
				                      a ="플라스틱";}
				                   else if (result.equals("2")){
				                      a = "캔";}
				                   else if (result.equals("3")){
				                      a = "종이";}
				                   else if (result.equals("4")){
				                      a = "유리병";}
				                   else if (result.equals("5")){
				                      a = "일반쓰레기";}
 							%>
							<h3 style="font-size: 50px">이것은 <%=a %>입니다!</h3>
						</header>
						
						<!-- <p>Nunc diam iaculis massa, et aliquet nibh leo non nisl vitae
							porta lobortis, enim neque fringilla nunc, eget faucibus lacus
							sem quis nunc suspendisse nec lectus sit amet augue rutrum
							vulputate ut ut mi. Aenean elementum, mi sit amet porttitor lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
							dolor sit amet nullam consequat feugiat dolore tempus.</p> -->
							<br>
						<p style="font-size: 25px">
							<%
							if(a.equals("종이")){
								out.print("이물질이 있을 경우 제거한 후 묶어서 종이류로 분리배출해주세요");
							}else if(a.equals("박스")){
								out.print("이물질이 있을 경우 제거한 후 내용물을 비우고 압축하여 종이류로 분리배출해주세요");
							}else if(a.equals("플라스틱")){
								out.print("다른 재질로 된 이물질 등을 제거하여 내용물을 비운 뒤 가능한 압착하여 플라스틱류로 분리배출해주세요");
							}else if(a.equals("캔")){
								out.print("내용물을 비운 뒤 물로 헹군 후, 상표나 안내문구 등이 적힌 스티커 등을 모두 제거합니다");%>
								<br><%
								out.print(" 이후 압축하여 캔류로 분리배출해주세요");
							}else if(a.equals("유리병")){
								out.print("플라스틱이나 알루미늄 뚜껑은 먼저 제거한 후 내용물을 비운 뒤 물로 헹굽니다"); %>
								<br><% 
								out.print(" 이후 색깔별로 분리하여 깨지지 않게 조심히 유리류로 분리배출해주세요");
							}else if(a.equals("일반쓰레기")){
								out.print("반드시 종량제봉투를 사용하고 봉투의 규격량에 맞춰 담아 배출해주세요");
							}else{
								out.print("=====에러=====발생=====");
							}
							%>
						</p> 
					</section>
					<section>
					
						<!-- <header>
							<h3>So in conclusion ...</h3>
						</header> -->
						
						<a href="PlusService" id="plus" name="plus" class="button large">포인트 적립</a>
						<%} %> 
						<!-- <from action="PlusService" method="post">
							<input type="button" value="포인트 적립" id="plus" name="plus">
						</from> -->
						<!-- <p>Nunc diam iaculis massa, et aliquet nibh leo non nisl vitae
							porta lobortis, enim neque fringilla nunc, eget faucibus lacus
							sem quis nunc suspendisse nec lectus sit amet augue rutrum
							vulputate ut ut mi. Aenean elementum, mi sit amet porttitor lorem
							ipsum dolor sit amet, consectetur adipiscing elit. Lorem ipsum
							dolor sit amet nullam consequat feugiat dolore tempus. Elementum
							odio duis semper risus et lectus commodo fringilla. Maecenas
							sagittis convallis justo vel mattis.</p> -->
					</section>
				</article>

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
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<script type="text/javascript">
		
			
		document.querySelector('#plus').addEventListener('click',function(){
			alert("10p 적립되었습니다");
		});
			
	
	</script>

</body>
</html>