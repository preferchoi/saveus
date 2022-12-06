<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.example.a1"%>









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
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />
	
	
	
	  <style>
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'돋움',sans-serif;font-size:12px;}
.map_wrap a, .map_wrap a:hover, .map_wrap a:active{color:#000;text-decoration: none;}
.map_wrap {position:relative;width:100%;height:500px;}
#menu_wrap {position:absolute;top:0;left:0;bottom:0;width:250px;margin:10px 0 30px 10px;padding:5px;overflow-y:auto;background:rgba(255, 255, 255, 0.7);z-index: 1;font-size:12px;border-radius: 10px;}
.bg_white {background:#fff;}
#menu_wrap hr {display: block; height: 1px;border: 0; border-top: 2px solid #5F5F5F;margin:3px 0;}
#menu_wrap .option{text-align: center;}
#menu_wrap .option p {margin:10px 0;}  
#menu_wrap .option button {margin-left:5px;}
 #placesList li {list-style: none;}
#placesList .item {position:relative;border-bottom:1px solid #888;overflow: hidden;cursor: pointer;min-height: 65px;}
#placesList .item span {display: block;margin-top:4px;}
#placesList .item h5, #placesList .item .info {text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
#placesList .item .info{padding:10px 0 10px 55px;}
#placesList .info .gray {color:#8a8a8a;}
#placesList .info .jibun {padding-left:26px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png) no-repeat;}
#placesList .info .tel {color:#009900;}
#placesList .item .markerbg {float:left;position:absolute;width:36px; height:37px;margin:10px 0 0 10px;background:url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png) no-repeat;}
#placesList .item .marker_1,#placesList .item .marker_2,#placesList .item .marker_3,#placesList .item .marker_4,
#placesList .item .marker_5,#placesList .item .marker_6,#placesList .item .marker_7,#placesList .item .marker_8,
#placesList .item .marker_9,#placesList .item .marker_10,#placesList .item .marker_11,#placesList .item .marker_12,
#placesList .item .marker_13,#placesList .item .marker_14,#placesList .item .marker_15 {background-position: 0 0px;}
/* #placesList .item .marker_2 {background-position: 0 -56px;}
#placesList .item .marker_3 {background-position: 0 -102px}
#placesList .item .marker_4 {background-position: 0 -148px;}
#placesList .item .marker_5 {background-position: 0 -194px;}
#placesList .item .marker_6 {background-position: 0 -240px;}
#placesList .item .marker_7 {background-position: 0 -286px;}
#placesList .item .marker_8 {background-position: 0 -332px;}
#placesList .item .marker_9 {background-position: 0 -378px;}
#placesList .item .marker_10 {background-position: 0 -423px;}
#placesList .item .marker_11 {background-position: 0 -470px;}
#placesList .item .marker_12 {background-position: 0 -516px;}
#placesList .item .marker_13 {background-position: 0 -562px;}
#placesList .item .marker_14 {background-position: 0 -608px;}
#placesList .item .marker_15 {background-position: 0 -654px;}   */
#pagination {margin:10px auto;text-align: center;}
#pagination a {display:inline-block;margin-right:10px;}
#pagination .on {font-weight: bold; cursor: default;color:#777;}
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
		
<% 	a1 test10 = new a1();
 ArrayList<String> arr =  test10.craw(); 
 String id = (String)session.getAttribute("id");%>
		
		
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
						<%-- <%
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
							
							
							
							
							<div class="map_wrap">
    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" id="keyword" size="10"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=eb3e5f93a924dd1f1ef79953361b2933&libraries=services"></script>
<script>
// 마커를 담을 배열입니다
var markers = [];

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(35.15972, 126.85306), // 지도의 중심좌표
        level: 14 // 지도의 확대 레벨
       
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 



//주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

let placeList = [];

 // 주소로 좌표를 검색합니다
<%for(int i=0;i<arr.size();i++){%>	 
	
geocoder.addressSearch('<%=arr.get(i)%>', function(result, status) {
	

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {
    	//마커 이미지의 이미지 주소입니다
    	 var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    	 // 마커 이미지의 이미지 크기 입니다
    	    var imageSize = new kakao.maps.Size(24, 35); 
    	    
    	    // 마커 이미지를 생성합니다    
    	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    	
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
         //console.log('주소결과', result);
        placeList.push({road_address_name: result[0].address_name, x:result[0].x, y:result[0].y});
        
        
         // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords,
            image : markerImage // 마커 이미지
        });

      
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };
        })(marker,'<%=arr.get(i)%>');

        fragment.appendChild(itemEl);

        

     };





});



<%}%>





// 장소 검색 객체를 생성합니다
var ps = new kakao.maps.services.Places();  
var keyword='';

// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// 키워드로 장소를 검색합니다
searchPlaces();

