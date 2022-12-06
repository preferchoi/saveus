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
					<li><a href="recycle_site.jsp">ķ���� �Ұ�</a></li>
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
						<h2>������ ��Ȱ�� ���</h2>
					</header>
					<div class="row">
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/plastic2.jpg" alt="" /></a>
								<header>
									<h3>�ö�ƽ��</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ��Ʈ���� �ö�ƽ ��⿡ �� ���빰�� ������ ����.</p>
										<p>2. ������ǥ�� �Ѳ� �� �ٸ� ������ �� �κ��� �и��Ѵ�.</p>
										<p>3. ������ �����Ͽ� �����Ѵ�.</p>
										<p>4. �˾� ������� ������ �� �ٸ� ������ ���� ��ǰ�� ������ ������ ���!</p>
									</details>

								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/glass.jpg" alt="" /></a>
								<header>
									<h3>��������</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. �����ʿ� ���� �̹����� �����Ѵ�.</p>
										<p>2. �ſ�, ���� ����, ���ڱ�, �ı���� ���������� �ƴϴ�.</p>
										<p>3. �̷� ������� ������������ ���� ���뿡 �����ּ���!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/Styrofoam2.png" alt="" /></a>
								<header>
									<h3>��Ƽ����</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ��⿡ �� ���빰�� ������ ����.</p>
										<p>2. �������� �����, ��ǥ ���� ������ ������ �� ������.</p>
										<p>3. �̹����� ���� �����ٸ� ��Ƽ������ �ɰ� ������ ������ ���!</p>
										<p>4. ��� ������ �� �Ŷ�� ���� ���Ĺ� ��⸦ ���� �� �� ������.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/vinil2.jpg" alt="" /></a>
								<header>
									<h3>��ҷ�</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ���Ĺ��� �̹����� �����ٸ� ���� ��ż� �ܿ����� ���ش�.</p>
										<p>2. �̹��� ���Ű� ����� ��쿡�� ������ ������ ����!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/paper.jpg" alt="" /></a>
								<header>
									<h3>���̷�</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ���� ���� �ʵ��� �Ѵ� .</p>
										<p>2. ��� ���ð� ������ ���� �����Ѵ�.</p>
										<p>3. �پ� �ִ� �������� ö���� �����ϰ� ������ ���� �����Ѵ�.</p>
										<p>4. �����Ű� ������ ���� �Ϲ� ���̷��� �����Ͽ� �����Ѵ�!</p>
									</details>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/can.jpg"
									alt="" /></a>
								<header>
									<h3>ĵ/��ö��</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. �̹����� ���� �� ������ �ִ��� �����Ѵ�</p>
										<p>2. �ұ� ������ ���� ��ġ, ��� ���� ���� �󱸾� �����Ѵ�.</p>
										<p>3. ���ǰ� ū ��쿡�� �߰� �߶� �����ϸ� ���� ����.</p>
										<p>4. ���Ĺ� ������ ���� �� ������ſ�⿡ ����!</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/food.jpg" alt="" /></a>
								<header>
									<h3>���Ĺ�������</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. �̹����� ���� �� ������ �ִ��� �����Ѵ�</p>
										<p>2. �ұ� ������ ���� ��ġ, ��� ���� ���� �󱸾� �����Ѵ�.</p>
										<p>3. ���ǰ� ū ��쿡�� �߰� �߶� �����ϸ� ���� ����.</p>
										<p>4. ���Ĺ� ������ ���� �� ������ſ�⿡ ����!</p>
									</details>
									<details>
										<summary>
											<strong>���Ĺ� �����Ⱑ �ƴ� �͵�</strong>
										</summary>
										<br>
										<p>1. ä�ҷ� - �Ѹ�, ��, ����</p>
										<p>2. ���Ϸ� - ȣ��, ���ξ��� �� ������ ������, ��</p>
										<p>3. ���� - ��, ����, �� ���� ���� ��</p>
										<p>4. ���з� - ����, �Ҷ� ���� ������, ������, �������� ����</p>
										<p>5. ��Ÿ - �ް� ������, ���� Ƽ�� ���, ��, �Ѿ����</p>
									</details>
								</footer>
								<ction>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img src="images/gas.jpg"
									alt="" /></a>
								<header>
									<h3>������ ����</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ��ǥ������ ��ź����, ��������, �̽�Ʈ ���� ȭ��ǰ���� ���� �ִ�.</p>
										<p>2. �ܿ������� ���� ä�� �и������� ��� ȭ�簡 �߻��� �� �ִ�.</p>
										<p>3. �ݵ�� ������ �վ� �ܿ������� �����Ų�� ĵ���� �и����� �Ѵ�.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/receipt.jpg" alt="" /></a>
								<header>
									<h3>������/�ù��ֹ���</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ��ǥ������ �и����Ÿ� �ϸ� �ȵǴ� ����̴�.</p>
										<p>2. �ٸ� ���δ� ������, ������ ����, ����, ������ ���� �ִ�.</p>
										<p>3. ���� ���� ���� �Ϲݾ������ ������ ������ �����Ѵ�.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/medijpg.jpg" alt="" /></a>
								<header>
									<h3>�Ǿ�ǰ</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. �౹, ���Ǽ�, ��������ҿ� ��ġ�� ���Ǿ�ǰ ��������Կ� �����Ѵ�.</p>
										<p>2. �Ǿ�ǰ ������ �� 1�� ������� ���Ǿ�ǰ ��������Կ� �����ص� �ȴ�.</p>
										<p>3. �౹���� ������ 2�� ������� ���Ǿ�ǰ ���� �����Կ� ������ �� ����.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/battery.jpg" alt="" /></a>
								<header>
									<h3>�������/��������</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ����Ʈ �����繫��, ���繫��, ��ȸ������, �� �ֺ� � ��ġ�� ������� �� ��������
											��������Կ� �����Ѵ�.</p>
										<p>2. ��������� �����·� �и������Ѵ�.</p>
										<p>3. ���������� ����, ��� �� ���Ǹ� ������ �� �ļյ��� �ʵ��� �����Ͽ� �����Ѵ�.</p>
										<p>4. ������ �������� ��Ȱ����� �����Ƿη� Ư���԰ݺ���(����)�� ��Ƽ� �����Ѵ�.</p>
										<p>5. �鿭������ ������ ������ ���� ��Ȱ����� �����Ƿη� ������������ �����Ѵ�.</p>
									</details>
								</footer>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section class="box">
								<a href="#" class="image featured"><img
									src="images/micro.jpg" alt="" /></a>
								<header>
									<h3>������⹰</h3>
								</header>
								<footer>
									<details>
										<summary>
											<strong>�ڼ��� �˾ƺ���</strong>
										</summary>
										<br>
										<p>1. ������ ���繫�Ҹ� �湮�Ͽ� �Ű��� �ۼ� �� �����ϰ� ���� ��ƼĿ�� ��⹰�� ������ ��
											�����Ѵ�.</p>
										<p>2. �����ڰ� ���� ������ �߰����������� ������ ��� ó���� ���� ������� ����.</p>
										<p>3. ������⹰ �Ű�� ���� �������� ���� Ȩ������������ �� �� �ִ�.</p>
										<p>4. ��ǻ�ͳ� ��Ʈ��, û�ұ�, ��� ���� ����� ���������� ������Ű� �����ϴ�.</p>
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