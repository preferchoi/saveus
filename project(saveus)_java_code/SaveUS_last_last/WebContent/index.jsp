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
			<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="���ηΰ�"
				height="100" width="400"></a> <br>

			<!-- Nav -->
			<div id="menubar">
				<%
					if (id == null) {
				%>
				�α��� ���ּ���
				<%
					} else {
				%>
				<ul class="my_comment_ul">
					<li class="my_comment_li"><img src="images/earth.png"
						alt="�̹���" height="30" width="30"></li>
					<%
						if (id.equals("admin")) {
					%>
					<li class="my_comment_li" id="info">������</li>
					<%--<div id="dropdown-content">
					<ul class="my_comment_ul" >
						<!-- <li><a href="update.jsp">ȸ������</a></li> -->
						<li><a href="selectMember.jsp" id="end">ȸ������</a></li>
						<li><a href="LogoutService">�α׾ƿ�</a></li>
					</ul></div>
					<li class="my_comment_li"><%=vo.getPoint()%>p</li>
				</ul> --%>
					<%
						} else {
					%>
					<!-- 	<ul class="my_comment_ul">
					<li class="my_comment_li"><img src="images/earth.png" alt="�̹���"
						height="30" width="30"></li> -->
					<li class="my_comment_li" id="info"><a href="#"><%=id%>��</a></li>
					<div class="dropdown-content">
						<ul class="my_comment_ul">
							<li><a href="update.jsp">ȸ������</a></li>
							<li><a href="LogoutService">�α׾ƿ�</a></li>
							<li><a href="DeleteService" id="end">ȸ��Ż��</a></li>
						</ul>
					</div>
					<li class="my_comment_li"><%=vo.getPoint()%>p</li>
				</ul>
				<script type="text/javascript">
					document.querySelector('#end').addEventListener('click',
							function() {
								let result = confirm("������ Ż���Ͻðڽ��ϱ�?")
								if (result) {
									alert("Ż�� �Ϸ�Ǿ����ϴ�");
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
					<li class="smart"><a href="smart.jsp">����Ʈ �и�����</a><i
						class="fas fa-question-circle"></i></li>
					<div class="drop-content">
						<h3>������ ���ε��ϸ� �׿� �˸´� �и����Ź���� �˷��帳�ϴ�!</h3>
						<hr>
						<b><p>����Ʈ �и����� ���� �̿���</p>
							<p>1. ���� ���������� ������ ���ε��Ѵ�.</p>
							<p>2. �м����� ��ư�� ������.</p>
							<p>3. �и����� ����� Ȯ���Ѵ�.</p>
							<p>4. ���ϸ����� �����Ѵ�.</p></b>
					</div>
					<li><a href="method.jsp">�ùٸ� ��Ȱ���</a></li>
					<li class="location"><a href="test10.jsp">�и����� ���Ǳ�</a><i
						class="fas fa-question-circle"></i></li>
					<div class="down-content">
						<h3>�츮 ������ �ִ� �и����� ���Ǳ⸦ ã�ƺ�����!!</h3>
						<hr>
						<b><p>�и����� ���Ǳ� ���� �̿���</p>
							<p>1. �˻�â�� ���� �����ϰ� �ִ� ������ �˻��Ѵ�. ex)����, ����</p>
							<p>2. �츮 ���� ���� �ִ� �и����� ���Ǳ� ��ġ�� Ȯ���Ѵ�.</p></b>
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
					<li><a href="recycle_site.jsp">ķ���� �Ұ�</a></li>
					<%
						if (id == null) {
					%>
					<li><a href="login.jsp">�α���|ȸ������</a></li>
					<%
						} else if (id.equals("admin")) {
					%>
					<li><a href="selectMember.jsp">ȸ������</a></li>
					<li><a href="LogoutService">�α׾ƿ�</a></li>

					<%
						} else {
					%>
					<li><a href="LogoutService">�α׾ƿ�</a></li>
					<%
						}
					%>
				</ul>
			</nav>
			<!-- </section> -->
			<%--   <!-- Topbar Navbar -->
          
          <% if(id==null){%>
        	  �α����� ���ּ���
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
					<h2>�츮�� ����� ����, ����Ʈ �и�����</h2>
					<%
						if (id == null) {
					%><hr>
					<a href="login.jsp" style="color: white">�α����� �ʿ��� �����Դϴ�.</a>
					<%
						} else if (id.equals("admin")) {
					%>
					<hr>
					<form method="post"
						action="http://localhost:9000/trash_recognition"
						enctype="multipart/form-data">
						<p>
							������ ���ε� ���ּ��� <input type="file" name="file" accept="image/*">
						</p>
						<br> <input type="submit" value="�м�����">
						<!-- color ="blue" -->
					</form>
					<%
						} else {
					%>
					<strong><p><%=id%>�� ȯ���մϴ�!
						</p></strong>
					<hr>
					<form method="post"
						action="http://localhost:9000/trash_recognition"
						enctype="multipart/form-data">
						<p>
							������ ���ε� ���ּ��� <input type="file" name="file" accept="image/*">
						</p>
						<br> <input type="submit" value="�м�����">
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
								<h2>������ ó����� ����</h2>
							</header>
							<p>���� 3000����� ���ϴ� ������ ó�� ����� ���ҽ�ŵ�ϴ�.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="middle">
							<i class="icon solid featured alt fa-bolt"></i>
							<header>
								<h2>ȯ������� ����</h2>
							</header>
							<p>�������� �߻��ϴ� ������� ��� �Ұ�ó�� �Ǿ� ���� �³�ȭ�� ������Ű�� �ֽ��ϴ�.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="last">
							<i class="icon solid featured alt2 fa-star"></i>
							<header>
								<h2>���ο��̽�Ʈ�� ����ȭ</h2>
							</header>
							<p>���̺��� ���� �츮�� ���ο��̽�Ʈ ��ȸ�� ����µ� ���弭�ڽ��ϴ�.</p>
						</section>
					</div>
				</div>
				<footer>
					<ul class="actions">
						<li><a href="recycle_site.jsp" class="button large">��
								�˾ƺ���</a></li>
						<%
							if (id == null) {
						%>
						<li><a href="login.jsp" class="button alt large" id="donate">�Ŀ��ϱ�</a></li>
						<script>
							document.querySelector('#donate').addEventListener(
									'click', function() {
										alert("�α����� �ʿ��� �����Դϴ�");
									});
						</script>
						<%
							} else {
						%>
						<li><a href="donate.jsp" class="button alt large">�Ŀ��ϱ�</a></li>
						<%
							}
						%>
					</ul>
				</footer>
			</section>

		</section>

		<!-- Main -->
		<!-- �̰� �Ⱦ�~~~~~~
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
								<h2>����</h2>
							</header>
							<ul class="dates">
								<li><span class="date">Oct <strong>26</strong></span>
									<h3>
										<a href="#">������Ʈ ���� ����</a>
									</h3>
									<p>�質��, ������, ������, �ּ�ȣ�� ������ �ƿ� ���� ����. ȯ���� ������ �����ϸ� ���̺���
										����</p></li>
								<li><span class="date">Nov <strong>2</strong></span>
									<h3>
										<a href="#">���ĳ��� ������ ������ ����</a>
									</h3>
									<p>�ڷγ�19�� ���� ���� ��Ȱ�� ���� ��Ȱ �������� ������ ���� ��������. �и������� �߿伺��
										�����ϰ� ������Ʈ ����</p></li>
								<li><span class="date">Nov <strong>24</strong></span>
									<h3>
										<a href="#">����Ʈ �и����� ����</a>
									</h3>
									<p>�߸��� �и����� ����� �����Ͽ� ��Ȱ����� ���̱� ���� ����Ʈ �и����� ������ �ù� ����</p></li>
								<li><span class="date">Day by<strong>day</strong></span>
									<h3>
										<a href="#">������ ����</a>
									</h3>
									<p>����Ʈ �и����� ����� ��ȭ�� �߰� ��� ������Ʈ ��...</p></li>
							</ul>
						</section>
					</div>
					<!-- �Ⱦ��� ��� 
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
					<!-- �Ⱦ��±��
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
					<!-- �Ⱦ��� ���
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
										(��)���̺�<br /> ����Ʈ�̵�����簳�߿�, �������б�<br /> ����� Tel
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
								<li>&copy; ���̺�. All rights reserved.</li>
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