// 키워드 검색을 요청하는 함수입니다
function searchPlaces() {

    keyword = document.getElementById('keyword').value;

     if (!keyword.replace(/^\s+|\s+$/g, '')) {
       // alert('키워드를 입력해주세요!');
        return false;
    }  //키워드 입력해주세요 안띄우기위해서

    // 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
    ps.keywordSearch( keyword, placesSearchCB); 
}

// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

    	let arr = '<%=arr%>'.replace('[','').replace(']','').split(',')
        // 정상적으로 검색이 완료됐으면
        // 검색 목록과 마커를 표출합니다
        //console.log('data>>> ', data);
        //console.log('arr>>> ', '<%=arr%>'.replace('[','').replace(']','').split(','));
        
        let temp = [];
        
        for(let i=0; i<placeList.length; i++){
        	//console.log(placeList[i].road_address_name);
        	//console.log(placeList[i].road_address_name.indexOf(keyword) === 0);
        	//console.log('키워드>> ',keyword.indexOf('광주'));
        	        	
        	if(placeList[i].road_address_name.trim().indexOf(keyword.trim()) != -1){
        		console.log('저장');
        		temp.push(placeList[i]);
        	}
        	
        }
        
        displayPlaces(temp);
        //console.log('만든 주소>> ',placeList);
        console.log('검색된 주소>>',temp);
        
        // 페이지 번호를 표출합니다
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('검색 결과가 존재하지 않습니다.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('검색 결과 중 오류가 발생했습니다.');
        return;

    }
}

// 검색 결과 목록과 마커를 표출하는 함수입니다
function displayPlaces(places) {

	

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // 검색 결과 목록에 추가된 항목들을 제거합니다
    removeAllChildNods(listEl);

    // 지도에 표시되고 있는 마커를 제거합니다
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // 마커를 생성하고 지도에 표시합니다
         var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // 검색 결과 항목 Element를 생성합니다 
            
            //마크 없애기 위해서 주석처리

        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
        // LatLngBounds 객체에 좌표를 추가합니다
        bounds.extend(placePosition);

        // 마커와 검색결과 항목에 mouseover 했을때
        // 해당 장소에 인포윈도우에 장소명을 표시합니다
        // mouseout 했을 때는 인포윈도우를 닫습니다
        (function(marker, title) {
            kakao.maps.event.addListener(marker, 'mouseover', function() {
                displayInfowindow(marker, title);
            });

            kakao.maps.event.addListener(marker, 'mouseout', function() {
                infowindow.close();
            });

            itemEl.onmouseover =  function () {
                displayInfowindow(marker, title);
            };

            itemEl.onmouseout =  function () {
                infowindow.close();
            };	
        })(marker, places[i].place_name);

        fragment.appendChild(itemEl);
    }

    // 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
    map.setBounds(bounds);
}

// 검색결과 항목을 Element로 반환하는 함수입니다
function getListItem(index, places) {

    var el = document.createElement('li'),
    itemStr = '<span class="markerbg marker_' + (index+1) + '"></span>' +
                '<div class="info">' +
                '   <h5 style="color:black;">' + places.road_address_name + '</h5>';

              /*   if (places.road_address_name) {
                    itemStr += '    <span>' + places.road_address_name + '</span>' +
                                '   <span class="jibun gray">' +  places.address_name  + '</span>';
                } else {
                    itemStr += '    <span>' +  places.address_name  + '</span>'; 
                } */
                 
               

    el.innerHTML = itemStr;
    el.className = 'item';

    return el;
}

// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
        imageSize = new kakao.maps.Size(36, 37),  // 마커 이미지의 크기
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
            offset: new kakao.maps.Point(13, 37) // 마커 좌표에 일치시킬 이미지 내에서의 좌표
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // 마커의 위치
           

            
            
            image: markerImage 
        });

    //marker.setMap(map); // 지도 위에 마커를 표출합니다
    markers.push(marker);  // 배열에 생성된 마커를 추가합니다

    return marker;
}

// 지도 위에 표시되고 있는 마커를 모두 제거합니다
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // 기존에 추가된 페이지번호를 삭제합니다
    while (paginationEl.hasChildNodes()) {
        paginationEl.removeChild (paginationEl.lastChild);
    }

    for (i=1; i<=pagination.last; i++) {
        var el = document.createElement('a');
        el.href = "#";
        el.innerHTML = i;

        if (i===pagination.current) {
            el.className = 'on';
        } else {
            el.onclick = (function(i) {
                return function() {
                    pagination.gotoPage(i);
                }
            })(i);
        }

        fragment.appendChild(el);
    }
    paginationEl.appendChild(fragment);
}

// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
// 인포윈도우에 장소명을 표시합니다
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
    
    
    
    
    
    
}

 // 검색결과 목록의 자식 Element를 제거하는 함수입니다
function removeAllChildNods(el) {   
    while (el.hasChildNodes()) {
        el.removeChild (el.lastChild);
    }
}
 
 
 
 
 
 
 
 
 

 
 
 
 
 
 
 
 
 
</script>

								
							</article>

					</div>
							
							
							
							
							
							
								
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

	</body>
</html>