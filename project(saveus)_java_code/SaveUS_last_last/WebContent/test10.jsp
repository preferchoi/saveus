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
.map_wrap, .map_wrap * {margin:0;padding:0;font-family:'Malgun Gothic',dotum,'����',sans-serif;font-size:12px;}
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
						<%-- <%
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
					<%if(id==null){ %>
					<li><a href="login.jsp">�α��� | ȸ������</a></li>
					<%}else if(id.equals("admin")){%>
					<li><a href = "selectMember.jsp">ȸ������</a> <a href="LogoutService">�α׾ƿ�</a></li>
					<%}else {%>
					<li><a href="LogoutService">�α׾ƿ�</a></li>
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
                    Ű���� : <input type="text" id="keyword" size="10"> 
                    <button type="submit">�˻��ϱ�</button> 
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
// ��Ŀ�� ���� �迭�Դϴ�
var markers = [];

var mapContainer = document.getElementById('map'), // ������ ǥ���� div 
    mapOption = {
        center: new kakao.maps.LatLng(35.15972, 126.85306), // ������ �߽���ǥ
        level: 14 // ������ Ȯ�� ����
       
    };  

// ������ �����մϴ�    
var map = new kakao.maps.Map(mapContainer, mapOption); 



//�ּ�-��ǥ ��ȯ ��ü�� �����մϴ�
var geocoder = new kakao.maps.services.Geocoder();

let placeList = [];

 // �ּҷ� ��ǥ�� �˻��մϴ�
<%for(int i=0;i<arr.size();i++){%>	 
	
geocoder.addressSearch('<%=arr.get(i)%>', function(result, status) {
	

    // ���������� �˻��� �Ϸ������ 
     if (status === kakao.maps.services.Status.OK) {
    	//��Ŀ �̹����� �̹��� �ּ��Դϴ�
    	 var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    	 // ��Ŀ �̹����� �̹��� ũ�� �Դϴ�
    	    var imageSize = new kakao.maps.Size(24, 35); 
    	    
    	    // ��Ŀ �̹����� �����մϴ�    
    	    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    	
        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);
         //console.log('�ּҰ��', result);
        placeList.push({road_address_name: result[0].address_name, x:result[0].x, y:result[0].y});
        
        
         // ��������� ���� ��ġ�� ��Ŀ�� ǥ���մϴ�
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords,
            image : markerImage // ��Ŀ �̹���
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





// ��� �˻� ��ü�� �����մϴ�
var ps = new kakao.maps.services.Places();  
var keyword='';

// �˻� ��� ����̳� ��Ŀ�� Ŭ������ �� ��Ҹ��� ǥ���� ���������츦 �����մϴ�
var infowindow = new kakao.maps.InfoWindow({zIndex:1});

// Ű����� ��Ҹ� �˻��մϴ�
searchPlaces();

// Ű���� �˻��� ��û�ϴ� �Լ��Դϴ�
function searchPlaces() {

    keyword = document.getElementById('keyword').value;

     if (!keyword.replace(/^\s+|\s+$/g, '')) {
       // alert('Ű���带 �Է����ּ���!');
        return false;
    }  //Ű���� �Է����ּ��� �ȶ������ؼ�

    // ��Ұ˻� ��ü�� ���� Ű����� ��Ұ˻��� ��û�մϴ�
    ps.keywordSearch( keyword, placesSearchCB); 
}

// ��Ұ˻��� �Ϸ���� �� ȣ��Ǵ� �ݹ��Լ� �Դϴ�
function placesSearchCB(data, status, pagination) {
    if (status === kakao.maps.services.Status.OK) {

    	let arr = '<%=arr%>'.replace('[','').replace(']','').split(',')
        // ���������� �˻��� �Ϸ������
        // �˻� ��ϰ� ��Ŀ�� ǥ���մϴ�
        //console.log('data>>> ', data);
        //console.log('arr>>> ', '<%=arr%>'.replace('[','').replace(']','').split(','));
        
        let temp = [];
        
        for(let i=0; i<placeList.length; i++){
        	//console.log(placeList[i].road_address_name);
        	//console.log(placeList[i].road_address_name.indexOf(keyword) === 0);
        	//console.log('Ű����>> ',keyword.indexOf('����'));
        	        	
        	if(placeList[i].road_address_name.trim().indexOf(keyword.trim()) != -1){
        		console.log('����');
        		temp.push(placeList[i]);
        	}
        	
        }
        
        displayPlaces(temp);
        //console.log('���� �ּ�>> ',placeList);
        console.log('�˻��� �ּ�>>',temp);
        
        // ������ ��ȣ�� ǥ���մϴ�
        displayPagination(pagination);

    } else if (status === kakao.maps.services.Status.ZERO_RESULT) {

        alert('�˻� ����� �������� �ʽ��ϴ�.');
        return;

    } else if (status === kakao.maps.services.Status.ERROR) {

        alert('�˻� ��� �� ������ �߻��߽��ϴ�.');
        return;

    }
}

// �˻� ��� ��ϰ� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function displayPlaces(places) {

	

    var listEl = document.getElementById('placesList'), 
    menuEl = document.getElementById('menu_wrap'),
    fragment = document.createDocumentFragment(), 
    bounds = new kakao.maps.LatLngBounds(), 
    listStr = '';
    
    // �˻� ��� ��Ͽ� �߰��� �׸���� �����մϴ�
    removeAllChildNods(listEl);

    // ������ ǥ�õǰ� �ִ� ��Ŀ�� �����մϴ�
    removeMarker();
    
    for ( var i=0; i<places.length; i++ ) {

        // ��Ŀ�� �����ϰ� ������ ǥ���մϴ�
         var placePosition = new kakao.maps.LatLng(places[i].y, places[i].x),
            marker = addMarker(placePosition, i), 
            itemEl = getListItem(i, places[i]); // �˻� ��� �׸� Element�� �����մϴ� 
            
            //��ũ ���ֱ� ���ؼ� �ּ�ó��

        // �˻��� ��� ��ġ�� �������� ���� ������ �缳���ϱ�����
        // LatLngBounds ��ü�� ��ǥ�� �߰��մϴ�
        bounds.extend(placePosition);

        // ��Ŀ�� �˻���� �׸� mouseover ������
        // �ش� ��ҿ� ���������쿡 ��Ҹ��� ǥ���մϴ�
        // mouseout ���� ���� ���������츦 �ݽ��ϴ�
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

    // �˻���� �׸���� �˻���� ��� Elemnet�� �߰��մϴ�
    listEl.appendChild(fragment);
    menuEl.scrollTop = 0;

    // �˻��� ��� ��ġ�� �������� ���� ������ �缳���մϴ�
    map.setBounds(bounds);
}

// �˻���� �׸��� Element�� ��ȯ�ϴ� �Լ��Դϴ�
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

// ��Ŀ�� �����ϰ� ���� ���� ��Ŀ�� ǥ���ϴ� �Լ��Դϴ�
function addMarker(position, idx, title) {
    var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // ��Ŀ �̹��� url, ��������Ʈ �̹����� ���ϴ�
        imageSize = new kakao.maps.Size(36, 37),  // ��Ŀ �̹����� ũ��
        imgOptions =  {
            spriteSize : new kakao.maps.Size(36, 691), // ��������Ʈ �̹����� ũ��
            spriteOrigin : new kakao.maps.Point(0, (idx*46)+10), // ��������Ʈ �̹��� �� ����� ������ �»�� ��ǥ
            offset: new kakao.maps.Point(13, 37) // ��Ŀ ��ǥ�� ��ġ��ų �̹��� �������� ��ǥ
        },
        markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imgOptions),
            marker = new kakao.maps.Marker({
            position: position, // ��Ŀ�� ��ġ
           

            
            
            image: markerImage 
        });

    //marker.setMap(map); // ���� ���� ��Ŀ�� ǥ���մϴ�
    markers.push(marker);  // �迭�� ������ ��Ŀ�� �߰��մϴ�

    return marker;
}

// ���� ���� ǥ�õǰ� �ִ� ��Ŀ�� ��� �����մϴ�
function removeMarker() {
    for ( var i = 0; i < markers.length; i++ ) {
        markers[i].setMap(null);
    }   
    markers = [];
}

// �˻���� ��� �ϴܿ� ��������ȣ�� ǥ�ô� �Լ��Դϴ�
function displayPagination(pagination) {
    var paginationEl = document.getElementById('pagination'),
        fragment = document.createDocumentFragment(),
        i; 

    // ������ �߰��� ��������ȣ�� �����մϴ�
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

// �˻���� ��� �Ǵ� ��Ŀ�� Ŭ������ �� ȣ��Ǵ� �Լ��Դϴ�
// ���������쿡 ��Ҹ��� ǥ���մϴ�
function displayInfowindow(marker, title) {
    var content = '<div style="padding:5px;z-index:1;">' + title + '</div>';

    infowindow.setContent(content);
    infowindow.open(map, marker);
    
    
    
    
    
    
}

 // �˻���� ����� �ڽ� Element�� �����ϴ� �Լ��Դϴ�
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
								<h2>����</h2>
							</header>
							<ul class="dates">
								<li><span class="date">Oct <strong>26</strong></span>
									<h3>
										<a href="#">������Ʈ ���� ����</a>
									</h3>
									<p>�質��, ������, ������, �ּ�ȣ�� ������ �ƿ� ���� ����. ȯ���� ������ �����ϸ� ���̺��� ����</p></li>
								<li><span class="date">Nov <strong>2</strong></span>
									<h3>
										<a href="#">���ĳ��� ������ ������ ����</a>
									</h3>
									<p>�ڷγ�19�� ���� ���� ��Ȱ�� ���� ��Ȱ �������� ������ ���� ��������. �и������� �߿伺�� �����ϰ� ������Ʈ ����</p></li>
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
										(��)���̺�<br /> ����Ʈ�̵�����簳�߿�, �������б�<br />
										����� Tel 010-2761-3824
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