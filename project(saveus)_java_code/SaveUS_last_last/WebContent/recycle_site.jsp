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
			<a href="index.jsp"><img src="images/SaveUSLogo.png" alt="���ηΰ�"
				height="100" width="400"></a>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.jsp">Home</a></li>
					<!-- �Ⱦ��� ��� 
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
						<p>1. �˻�â�� ���� �����ϰ� �ִ� ������ �˻��Ѵ�.	ex)����, ����</p>
						<p>2. �츮 ���� ���� �ִ� �и����� ���Ǳ� ��ġ�� Ȯ���Ѵ�.</p></b>
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
					<li class="current"><a href="recycle_site.jsp">ķ���� �Ұ�</a></li>
					<%
						if (id == null) {
					%>
					<li><a href="login.jsp">�α��� | ȸ������</a></li>
					<%
						} else if (id.equals("admin")) {
					%>
					<li><a href="selectMember.jsp">ȸ������</a> <a
						href="LogoutService">�α׾ƿ�</a></li>
					<%
						} else {
					%>
					<li><a href="LogoutService">�α׾ƿ�</a></li>
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
						<h2>������Ŭ�� ķ����</h2>
					</header>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/ownyou.jpg" alt="" height="250" /></a>
								<header>
									<h3>����-��</h3>
								</header>
								<p>���̸� �������� ����� �м� �귣�� �߿������� �����ϰ� ����� ������ ���ĳ��� ���̵��� �������
									���ӷ��� �ϸ鼭 ����ũ�� ���������� Ǯ��� ������ ��Ÿ�� �м� ��ȭ �귣�� �Դϴ�. �߿������� �귣�� ���̹���
									������ - OWN����, ���� - YOU���� �ռ���� [������ �� ���� ��]��� �ǹ̸� ��� �ֽ��ϴ�. '�
									����ó��' ���ư��� ���� ���� ���� �귣��, �߿������Դϴ�.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.ownu.co.kr/" class="button alt">�湮�ϱ�</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/allbirds.jpg" alt="" height="250" /></a>
								<header>
									<h3>�ù���</h3>
								</header>
								<p>
									�������� �»��� Tim Brown�� �޸��� ���� �������� ���� Ư���� ���� �� �˰� �־����ϴ�. �׻� ȣ�����
									���� �״� �̷��� �����, ���Ӱ����� ��ᰡ �Ź� ���迡���� �� �������� �����ο��� ���� �����߽��ϴ�. �׸���
									�� ������ �������� Allbirds�� ������ ���۵Ǿ����ϴ�. <br>
								</p>
								<footer>
									<ul class="actions">
										<li><a href="https://allbirds.co.kr/" class="button alt">�湮�ϱ�</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/terracycle.jpg" alt="" height="250" /></a>
								<header>
									<h3>�׶����Ŭ</h3>
								</header>
								<p>Eliminate the idea of waste! �׶����Ŭ�� ��⹰�� ���ο� ��ġ�� â���ϴ� �۷ι�
									��Ȱ�� ������ ��������Դϴ�. ��Eliminate the idea of waste��(��⹰�� ������ ������)��
									������ ������ ���� ��Ȱ���� ���� �ʴ� ��⹰ �� ��� �ڿ��� ��Ȱ��� �� �ֵ��� �پ��� �ַ���� �����ϰ�
									�ֽ��ϴ�. ��Ȱ�� �ַ���� ���� �츮�� ��ư��� ����ȯ���� ��ȣ�ϰ� ���»翡�� ��ȸ���� �귣�� ��ġ�� â���մϴ�.
									�׶����Ŭ�� ���� 21�������� �ֿ� �Һ��� �� ��������� �����ϰ� �ֽ��ϴ�.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.terracycle.com/ko-KR/"
											class="button alt">�湮�ϱ�</a></li>
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
								<p>�̱��� ��2.0�� ������� �� ���ڻ�ŷ� ����Ʈ�̴�.���� ���ÿ��� �ڵ���̵� ���ǰ� ����, �׸�,
									��Ƽ�� ��ǰ ���� �Ǹ� �� �� �ְ� �� 150���� �������� 240������ �������� ���ø� �̿��ϰ� �ִ�</p>
								<footer>
									<ul class="actions">
										<li><a href="https://www.etsy.com/%3E" class="button alt">�湮�ϱ�</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/kud.png"
									alt="" height="250" /></a>
								<header>
									<h3>�ѱ�������Ŭ��������ȸ</h3>
								</header>
								<p>KUD (Korea Upcycle Design Association) ��ܹ���
									�ѱ�������Ŭ��������ȸ(Korea Upcycle Design Association)�� ��⹰�̶�� �Ҹ��� ������
									�ڿ��� �پ��� ��ɰ� Ư���� ��� ���ο� ź���� ȭ���� ������ �ֵ��ϴ� ������Ŭ�� �����̳� & �۰�����
									�����Դϴ�. â�� �̷� �ټ��� ����,�˾������� ü�����α׷� ������ �����Ͽ��� ������Ŭ ��Ƽ��Ʈ�� ���������
									���簳�߿� ������ �ֽ��ϴ�.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://kud.kr/" class="button alt">�湮�ϱ�</a></li>
									</ul>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/tumblbug.jpg" alt="" height="250" /></a>
								<header>
									<h3>�Һ��</h3>
								</header>
								<p>���� �� ������Ʈ ���̵��, �Һ������ ���Ƿ�. ũ�����ݵ����� ������Ʈ�� ���� �ڱݵ� ������, �����
									�Ŀ��� ��Ʈ��ũ�� Ȯ���� �� �ֽ��ϴ�.</p>
								<footer>
									<ul class="actions">
										<li><a href="https://tumblbug.com/" class="button alt">�湮�ϱ�</a></li>
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
								<p>�ڷγ�19�� ���� ���� ��Ȱ�� ���� ��Ȱ �������� ������ ���� ��������. �и������� �߿伺�� �����ϰ�
									������Ʈ ����</p></li>
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
									(��)���̺�<br /> ����Ʈ�̵�����簳�߿�, �������б�<br /> ����� Tel 010-2761-3824
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