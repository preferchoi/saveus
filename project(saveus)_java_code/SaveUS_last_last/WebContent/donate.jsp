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
				<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="���ηΰ�" height="100" width="400"></a>
			</h1>

		</section>

		<!-- Main -->
		<section id="main">
			<div class="container">


				<form method='post' action='DonateService'>
						<h2 style="color:#86E57F;">�������� ���ϸ����� ����ϼ���!!</h2>
						<br>
						<p>�󸶳� �Ŀ��Ͻðڽ��ϱ�? <br> ���� ����� ���ϸ����� <%=vo.getPoint() %>p�Դϴ�</p>
						<div style="display: flex;"><input name='point' type='text' size="30"><span style="font-size: 30px;">P</span></div>
						<hr>
						<div id=submit>
							<input type='submit' value='Donate' id="donate">
							<!-- <a href="#" class="button large">Login</a> -->
							<input type='reset' value='���' style="margin-left: 30px;"><!-- style="margin-left: 10px;" -->
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
	<script type="text/javascript">
	 document.querySelector('#donate').addEventListener('click',function(){
		alert("�Ŀ��� �Ϸ�Ǿ����ϴ� �����մϴ�!");
	});
	 </script>

</body>
</html>