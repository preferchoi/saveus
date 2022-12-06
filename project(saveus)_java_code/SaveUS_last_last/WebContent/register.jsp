<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main2.css" /> 
	<style type="text/css">
	.line{display: flex;  justify-content: center; align-items: center;}
	#submit {display: flex; justify-content: space-around; align-items: center;}
	</style>
	</head>
	<body class="no-sidebar is-preload">
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

						<br><br>
        <b><font size="6" color="gray">회원가입</font></b>
        <br><br><br>
        
        <form action="JoinService" method="post">
            <table>
                <tr>
                    <th id="title">아이디</th>
                    <td ><div class="line">
                        <input type="text" name="id" maxlength="20" id="id" size="30">
                       <input type="button" value="중복확인" id="idcheck" onclick="idCheck()"> </div>
                       <p id="idconf" style="display:inline-block;"></p>
                        <!-- <a href="IdcheckService" class="button large" id="check">중복확인</a>    --> 
                    </td>
                </tr>
                        
                <tr>
                    <th id="title">비밀번호</th>
                    <td>
                        <input type="password" name="pw" id="pw" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                    <th id="title">비밀번호 확인</th>
                    <td>
                        <input type="password" onblur="pwCheck()" name="passw" id="passw" maxlength="15">
                        <p id="pwconf"></p>
                    </td>
                </tr>
                    
                <tr>
                    <th id="title">이름</th>
                    <td>
                        <input type="text" name="name" maxlength="40">
                    </td>
                </tr>
                    
                <tr>
                    <th id="title">성별</th>
                    <td>
                        <input type="radio" name="gender" value="남" />남
                        <input type="radio" name="gender" value="여" />여
                    </td>
                </tr>
                    
                <tr>
                    <th id="title">생일</th>
                    <td class="line">
                         <select name=birth_yy >
                         <option value="년" selected>년</option>
                         <% int start=2020;
                         for (int i=start;i>=start-100;i--){ out.print("<option value="+i+">"+i+"</option>");} %>
                         </select>
                         <select name=birth_mm >
                         <option value="월" selected>월</option>
                         <% for (int i=1;i<=12;i++){ out.print("<option value="+i+">"+i+"</option>");} %>
                         </select>

                         <select name=birth_dd >
                         <option value="일" selected>일</option>
                         <%for (int i=1;i<=31;i++) {out.print("<option value="+i+">"+i+"</option>");} %>
                         </select>
                         
                    
                     <!-- <input type="text" name="birth_yy" maxlength="4" size="10" placeholder="년(4자)" size="6">
                        <select name="birth_mm" >
                            <option >월</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birth_dd" size="10" maxlength="2" placeholder="일" size="4" >  -->
                    </td>
                </tr>
                    
                <tr>
                    <th id="title">이메일</th>
                    <td class="line"><!-- style="display: inline-block;" -->
                        <input type="text" name="emailid" maxlength="30"  size="30"> @
                        <select name="emailadr">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <th id="title">전화번호</th>
                    <td class="line">
                        <input type="text" name="tel_front" size="10"/> -
                        <input type="text" name="tel_medium"  size="10"/> -
                        <input type="text" name="tel_end"  size="10"/>
                    </td>
                </tr>
                <tr>
                    <th id="title">주소</th>
                    <td>
                        <input type="text" size="50" name="addr"/>
                    </td>
                </tr>
            </table>
            <div class="line">
            <input type="submit" value="가입" id="pass" />  <input type="reset" value="취소" style="margin-left: 30px;">
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
									<p>김나은, 박정우, 송현진, 최선호로 구성된 아우어스 팀의 구성. 환경을 주제로 선정하며 세이브어스를 구상</p></li>
								<li><span class="date">Nov <strong>2</strong></span>
									<h3>
										<a href="#">넘쳐나는 쓰레기 문제에 관심</a>
									</h3>
									<p>코로나19로 인한 비대면 생활로 인해 생활 쓰레기의 폭증에 관한 문제제기. 분리수거의 중요성을 인지하고 프로젝트 시작</p></li>
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
										(사)세이브어스<br /> 스마트미디어인재개발원, 조선대학교<br />
										담당자 Tel 010-2761-3824
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
			document.querySelector('#pass').addEventListener('click',function(){
				alert("회원가입이 완료되었습니다");
			});
			
			 function idCheck() {
				 let id = document.getElementById("id"); 
				$.ajax({
					type : "post",
					url : "IdcheckService",
					data : {"id" : id.value},
					dataType : "text",
					success : function(data) {
				 let idconf = document.getElementById("idconf"); 
						if(data=="true"){
							idconf.innerHTML="중복된 아이디입니다 새로운 아이디를 입력해주세요"
							idconf.style.cssText="color:red;"
						}else if(data=="false"){
							idconf.style.cssText="color:green;";
							idconf.innerHTML="사용가능한 아이디입니다"
						}else{
							idconf.innerHTML="아이디를 입력해주세요"
							idconf.style.cssText="color:red;"
						}
					},//success end
					error : function() {
					}//error end

				});//ajax end

			} ///function end 
			
			
			 function pwCheck() {
				 let passw = document.getElementById("passw"); 
				$.ajax({
					type : "post",
					url : "PwCheckService",
					data : {"passw" : passw.value},
					dataType : "text",
					success : function(data) {
				 let pw = document.getElementById("pw"); 
				 let pwconf = document.getElementById("pwconf"); 
						if(data!=pw.value){
							pwconf.innerHTML="비밀번호와 다릅니다 다시 입력해주세요"
							pwconf.style.cssText="color:red;"
						}else{
							pwconf.innerHTML=""
						}
					},//success end
					error : function() {
					}//error end

				});//ajax end

			} ///function end 
			</script>

	</body>
</html>