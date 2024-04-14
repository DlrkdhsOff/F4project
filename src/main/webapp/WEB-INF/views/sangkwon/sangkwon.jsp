<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../top2.jsp"%>
<html lang="ko" dir="ltr" style="">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

               		
					 
<head>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=05745e4e7f0f042822e75548fd3c3ab9"></script>
<script>
function processData(params, img, x, y, address) {
	 var mapContainer = document.getElementById('map'); // 지도를 표시할 div
	 var mapOption = {
	     center: new kakao.maps.LatLng(y, x), // 지도의 중심좌표
	     level: 3 // 지도의 확대 레벨
	 };
	 
	var map = new kakao.maps.Map(mapContainer, mapOption);
	    for (var storeName in params) {
			var storeCoordinates = params[storeName];
	    	var imageSrc = img[storeName];// 마커이미지의 옵션입니다. 마커의 좌표와 일치시킬 이미지 안에서의 좌표를 설정합니다.
	    	
	    	var imageSize = new kakao.maps.Size(40,44); // 마커이미지의 크기입니다
	    	var imageOption = {offset: new kakao.maps.Point(24, 66)};
	    
		    for (var coodx in storeCoordinates) {
		    	var coody = storeCoordinates[coodx];
		    	var add = address[coodx];
		         var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize, imageOption);
		         var markerPosition = new kakao.maps.LatLng(coody, coodx); // 각 마커의 위치로 변경합니다.

		         var marker = new kakao.maps.Marker({
		             position: markerPosition,
		             image: markerImage // 마커이미지 설정
		         });

		         marker.setMap(map);

		         var content = '<div class="customoverlay">' +
		         '  <a onclick="searchAdd(\'' + storeName + '\', \'' + add + '\')">' +
		         '    <span class="title">'+storeName+'</span>' +
		         '  </a>' +
		         '</div>';
		         var customOverlay = new kakao.maps.CustomOverlay({
		             map: map,
		             position: markerPosition,
		             content: content,
		             yAnchor: 1
		         });
		
		    }
		}     	

   
}  

 </script>
 
<style>
.map_wrap, .map_wrap * {
	margin: 0;
	padding: 0;
	font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;
	font-size: 12px;
}

.map_wrap a, .map_wrap a:hover, .map_wrap a:active {
	color: #000;
	text-decoration: none;
}

.map_wrap {
	position: relative;
	width: 100%;
	height: 500px;
}

#menu_wrap {
	position: absolute;
	top: 0;
	left: 0;
	bottom: 0;
	width: 250px;
	margin: 10px 0 30px 10px;
	padding: 5px;
	overflow-y: auto;
	background: rgba(255, 255, 255, 0.7);
	z-index: 1;
	font-size: 12px;
	border-radius: 10px;
}





.bg_white {
	background: #fff;
}

#menu_wrap hr {
	display: block;
	height: 1px;
	border: 0;
	border-top: 2px solid #5F5F5F;
	margin: 3px 0;
}

#menu_wrap .option {
	text-align: center;
}

#menu_wrap .option p {
	margin: 10px 0;
}

#menu_wrap .option button {
	margin-left: 5px;
}

#placesList li {
	list-style: none;
}

#placesList .item {
	position: relative;
	border-bottom: 1px solid #888;
	overflow: hidden;
	cursor: pointer;
	min-height: 65px;
}

#placesList .item span {
	display: block;
	margin-top: 4px;
}

#placesList .item h5, #placesList .item .info {
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}

#placesList .item .info {
	padding: 10px 0 10px 55px;
}

#placesList .info .gray {
	color: #8a8a8a;
}

#placesList .info .jibun {
	padding-left: 26px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/places_jibun.png)
		no-repeat;
}

#placesList .info .tel {
	color: #009900;
}

#placesList .item .markerbg {
	float: left;
	position: absolute;
	width: 36px;
	height: 37px;
	margin: 10px 0 0 10px;
	background:
		url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png)
		no-repeat;
}

#placesList .item .marker_1 {
	background-position: 0 -10px;
}

#placesList .item .marker_2 {
	background-position: 0 -56px;
}

#placesList .item .marker_3 {
	background-position: 0 -102px
}

#placesList .item .marker_4 {
	background-position: 0 -148px;
}

#placesList .item .marker_5 {
	background-position: 0 -194px;
}

#placesList .item .marker_6 {
	background-position: 0 -240px;
}

#placesList .item .marker_7 {
	background-position: 0 -286px;
}

#placesList .item .marker_8 {
	background-position: 0 -332px;
}

#placesList .item .marker_9 {
	background-position: 0 -378px;
}

#placesList .item .marker_10 {
	background-position: 0 -423px;
}

#placesList .item .marker_11 {
	background-position: 0 -470px;
}

#placesList .item .marker_12 {
	background-position: 0 -516px;
}

#placesList .item .marker_13 {
	background-position: 0 -562px;
}

#placesList .item .marker_14 {
	background-position: 0 -608px;
}

#placesList .item .marker_15 {
	background-position: 0 -654px;
}

#pagination {
	margin: 10px auto;
	text-align: center;
}

#pagination a {
	display: inline-block;
	margin-right: 10px;
}

#pagination .on {
	font-weight: bold;
	cursor: default;
	color: #777;
}
</style>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
<title>상권 정보</title>
                 <!-- jQuery 라이브러리를 로드합니다. -->
<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-R6J3ZGR5YV&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-197TH9EBMV&amp;l=dataLayer&amp;cx=c"></script>
<script async="" src="https://www.clarity.ms/s/0.7.20/clarity.js"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=UA-153867773-6&amp;l=dataLayer&amp;cx=c"></script>
<script type="text/javascript" async=""
	src="https://www.googletagmanager.com/gtag/js?id=G-DNG02PC9B9&amp;l=dataLayer&amp;cx=c"></script>
<meta http-equiv="Content-Security-Policy" content="img-src * data:;">
<link rel="dns-prefetch" href="https://cdn.jsdelivr.net">
<link rel="dns-prefetch" href="//cdnjs.cloudflare.com">
<!-- css 파일 -->
<!-- <link rel="preload" href="/resource/css/7a7c85e4dce32916.css"
   as="style">
<link rel="stylesheet" href="/resource/css/7a7c85e4dce32916.css"
   data-n-g=""> -->
<!-- css 파일 -->

<!-- js 파일 -->
<script defer="" nomodule=""
	src="/_next/static/chunks/polyfills-c67a75d1b6f99dc8.js"></script>
<script src="/_next/static/chunks/webpack-b916ca9bb1801b81.js" defer=""></script>
<script src="/_next/static/chunks/framework-b00110beda037b95.js"
	defer=""></script>
<script src="/_next/static/chunks/main-d171e3686c3563be.js" defer=""></script>
<script src="/_next/static/chunks/pages/_app-08600c066cedc895.js"
	defer=""></script>
<!-- <script src="/_next/static/chunks/pages/map-2ea978da696fac8d.js"
   defer=""></script> -->
<script src="/_next/static/5cBMwccKAkR0VdEl10TLV/_buildManifest.js"
	defer=""></script>
<script src="/_next/static/5cBMwccKAkR0VdEl10TLV/_ssgManifest.js"
	defer=""></script>

<script type="text/javascript" charset="UTF-8" defer=""
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
	crossorigin="anonymous">
</head>



<style data-emotion="css-global" data-s="">
html {
	line-height: 1.15;
	-webkit-text-size-adjust: 100%;
}

body {
	margin: 0;
}

main {
	display: block;
}

h1 {
	font-size: 2em;
	margin: 0.67em 0;
}

hr {
	box-sizing: content-box;
	height: 0;
	overflow: visible;
}

pre {
	font-family: monospace, monospace;
	font-size: 1em;
}

a {
	background-color: transparent;
}

abbr[title] {
	border-bottom: none;
	-webkit-text-decoration: underline;
	text-decoration: underline;
	-webkit-text-decoration: underline dotted;
	text-decoration: underline dotted;
}

b, strong {
	font-weight: bolder;
}

code, kbd, samp {
	font-family: monospace, monospace;
	font-size: 1em;
}

small {
	font-size: 80%;
}

sub, sup {
	font-size: 75%;
	line-height: 0;
	position: relative;
	vertical-align: baseline;
}

sub {
	bottom: -0.25em;
}

sup {
	top: -0.5em;
}

img {
	border-style: none;
}

button, input, optgroup, select, textarea {
	font-family: inherit;
	font-size: 100%;
	line-height: 1.15;
	margin: 0;
}

button, input {
	overflow: visible;
}

button, select {
	text-transform: none;
}

button, [type='button'], [type='reset'], [type='submit'] {
	-webkit-appearance: button;
}

button::-moz-focus-inner, [type='button']::-moz-focus-inner, [type='reset']::-moz-focus-inner,
	[type='submit']::-moz-focus-inner {
	border-style: none;
	padding: 0;
}

button:-moz-focusring, [type='button']:-moz-focusring, [type='reset']:-moz-focusring,
	[type='submit']:-moz-focusring {
	outline: 1px dotted ButtonText;
}

fieldset {
	padding: 0.35em 0.75em 0.625em;
}

legend {
	box-sizing: border-box;
	color: inherit;
	display: table;
	max-width: 100%;
	padding: 0;
	white-space: normal;
}

progress {
	vertical-align: baseline;
}

textarea {
	overflow: auto;
}

[type='checkbox'], [type='radio'] {
	box-sizing: border-box;
	padding: 0;
}

[type='number']::-webkit-inner-spin-button, [type='number']::-webkit-outer-spin-button
	{
	height: auto;
}

[type='search'] {
	-webkit-appearance: textfield;
	outline-offset: -2px;
}

[type='search']::-webkit-search-decoration {
	-webkit-appearance: none;
}

::-webkit-file-upload-button {
	-webkit-appearance: button;
	font: inherit;
}

details {
	display: block;
}

summary {
	display: -webkit-box;
	display: -webkit-list-item;
	display: -ms-list-itembox;
	display: list-item;
}

template {
	display: none;
}

[hidden] {
	display: none;
}

@font-face {
	font-family: 'Happiness Sans';
	font-style: normal;
	font-weight: 700;
	src: url('/fonts/Happiness-Sans-Bold.woff2') format('woff2'),
		url('/fonts/Happiness-Sans-Bold.woff') format('woff'),
		url(Happiness-Sans-Bold.otf) format('opentype');
	font-display: swap;
}

@font-face {
	font-family: 'Happiness Sans';
	font-style: normal;
	font-weight: 500;
	src: url('/fonts/Happiness-Sans-Regular.woff2') format('woff2'),
		url('/fonts/Happiness-Sans-Regular.woff') format('woff'),
		url(Happiness-Sans-Regular.otf) format('opentype');
	font-display: swap;
}

@font-face {
	font-family: 'Happiness-Sans-Title';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2205@1.0/Happiness-Sans-Title.woff2')
		format('woff2');
	font-weight: normal;
	font-style: normal;
	font-display: swap;
}

* {
	box-sizing: border-box;
	-webkit-touch-callout: none;
}

html {
	-webkit-tap-highlight-color: transparent;
	-webkit-font-smoothing: antialiased;
	-moz-osx-font-smoothing: auto;
}

body {
	color: #191E23;
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
		"Segoe UI", "Apple SD Gothic Neo", "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
	font-size: 14px;
}

@media screen and (max-width: 971px) {
	body {
		overscroll-behavior: none;
	}
}

@media screen and (max-width: 971px) {
	html, body {
		-webkit-user-select: none;
	}
}

h1, h2, h3, h4, h5, h6, p, span, label {
	margin: 0;
	overscroll-behavior: none -moz-user-select:none -webkit-user-select:none
		-ms-user-select:none user-select:none;
}

a, a:link, a:visited, a:hover, a:active {
	color: #191E23;
	-webkit-text-decoration: none;
	text-decoration: none;
	cursor: pointer;
}

ul, ol {
	margin: 0;
	padding: 0;
	border: 0 none;
}

ul, ol, li {
	list-style: none;
}

button {
	margin: 0;
	padding: 0;
	border: 0 none;
	background-color: transparent;
	color: black;
	text-align: left;
	outline: none;
	cursor: pointer;
}

input {
	outline: 0;
	-webkit-appearance: none;
}

@media screen and (max-width: 971px) {
	#ch-plugin.notranslate {
		display: none !important;
	}
}

#ch-plugin>div>div {
	right: 16px !important;
}

#ch-plugin-launcher>div {
	min-width: 16px !important;
	height: 16px !important;
	padding: 0px !important;
	top: 0 !important;
	right: 9px !important;
	font-weight: 700;
	font-size: 14px !important;
	border-radius: 4px !important;
	background-color: #ff545b;
}
</style>
<style>
@media screen and (min-width: 972px) {
	.css-1c8isl7 {
		-webkit-box-pack: center;
		justify-content: center;
		max-height: 78px;
		padding: 0px;
		background-color: rgb(255, 255, 255);
		border-bottom: 1px solid rgb(228, 230, 231);
	}
}

.css-1c8isl7 {
	position: fixed;
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	top: 0px;
	width: 100%;
	z-index: 150;
	min-height: 64px;
	padding: 0px 20px;
	background-color: rgb(255, 255, 255);
	transition: background-color 200ms ease 0s;
	border-bottom: 1px solid rgb(228, 230, 231);
}

* {
	box-sizing: border-box;
}

body {
	color: #191E23;
	font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
		"Segoe UI", "Apple SD Gothic Neo", "Apple Color Emoji",
		"Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
	font-size: 14px;
}

@media screen and (min-width: 1281px) {
	.css-ppjb5q {
		max-width: 1280px;
	}
}

.css-ppjb5q {
	width: 100%;
	height: 100%;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
}

.css-1dbjdmt {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	flex: 1 1 0%;
	padding-bottom: 1px;
}

a, a:link, a:visited, a:hover, a:active {
	color: #191E23;
	-webkit-text-decoration: none;
	text-decoration: none;
	cursor: pointer;
}

a {
	background-color: transparent;
}

@media screen and (max-width: 971px) {
	html, body {
		-webkit-user-select: none;
	}
}

.css-12xca8l {
	position: relative;
	top: 3px;
}

div {
	display: block;
}

img {
	border-style: none;
}

img[속성 스타일] {
	width: 99px;
	aspect-ratio: auto 99/25;
	height: 25px;
}

img {
	overflow-clip-margin: content-box;
	overflow: clip;
}

.css-1uif3m8 {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
}

ul, ol {
	margin: 0;
	padding: 0;
	border: 0 none;
}

ul, ol, li {
	list-style: none;
}

ul {
	display: block;
	list-style-type: disc;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

/*   .css-t6ly1j {
   display: none ;
}  */
ul, ol, li {
	list-style: none;
}

.css-c9fies {
	display: flex;
	flex-direction: row;
}

.css-16zu9k {
   position: relative;
   display: flex;
   flex-direction: row;
   padding: 8px;
   font-size: 15px;
   font-weight: bold;
   line-height: normal;
   color: rgb(63, 70, 76);
   background-color: rgb(255, 255, 255);
   border-radius: 12px;
   border: 0px !important;
}
}

button {
	margin: 0;
	padding: 0;
	border: 0 none;
	background-color: transparent;
	color: black;
	text-align: left;
	outline: none;
	cursor: pointer;
}

.css-kwi5kk:hover {
	
}

.css-kwi5kk {
	position: relative;
	display: flex;
	flex-direction: row;
	padding: 12px;
	font-size: 14px;
	font-weight: 500;
	line-height: normal;
	color: rgb(0, 138, 148);
	background-color: rgb(230, 244, 245);
	border-radius: 12px;
}

@media screen and (min-width: 972px) {
	.css-19kqqz7 {
		margin-left: 0px;
	}
}

.css-19kqqz7 {
	height: 78px;
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	margin-left: 16px;
}

.css-jalj31:hover {
	color: rgb(115, 121, 126);
}

.css-jalj31:hover {
	background-color: rgb(245, 245, 245);
}

.css-jalj31 {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	height: 41px;
	padding: 0px 12px;
	border-radius: 12px;
	color: rgb(115, 121, 126);
	font-size: 14px;
	font-weight: 500;
	line-height: normal;
}

.css-1oli899:hover {
	color: rgb(255, 255, 255);
	background-color: rgb(0, 112, 120);
}

.css-1oli899 {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	height: 41px;
	padding: 0px 12px;
	border-radius: 12px;
	font-size: 14px;
	font-weight: 500;
	line-height: normal;
	color: rgb(255, 255, 255);
	background-color: rgb(0, 138, 148);
}

.css-1dvrgo5 {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	width: 100%;
}

.css-1bgtemj {
	display: flex;
	flex-direction: column;
	-webkit-box-flex: 1;
	flex-grow: 1;
	height: calc(100vh - 81px);
}

@media screen and (min-width: 972px) {
	.css-1iwk1g9 {
		padding-bottom: 0;
	}
}

.css-1iwk1g9 {
	position: relative;
	display: -webkit-box;
	display: -webkit-flex;
	display: -ms-flexbox;
	display: flex;
	-webkit-flex-direction: column;
	-ms-flex-direction: column;
	flex-direction: column;
}

.css-it8fze {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	gap: 4px;
}

@media screen and (min-width: 972px) {
	.css-2fksrn {
		top: 80px;
	}
}

.css-2fksrn {
	position: fixed;
	top: 78px;
	left: 0px;
	z-index: 121;
	display: flex;
	flex-direction: row;
	width: 100%;
	height: 70px;
	padding: 13px 0px 13px 20px;
	border-bottom: 1px solid rgb(228, 230, 231);
	background-color: rgb(255, 255, 255);
}

.css-gz9ai2 {
	position: relative;
	width: 320px;
	height: 100%;
}

.css-i5sibr {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	width: 100%;
	height: 44px;
	border: 2px solid rgb(39, 39, 39);
}

.css-lbtgsv {
	margin: 0px 10px;
}

img {
	border-style: none;
}

.css-1nzg8xa {
	z-index: 3;
	width: 100%;
	height: 100%;
	border: none;
	font-size: 16px;
	letter-spacing: -0.56px;
	line-height: 1.5;
	font-weight: 700;
}

input {
	outline: 0;
	-webkit-appearance: none;
}

.css-1dj7ocy {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	width: calc(100% - 320px);
	height: 100%;
	padding-right: 20px;
	overflow-x: auto;
}

@media screen and (min-width: 972px) {
	.css-14381ua {
		height: calc(100% - 150px);
	}
}

.css-14381ua {
	width: 360px;
	height: calc(100% - 134px);
	position: absolute;
	bottom: 0px;
	left: -360px;
	z-index: 10;
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
	transition: all 400ms ease 0s;
}

.css-19gubhv {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	width: 100%;
	white-space: nowrap;
}

.css-14dxogm {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
}

.css-7059ux {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	gap: 8px;
	padding-left: 20px;
	padding-right: 8px;
}

.css-17ny7wh {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	height: 40px;
	margin: 0px;
	cursor: pointer;
	border: 0px;
	border-radius: 20px;
	background-color: rgb(245, 245, 245);
	padding: 10px;
}

.css-d1a1p1 p {
	display: flex;
	flex-direction: row;
	align-items: flex-end;
}

.css-1ol47x3 {
	pointer-events: none;
	display: flex;
	padding: 0px 6px;
	user-select: none;
	font-size: 14px;
	color: rgb(63, 70, 76);
	font-weight: bolder;
}

.css-1iv2r3x {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	gap: 8px;
}

.css-kcjb0q {
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	padding: 0px 20px;
}

.css-13qf9ku {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	color: rgb(150, 155, 158);
	border: 0px;
}

button {
	margin: 0;
	padding: 0;
	border: 0 none;
	background-color: transparent;
	color: black;
	text-align: left;
	outline: none;
	cursor: pointer;
}

@media screen and (min-width: 972px) {
	.css-14381ua {
		height: calc(100% - 150px);
	}
}

.css-14381ua {
	width: 360px;
	height: calc(100% - 134px);
	position: absolute;
	bottom: 0px;
	left: -360px;
	z-index: 10;
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
	transition: all 400ms ease 0s;
}

.css-zxsb69 {
	position: relative;
	width: 100%;
	height: 100%;
}

.css-zayinr {
	position: absolute;
	top: 50%;
	right: -21px;
	z-index: 120;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	display: none;
	width: 22px;
	height: 48px;
	border: 1px solid rgb(228, 230, 231);
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	background-color: rgb(255, 255, 255);
	transform: translateY(-50%);
}

button {
	appearance: auto;
	font-style:;
	font-variant-ligatures:;
	font-variant-caps:;
	font-variant-numeric:;
	font-variant-east-asian:;
	font-variant-alternates:;
	font-variant-position:;
	font-weight:;
	font-stretch:;
	font-size:;
	font-family:;
	font-optical-sizing:;
	font-kerning:;
	font-feature-settings:;
	font-variation-settings:;
	text-rendering: auto;
	color: buttontext;
	letter-spacing: normal;
	word-spacing: normal;
	line-height: normal;
	text-transform: none;
	text-indent: 0px;
	text-shadow: none;
	display: inline-block;
	text-align: center;
	align-items: flex-start;
	cursor: default;
	box-sizing: border-box;
	background-color: buttonface;
	margin: 0em;
	padding-block: 1px;
	padding-inline: 6px;
	border-width: 2px;
	border-style: outset;
	border-color: buttonborder;
	border-image: initial;
}

button, [type='button'], [type='reset'], [type='submit'] {
	-webkit-appearance: button;
}

button, input, optgroup, select, textarea {
	font-family: inherit;
	font-size: 100%;
	line-height: 1.15;
	margin: 0;
}

.css-1rxfh9v {
	display: flex;
	flex-direction: row;
	-webkit-box-align: center;
	align-items: center;
	height: 40px;
	margin: 0px;
	cursor: pointer;
	border: 0px;
	border-radius: 20px;
	padding: 10px;
	background-color: rgb(0, 112, 120);
}

.css-1nam4ol {
	pointer-events: none;
	display: flex;
	padding: 0px 6px;
	user-select: none;
	font-size: 14px;
	color: rgb(255, 255, 255);
	font-weight: 500;
}

.css-12xitn8 {
	width: 1px;
	height: 12px;
	background-color: rgb(228, 230, 231);
	margin: 0px 8px 0px 0px;
}

@media screen and (min-width: 972px) {
	.css-14381ua {
		height: calc(100% - 150px);
	}
	.css-xu6rln {
		height: calc(100% - 150px);
	}
}

.css-xu6rln {
	width: 360px;
	height: calc(100% - 147px);
	position: absolute;
	bottom: 0px;
	left: 0px;
	z-index: 10;
	background-color: rgb(255, 255, 255);
	box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
	transition: all 400ms ease 0s;
}

.css-146fyfh {
	position: absolute;
	top: 0px;
	z-index: 1;
	width: 100%;
	height: 100%;
}

.css-1ryg3vb {
	position: relative;
	width: 100%;
	height: 100%;
	overflow: hidden;
}

.css-1eoueix {
	position: sticky;
	top: 0px;
	z-index: 1;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: justify;
	justify-content: space-between;
	-webkit-box-align: center;
	align-items: center;
	height: 64px;
	padding: 0px 20px;
	background-color: rgb(255, 255, 255);
}

.css-bjn8wh {
	position: relative;
}

.css-1czr60j {
	position: relative;
	z-index: 10;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	height: 36px;
	padding-left: 10px;
	padding-right: 12px;
	border: 1px solid rgb(238, 238, 238);
	border-radius: 3px;
}

.css-1czr60j span {
	padding-right: 8px;
}

.css-1con5or {
	position: fixed;
	top: 24px;
	right: 24px;
	z-index: 10000002;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	width: 40px;
	height: 40px;
	border-radius: 6px;
	background-color: rgba(25, 30, 35, 0.8);
}

.css-1uwow4s {
	font-size: 16px;
	letter-spacing: -0.56px;
	line-height: 1.5;
	font-weight: 700;
}

.css-1czv3nb {
	font-size: 16px;
	letter-spacing: -0.56px;
	line-height: 1.5;
}

.css-yz1nei {
	margin-top: 30px;
}

.css-yedpkc {
	position: absolute;
	top: 50%;
	right: -21px;
	z-index: 120;
	display: flex;
	flex-direction: row;
	-webkit-box-pack: center;
	justify-content: center;
	-webkit-box-align: center;
	align-items: center;
	width: 22px;
	height: 48px;
	border: 1px solid rgb(228, 230, 231);
	border-top-right-radius: 5px;
	border-bottom-right-radius: 5px;
	background-color: rgb(255, 255, 255);
	transform: translateY(-50%);
}

.css-1ckmrpw {
	left: 24px;
	bottom: 24px;
	z-index: 10000002;
	width: 349px;
	height: 150px;
	position: fixed !important;
}

.css-q4g5r4 {
	position: relative;
	flex: 1 1 0%;
	margin-top: 69px;
	height: calc(100vh - 150px);
}

@media screen and (min-width: 972px) {
	.css-y8wr9i {
		padding-top: 78px;
	}
}

.css-y8wr9i {
	flex: 1 1 0%;
}

.css-1chqozv {
	position: absolute;
	top: 0px;
	z-index: 1;
	display: flex;
	flex-direction: column;
	width: 100%;
	height: 100%;
	padding: 10px 16px;
	overflow: auto;
}

.css-1tisno {
	display: flex;
	flex-direction: column;
	padding: 96px 20px 0px;
	text-align: center;
}


.css-xu6rln {
   width: 360px;
   height: calc(100% - 134px);
   position: absolute;
   bottom: 0px;
   left: 0px;
   z-index: 10;
   background-color: rgb(255, 255, 255);
   box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
   transition: all 400ms ease 0s;
}

.css-146fyfh {
   position: absolute;
   top: 0px;
   z-index: 1;
   width: 100%;
   height: 100%;
}

.css-1ryg3vb {
   position: relative;
   width: 100%;
   height: 100%;
   overflow: hidden;
}

.css-1eoueix {
   position: sticky;
   top: 0px;
   z-index: 1;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   -webkit-box-align: center;
   align-items: center;
   height: 64px;
   padding: 0px 20px;
   background-color: rgb(255, 255, 255);
}

.css-bjn8wh {
   position: relative;
}

.css-1czr60j {
   position: relative;
   z-index: 10;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   height: 36px;
   padding-left: 10px;
   padding-right: 12px;
   border: 1px solid rgb(238, 238, 238);
   border-radius: 3px;
}

.css-1czr60j span {
   padding-right: 8px;
}

.css-1con5or {
   position: fixed;
   top: 24px;
   right: 24px;
   z-index: 10000002;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   width: 40px;
   height: 40px;
   border-radius: 6px;
   background-color: rgba(25, 30, 35, 0.8);
}

.css-1uwow4s {
   font-size: 16px;
   letter-spacing: -0.56px;
   line-height: 1.5;
   font-weight: 700;
}

.css-1czv3nb {
   font-size: 16px;
   letter-spacing: -0.56px;
   line-height: 1.5;
}

.css-yz1nei {
   margin-top: 16px;
}

.css-yedpkc {
   position: absolute;
   top: 50%;
   right: -21px;
   z-index: 120;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   width: 22px;
   height: 48px;
   border: 1px solid rgb(228, 230, 231);
   border-top-right-radius: 5px;
   border-bottom-right-radius: 5px;
   background-color: rgb(255, 255, 255);
   transform: translateY(-50%);
}

.css-1ckmrpw {
   left: 24px;
   bottom: 24px;
   z-index: 10000002;
   width: 349px;
   height: 150px;
   position: fixed !important;
}

html, h1, h2, h3, h4, h5, h6, form, fieldset, img {
    margin: 10px;
    padding: 0;
    border: 0;
}

.css-q4g5r4 {
   position: relative;
   flex: 1 1 0%;
   margin-top: 69px;
   height: calc(100vh - 150px);
}

@media screen and (min-width: 972px) {
   .css-y8wr9i {
      padding-top: 78px;
   }
   }


.css-y8wr9i {
   flex: 1 1 0%;
}

.css-1chqozv {
   position: absolute;
   top: 0px;
   z-index: 1;
   display: flex;
   flex-direction: column;
   width: 100%;
   height: 100%;
   padding: 10px 16px;
   overflow: auto;
}

.css-1tisno {
   display: flex;
   flex-direction: column;
   padding: 96px 20px 0px;
   text-align: center;
}




/* 텍스트 필드 css */      
    
   
.css-gflgma {
    position: absolute;
    inset: 44px 0px 0px;
    /* z-index: 2; */
    height: auto;
    padding-top: 16px;
    padding-bottom: 150px;
    border: 1px solid rgb(189, 189, 189);
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.16) 0px 0px 4px 0px;
    overflow-y: auto;
    display:none;
}




/* 텍스트 필드 css */      
.css-gflgma.active {
    display: block; /* 클릭 시 나타남 */
}



/* 텍스트 필드 css */      
.css-sdeikj {
    display: flex;
    flex-direction: row;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    padding: 0px 20px;
}



/* 텍스트 필드 css */      
.css-kxjaqe {
    font-size: 12px;
    line-height: 1.4;
    font-weight: 700;
    letter-spacing: -0.3px;
}


/* 텍스트 필드 css */      
.css-xoypuk {
    font-size: 12px;
    line-height: 1.5;
    letter-spacing: -0.3px;
}

/* 텍스트 필드 css */  
button {
    margin: 0;
    padding: 0;
    border: 0 none;
    background-color: transparent;
    color: black;
    text-align: left;
    outline: none;
    cursor: pointer;
}

/* 텍스트 필드 css */  
.css-iqoq9n {
    margin-top: 20px;
}

/* 텍스트 필드 css */  
.css-7b1z4g {
    display: flex;
    flex-direction: row;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: flex-start;
    padding: 7px 16px;
    background-color: rgb(255, 255, 255);
}
/* 텍스트 필드 css */  
.css-1e9p9gv {
    display: flex;
    flex-direction: row;
    width: calc(100% - 16px);
    -webkit-box-align: center;
    align-items: center;
}

/* 텍스트 필드 css */  
.css-18k9riu {
    width: 24px;
    height: 24px;
    border-radius: 8px;
    border: 1px solid rgb(228, 230, 231);
}

/* 텍스트 필드 css */  
.css-8z1ej0 {
    display: flex;
    flex-direction: column;
    width: calc(100% - 40px);
    margin-left: 8px;
}


/* 텍스트 필드 css */  
.css-1iet6e5 {
    font-size: 14px;
    letter-spacing: -0.25px;
    line-height: 1.4;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

/* 텍스트 필드 css */  
.css-1tapqc3 {
    font-size: 14px;
    letter-spacing: -0.25px;
    line-height: 1.4;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}



/* 텍스트 필드 css */  
img {
    overflow-clip-margin: content-box;
    overflow: clip;
}

/*search result*/      
body {
    color: #191E23;
    font-family: Pretendard,-apple-system,BlinkMacSystemFont,system-ui,"Segoe UI","Apple SD Gothic Neo","Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol",sans-serif;
    font-size: 14px;
}




element.style {
    box-sizing: border-box;
    direction: ltr;
    height: 600px;
    position: relative;
    width: 360px;
    will-change: transform;
    overflow: auto;
}

element.style {
    height: 3px;
    width: 100%;
    background-color: rgb(238, 238, 238);
    position: absolute;
    bottom: 0;
}

element.style {
    width: auto;
    height: auto;
    max-width: 360px;
    max-height: 696px;
    overflow: hidden;
    position: relative;
}


.ReactVirtualized__Grid__innerScrollContainer {
    box-sizing: border-box;
    direction: ltr;
    height: auto; /* 높이를 auto로 설정하여 내용에 맞게 자동으로 조정되도록 함 */
    position: relative;
    width: 360px; /* 너비는 필요에 따라 조정 */
    will-change: transform;
    overflow: visible; /* 스크롤바가 필요 없다면 visible로 설정, 내용이 많을 경우 auto를 유지 */
}


element.style {
    height: 106px;
    left: 0px;
    position: absolute;
    top: 0px;
    width: 100%;
}

.css-2jimq4::after {
    content: "";
    width: calc(100% - 1px);
    height: 5px;
    position: absolute;
    bottom: 0px;
  
    background-color: rgb(238, 238, 238);
}

.css-bbjmfd {
    display: flex;
    flex-direction: row;
    position: relative;
    width: 100%;
    padding: 16px 0px;
}


button, [type='button'], [type='reset'], [type='submit'] {
    -webkit-appearance: button;
}
button {
    margin: 0;
    padding: 0;
    border: 0 none;
    background-color: transparent;
    color: black;
    text-align: left;
    outline: none;
    cursor: pointer;
}
button, select {
    text-transform: none;
}
button, input {
    overflow: visible;
}
button, input, optgroup, select, textarea {
    font-family: inherit;
    font-size: 100%;
    line-height: 1.15;
    margin: 0;
}


.css-1h09m9f {
    display: flex;
    flex-direction: row;
    width: 100%;
}

.css-1appghj {
    position: relative;
    border-radius: 24px;
    border: 0px solid rgb(237, 237, 237);
}

element.style {
    box-sizing: border-box;
    display: inline-block;
    overflow: hidden;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    position: relative;
    max-width: 100%;
}



h1, h2, h3, h4, h5, h6, p, span, label {

    overscroll-behavior: none -moz-user-select:none -webkit-user-select:none -ms-user-

}


element.style {
    box-sizing: border-box;
    display: block;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    max-width: 100%;
}

element.style {
    position: absolute;
    inset: 0px;
    box-sizing: border-box;
    padding: 0px;
    border: none;
    margin: auto;
    display: block;
    width: 0px;
    height: 0px;
    min-width: 100%;
    max-width: 100%;
    min-height: 100%;
    max-height: 100%;
}

.css-ivka53 {
    object-fit: cover;
    position: relative;
    border: 0.5px solid rgb(237, 237, 237);
    border-radius: 24px;
}



element.style {
    display: block;
    max-width: 100%;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
}


.css-14ceppl {
    position: relative;
    width: calc(100% - 78px);
    margin-left: 16px;
        margin-top: -5px;
}

.css-1vkjk90 {
    width: 100%;
    font-weight: 700;
    line-height: 1.14;
    letter-spacing: -0.25px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}


.css-1u8skbo {
    margin: 4px 0px;
}

.css-1hqidh4 {
    display: -webkit-box;
    display: -webkit-flex;
    display: -ms-flexbox;
    display: flex;
    -webkit-flex-direction: row;
    -ms-flex-direction: row;
    flex-direction: row;
    -webkit-align-items: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
}

.css-1nybzwc {
    margin-top: 2px;
    font-size: 14px;
    font-weight: 400;
    line-height: 17px;
    letter-spacing: -0.408px;
    color: rgb(45, 52, 60);
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.css-1yn5oca {
    width: 1px;
    height: 12px;
    background-color: rgb(228, 230, 231);
    margin: 0px 6px;
}


.css-1nybzwc {
    margin-top: 2px;
    font-size: 10px;
    font-weight: 400;
    line-height: 17px;
    letter-spacing: -0.408px;
    color: rgb(45, 52, 60);
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}

.css-pfy4cj {
 display: flex;
    position: relative;
    border: 0.5px solid rgb(237, 237, 237);
    border-radius: 24px;
      justify-content: center; /* 가로 정렬 */
  align-items: center; /* 세로 정렬 */
  height: fit-content;
}

.css-1vxgqxw {
    width: 64px;
    height: 64px;
    background-color: rgb(255, 255, 255);
    mask-image: -webkit-radial-gradient(center, white, black);
    border-radius: 24px;
    overflow: hidden;
}

.css-zvnbei {
    width: 100%;
    height: 100%;
    object-fit: contain;
    border-radius: inherit;
    transition: all 0.2s linear 0s;
    max-width: 64px;
}

img {
    border-style: none;
}
* {
    box-sizing: border-box;
    -webkit-touch-callout: none;
}
img[Attributes Style] {
    width: 64px;
    aspect-ratio: auto 64 / 64;
    height: 64px;
}

img {
    overflow-clip-margin: content-box;
    overflow: clip;
}

.css-1vxgqxw {
  display: flex;
  justify-content: flex-start; /* 이미지를 왼쪽으로 정렬 */
  align-items: center; /* 세로 중앙 정렬 */
 
}


.css-1vxgqxw img {
  /* 이미지 스타일을 필요에 맞게 추가 */
  max-width: 100%; /* 이미지가 틀보다 크면 틀에 맞게 조절 */
  max-height: 100%; /* 이미지가 틀보다 크면 틀에 맞게 조절 */
   margin-left:  1px;
}

.css-xu6rln {
    width: 360px;
    height: calc(100% - 138px);
    position: absolute;
    bottom: 0px;
    left: 0px;
    z-index: 10;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
    transition: all 400ms ease 0s;
}

.css-zxsb69 {
    position: relative;
    width: 100%;
    height: 100%;
}

.css-1tisno {
    display: flex;
    flex-direction: column;
    padding: 96px 20px 0px;
    text-align: center;
}


.css-1czv3nb {
    font-size: 16px;
    letter-spacing: -0.56px;
    line-height: 1.5;
}

.css-yz1nei {
    margin-top: 16px;
}

element.style {
    box-sizing: border-box;
    display: inline-block;
    overflow: hidden;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    position: relative;
    max-width: 100%;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
     margin-inline-end: 0px;

}

    
.css-1eoueix {
    position: sticky;
    top: 0px;
    z-index: 1;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: justify;
    justify-content: space-between;
    -webkit-box-align: center;
    align-items: center;
    height: 64px;
    padding: 0px 20px;
    background-color: rgb(255, 255, 255);
}



.css-bjn8wh {
    position: relative;
}



.css-1czr60j {
    position: relative;
    z-index: 10;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    height: 36px;
    padding-left: 10px;
    padding-right: 12px;
    border: 1px solid rgb(238, 238, 238);
    border-radius: 3px;
}


.css-1czr60j span {
    padding-right: 8px;
}



element.style {
    box-sizing: border-box;
    display: inline-block;
    overflow: hidden;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    position: relative;
    max-width: 100%;
}

element.style {
    position: absolute;
    inset: 0px;
    box-sizing: border-box;
    padding: 0px;
    border: none;
    margin: auto;
    display: block;
    width: 0px;
    height: 0px;
    min-width: 100%;
    max-width: 100%;
    min-height: 100%;
    max-height: 100%;
}


element.style {
    box-sizing: border-box;
    display: block;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    max-width: 100%;
}


element.style {
    display: block;
    max-width: 100%;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
}


button {
    margin: 0;
    padding: 0;
    border: 0 none;
    background-color: transparent;
    color: black;
    text-align: left;
    outline: none;
    cursor: pointer;
}



.css-143khj {
    position: absolute;
    inset: 0px;
    z-index: 0;
    cursor: default;
}




button, [type='button'], [type='reset'], [type='submit'] {
    -webkit-appearance: button;
}


.css-k641c8 {
 display: none;
    position: absolute;
    z-index: 11;
    top: 42px;
    left: -16px;
    min-width: 360px;
    padding: 24px 12px 24px 16px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 2px 4px 0px;
    border: 0px;
    border-radius: 0px;
}



.css-1cy87ys {
    font-size: 16px;
    line-height: 1.5;
    font-weight: 700;
}


.css-1a2pvgx {
    margin-top: 4px;
    color: rgb(63, 70, 76);
}

/*lable contents */
.css-sy4kze {
    display: flex;
    flex-flow: wrap;
    margin-top: 16px;
}


.css-sy4kze button:not(:last-of-type) {
    margin-right: 8px;
    margin-bottom: 8px;
}



.css-mlcrk0 {
    padding: 0px 6px;
    user-select: none;
    font-size: 14px;
    color: rgb(0, 112, 120);
    font-weight: 500;
}


.css-sy4kze button:not(:last-of-type) {
    margin-right: 8px;
    margin-bottom: 8px;
}

.css-1cs754p {
    display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    height: 40px;
    margin: 0px;
    cursor: pointer;
    border: 0px;
    border-radius: 20px;
    background-color: rgb(245, 245, 245);
    padding: 10px;
}


.css-1vsc68 {
    padding: 0px 6px;
    user-select: none;
    font-size: 14px;
    color: rgb(63, 70, 76);
    font-weight: normal;
}

.css-1cs754p {
    display: flex;
    flex-direction: row;
    -webkit-box-align: center;
    align-items: center;
    height: 40px;
    margin: 0px;
    cursor: pointer;
    border: 0px;
    border-radius: 20px;
    background-color: rgb(245, 245, 245);
    padding: 10px;
}

.css-zxsb69 {
    position: relative;
    width: 100%;
    height: 100%;
}

.css-1tisno {
    display: flex;
    flex-direction: column;
    padding: 96px 20px 0px;
    text-align: center;
}


.css-1czv3nb {
    font-size: 16px;
    letter-spacing: -0.56px;
    line-height: 1.5;
   
}

.css-yz1nei {
    margin-top: 16px;
}

element.style {
    box-sizing: border-box;
    display: inline-block;
    overflow: hidden;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    position: relative;
    max-width: 100%;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
     margin-inline-end: 0px;

}



.css-xu6rln {
    width: 360px;
    height: calc(100% - 134px);
    position: absolute;
    bottom: 0px;
    left: 0px;
    z-index: 10;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
    transition: all 400ms ease 0s;
}



.css-pfy4cj {
 display: flex;
    position: relative;
    border: 0.5px solid rgb(237, 237, 237);
    border-radius: 24px;
      justify-content: center; /* 가로 정렬 */
  align-items: center; /* 세로 정렬 */
  height: fit-content;
}

.css-1vxgqxw {
    width: 64px;
    height: 64px;
    background-color: rgb(255, 255, 255);
    mask-image: -webkit-radial-gradient(center, white, black);
    border-radius: 24px;
    overflow: hidden;
}

.css-zvnbei {
    width: 100%;
    height: 100%;
    object-fit: contain;
    border-radius: inherit;
    transition: all 0.2s linear 0s;
    max-width: 64px;
}

img {
    border-style: none;
}
* {
    box-sizing: border-box;
    -webkit-touch-callout: none;
}
img[Attributes Style] {
    width: 64px;
    aspect-ratio: auto 64 / 64;
    height: 64px;
}

img {
    overflow-clip-margin: content-box;
    overflow: clip;
}

.css-1vxgqxw {
  display: flex;
  justify-content: flex-start; /* 이미지를 왼쪽으로 정렬 */
  align-items: center; /* 세로 중앙 정렬 */
 
}


.css-1vxgqxw img {
  /* 이미지 스타일을 필요에 맞게 추가 */
  max-width: 100%; /* 이미지가 틀보다 크면 틀에 맞게 조절 */
  max-height: 100%; /* 이미지가 틀보다 크면 틀에 맞게 조절 */
   margin-left:  1px;
}

.css-xu6rln {
    width: 360px;
    height: calc(100% - 134px);
    position: absolute;
    bottom: 0px;
    left: 0px;
    z-index: 10;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(39, 39, 39, 0.4) 0px 2px 11px 0px;
    transition: all 400ms ease 0s;
}

.css-zxsb69 {
    position: relative;
    width: 100%;
    height: 100%;
}

.css-1tisno {
    display: flex;
    flex-direction: column;
    padding: 96px 20px 0px;
    text-align: center;
}


.css-1czv3nb {
    font-size: 16px;
    letter-spacing: -0.56px;
    line-height: 1.5;
}

.css-yz1nei {
    margin-top: 16px;
}

element.style {
    box-sizing: border-box;
    display: inline-block;
    overflow: hidden;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
    position: relative;
    max-width: 100%;
}

p {
    display: block;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
     margin-inline-end: 0px;

}

.customoverlay {
    position: relative;
    bottom: 68px;
    border-radius: 6px;
    border: 1px solid #ccc;
    border-bottom: 2px solid #ddd;
    float: left;
}

.customoverlay:nth-of-type(n) {
    border: 0;
    box-shadow: 0px 6px 13px #888;
}

.customoverlay a {
    display: block;
    text-decoration: none;
    color: #000;
    text-align: center;
    border-radius: 6px;
    font-size: 14px;
    font-weight: bold;
    overflow: hidden;
    background: #d95050 url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/arrow_white.png) no-repeat right 14px center;
}

.customoverlay .title {
    display: block;
    text-align: center;
    background: #fff;
    margin-right: 30px;
    padding: 9px 14px;
    font-size: 12px;
    font-weight: bold;
}

.customoverlay:after {
    content: '';
    position: absolute;
    margin-left: -5px;
    left: 51%;
    bottom: -12px;
    width: 22px;
    height: 12px;
    background: url(https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png);
}
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}


.css-1vsc68 {
    padding: 0px 6px;
    user-select: none;
    font-size: 14px;
    color: rgb(63, 70, 76);
    font-weight: bolder;
}
.css-1cs754p {
    position: relative;
    z-index: 10;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    height: 36px;
    padding-left: 10px;
    padding-right: 12px;
    border: 1px solid #333;
    border-radius: 20px;
}
.css-1cs754p span {
    padding-right: 8px;
    font-weight: bold;
}

.css-1czr60j {
    position: relative;
    z-index: 10;
    display: flex;
    flex-direction: row;
    -webkit-box-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    align-items: center;
    height: 36px;
    padding-left: 10px;
    padding-right: 12px;
    border: 2px solid #ccc;
    border-radius: 3px;
    font-weight: 500;
}

element.style {
    display: block;
    max-width: 100%;
    width: initial;
    height: initial;
    background: none;
    opacity: 1;
    border: 0px;
    margin: 0px;
    padding: 0px;
   
}


button {
    margin: 0;
    padding: 0;
    border: 0 none;
    background-color: transparent;
    color: black;
    text-align: left;
    outline: none;
    cursor: pointer;
}



.css-143khj {
    position: absolute;
    inset: 0px;
    z-index: 0;
    cursor: default;
}




button, [type='button'], [type='reset'], [type='submit'] {
    -webkit-appearance: button;
}



.css-k641c8.show {
    display: block;
}


.css-k641c8 {
 display: none;
    position: absolute;
    z-index: 11;
    top: 42px;
    left: -16px;
    min-width: 360px;
    padding: 24px 12px 24px 16px;
    background-color: rgb(255, 255, 255);
    box-shadow: rgba(0, 0, 0, 0.1) 0px 2px 4px 0px;
    border: 0px;
    border-radius: 0px;
    height: 500px;
}

.css-mlcrk0 {
    padding: 0px 6px;
    user-select: none;
    font-size: 14px;
    color: rgb(0, 112, 120);
    font-weight: bolder;
    
}

</style>

<style>
    ::placeholder {
        font-size: 80%;
    }
    
    
.category-button {
   background-color: #e0e0e0; /* 기본 색상 */
   border: none;
   padding: 10px;
   margin: 5px;
   cursor: pointer;
}

.category-button.active {
   background-color: #00FF00; /* 활성화(클릭) 시 색상 */
}    

.category-button.disabled {
   cursor: not-allowed;
}    
</style>


<body style="overflow: hidden;">
   <div id="__next" data-reactroot="">
      <div class="css-1iwk1g9">
         <main class="css-y8wr9i">
         <div>
            <div class="css-1bgtemj">
               <div class="css-2fksrn">
                  <div class="css-gz9ai2">
                     <div class="css-i5sibr">
     					<img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMjQiIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgMCAyNCAyNCIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPHBhdGggZD0iTTAgMGgyNHYyNEgweiIvPgogICAgICAgIDxnIHRyYW5zZm9ybT0idHJhbnNsYXRlKDUgNSkiIHN0cm9rZT0iIzJDMkMyQyIgc3Ryb2tlLXdpZHRoPSIyIj4KICAgICAgICAgICAgPGNpcmNsZSBjeD0iNSIgY3k9IjUiIHI9IjQiLz4KICAgICAgICAgICAgPHBhdGggZD0ibTcuNDA4IDguMjI5IDUuODQ1IDYuMjYxIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K"
                           width="24" height="24" alt="" class="css-lbtgsv">
                               <input type="text" placeholder="브랜드 또는 지역 이름을 검색해보세요!"
      							class="css-1nzg8xa" value="" onkeydown="handleKeyDown(event)" id="searchString"  name="searchString">  
                     </div>
	 <!--텍스트 필드 부분 -->
                     <div class="css-gflgma">
	                     <!-- 텍스트 필드 head -->
	                     <div class="css-sdeikj">
		                     <p class="css-kxjaqe">최근 검색 기록</p>
		                     <button type="button" class="css-xoypuk">기록 지우기</button>
                         <!-- 텍스트 필드 head -->         
                         </div>
                         <!-- 텍스트 필드 body -->        
                         <div class="css-iqoq9n">
                  			<c:set var="index" value="0" />  
                               <!-- 텍스트 필드 body  button  --> 
                               <c:forEach var="keyword" items=" ${sessionScope.searchHistory}">   
                               	<div class="css-7b1z4g">
                                       		<!-- 
	                                       		keyword로 el을 쓰면 객체가 없기에 에러가난다 그러므로
	                                			{sessionScope.searchHistory 이값이 list니깐 
	                                			이거를 직접 가져와서 임이의 변수를 만들어서 0~n 번까지
	                                			list의 value 값을 직접 불러오는 방법으로 했다 그래서 
	                                			중간에 텍스트필드에 [값 이런게 출력이 안된다. 
                                			-->
						       <button class="css-1e9p9gv" data-search-string="${searchHistory[index]}" onclick="handleButtonClick(event)">
						         		 <img src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+aWNvbi8yNC9zZWFyY2gva2V5d29yZDwvdGl0bGU+CiAgICA8ZyBpZD0iaWNvbi8yNC9zZWFyY2gva2V5d29yZCIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgaWQ9Imljb24iIGZpbGwtcnVsZT0ibm9uemVybyI+CiAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUiIGZpbGw9IiNGNUY1RjUiIHg9IjAiIHk9IjAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgcng9IjgiPjwvcmVjdD4KICAgICAgICAgICAgPHBhdGggZD0iTTEwLjUsNS45OTk5OTk4OCBDMTIuMTQxNzYyMiw1Ljk5OTYyODE3IDEzLjY1MzQzNTgsNi44OTMzODc1NyAxNC40NDQzNzYxLDguMzMyMDY2MzYgQzE1LjIzNTMxNjQsOS43NzA3NDUxNiAxNS4xNzk5ODQ2LDExLjUyNTk5NDggMTQuMywxMi45MTIgTDE4LjEwNCwxNi43NjEgTDE2LjY5NCwxNy45OTk5OTk5IEwxMi45ODksMTQuMjUgQzExLjM4NDE3NDUsMTUuMzE0NTIwNiA5LjI3OTg0NTQ1LDE1LjIzOTg0NyA3Ljc1NDUxMjA5LDE0LjA2NDI1MDQgQzYuMjI5MTc4NzMsMTIuODg4NjUzOCA1LjYyMDk4NTkxLDEwLjg3Mjc0NzUgNi4yNDE2NDEyNiw5LjA0OTcxMjY4IEM2Ljg2MjI5NjYxLDcuMjI2Njc3ODMgOC41NzQyMDk1OSw2LjAwMDY1NTU0IDEwLjUsNS45OTk5OTk4OCBaIE0xMC41LDcuOCBDOS41MzUzODI4OSw3LjggOC42NDQwMzk5Miw4LjMxNDYxNzA3IDguMTYxNzMxMzYsOS4xNDk5OTk5OCBDNy42Nzk0MjI4LDkuOTg1MzgyOSA3LjY3OTQyMjgsMTEuMDE0NjE3MSA4LjE2MTczMTM2LDExLjg1IEM4LjY0NDAzOTkyLDEyLjY4NTM4MjkgOS41MzUzODI4OSwxMy4yIDEwLjUsMTMuMiBDMTEuOTkxMTY4OCwxMy4yIDEzLjIsMTEuOTkxMTY4OCAxMy4yLDEwLjUgQzEzLjIsOS4wMDg4MzExOCAxMS45OTExNjg4LDcuOCAxMC41LDcuOCBMMTAuNSw3LjggWiIgaWQ9IlNoYXBlIiBmaWxsPSIjMDA3MDc4Ij48L3BhdGg+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4="  
						          			alt="검색어 기록" class="css-18k9riu">
						            		<p class="css-8z1ej0">
						            		
												<span class="css-1iet6e5">${searchHistory[index]}</span>
						            		</p>
						       		 </button>
								  <button type="button" onclick="deleteRecord('${sessionScope.searchHistory[index]}')">
							            <img src="data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjQkRCREJEIiBjeD0iOCIgY3k9IjgiIHI9IjciLz4KICAgICAgICA8ZyBzdHJva2U9IiNGNUY1RjUiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgPHBhdGggZD0ibTEwLjc0MyA1LjI1Ny01LjQ4NiA1LjQ4Nk01LjI1NyA1LjI1N2w1LjQ4NiA1LjQ4NiIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="  
							             alt="기록 지우기">zz
							        </button>
							    </div>              
            					<c:set var="index" value="${index + 1}" />   	    	
                              <!-- 텍스트 필드 body  button  -->          
                              </c:forEach>
                        <!-- 텍스트 필드 body -->                
                        </div>yy
      			  </div> 	
      			  </div>	   
<script>
<!-- 특수문자 삭제 -->
function deleteRecord(keyword) {
    // 여기에 실제 삭제 로직을 추가하세요.
    window.location.href = "deleteRecord.do?keyword=" + encodeURIComponent(keyword);
}



function updateSearchHistoryOnServer(searchString) {
    // 서버에 Ajax 요청을 보냄
    $.ajax({
        type: "POST",
        url: "updateSearchHistory.do",  // 실제 업데이트를 처리할 URL로 수정
        data: { searchString: searchString },
        success: function(response) {
            // 서버로부터 업데이트된 searchHistory를 받아옴
            // 여기에서 response를 이용하여 필요한 동작 수행
            console.log("Search history updated on server:", response);
            
        },
        error: function(xhr, status, error) {
            console.error("Error updating search history:");
            console.log("Status:", status);
            console.log("Error:", error);
            console.log("Response:", xhr.responseText);
        }
    });
}

//검색 필드를 클릭할 때 텍스트 필드가 나오도록 처리
document.querySelector('.css-i5sibr').addEventListener('click', function () {
    document.querySelector('.css-gflgma').classList.add('active');
});

// 다른 곳을 클릭하면 검색 필드가 사라지도록 처리
document.addEventListener('click', function (event) {
    if (!event.target.closest('.css-i5sibr')) {
        document.querySelector('.css-gflgma').classList.remove('active');
    }
});
	
	
	
	
	
	

function handleButtonClick(event) {
    event.preventDefault(); // 기본 동작 방지
    var searchString = $(event.currentTarget).data('search-string').trim();
    // data-search-string 값을 가져옴
    //button으로 값을 가져올떄는 id값을 #을써서 못갖고 오기때문에
    
    // date를 써서 이런식으로 data-search-string="${searchHistory[index]}"  값을 가져온다.
    performSearch(searchString);

}
	


function handleKeyDown(event) {
    if (event.key === 'Enter') {
    	  var searchString = $("#searchString").val(); 
          //input 으로 사용시에는 id값으로  불러서 value값으로 처리할수있다 
      updateSearchHistoryOnServer(searchString);
        event.preventDefault(); // 폼 제출 방지
        
        performSearch(searchString);

    }
}

function performSearch(searchString) {
    // 서버에 Ajax 요청을 보냄
    $.ajax({
        type: "GET",
        url: "search.do",
        data: { searchString: searchString },
        success: function(response) {
            // 서버 응답으로부터 HTML 생성
            
            var html = '';
            var counts = response.counts;
            var images = response.img;
            if (response.length === 0) {
                // 검색 결과가 없을 경우 처리
                      html = '<p class="css-1czv3nb" style="font-weight: bold ; margin-left: 70px;  margin-top:30px;">해당 지역의 매장이 없습니다!</p>';
                  
                      html += '<div class="css-yz1nei" style="margin-top: 30px; margin-left: 110px;">';
                	  html+= '<span style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;"><span style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">';
                	  html+=  '<img alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27102%27%20height=%2793%27/%3e" style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;"></span>';
                	  html+=   '<img alt="검색 결과가 없어요" src="data:image/png;base64,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" decoding="async" data-nimg="intrinsic" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span><div> ' ;     
            
        	
            }
            for (var storeName in counts) {
                var count = counts[storeName];
                var imageSrc = images[storeName];

                // HTML 구성 로직
                html += '<button type="button" class="css-bbjmfd" style="position: relative;">';
                html += '<div class="css-1h09m9f">';
                html += '<div class="css-pfy4cj">';
                html += '<div class="css-1vxgqxw">';
                html += '<img alt="" loading="eager" src="' + imageSrc + '" width="64" height="64" class="css-zvnbei">';
                html += '</div>';
                html += '</div>';
                html += '<div class="css-14ceppl">';
                html += '<p class="css-1vkjk90" onclick="searchAPI(\'' + storeName + '\')">' + storeName + '</p>';
                html += '<div class="css-1u8skbo">';
                html += '<div class="css-1hqidh4">';
                html += '<p class="css-1nybzwc">'+ "가맹점 수 : " + count + " 개" + '</p>';
                html += '</div>';
                html += '</div>';
                html += '</div>';
                html += '</div>';
                html += '</button>';
            }
            $("#searchengine .ReactVirtualized__Grid__innerScrollContainer").html(html);

            // 슬라이드 창 보이게 하기
            $("#searchengine").show();
            $("#ch").hide();
            slideOpen = true;
            processData(response.map, response.img, response.x, response.y, response.address);
            
        },
        error: function (error) {
            console.error("Error:", error);
        }
    });
    

}


	
 
 $(document).ready(function () {
   
	var slideOpen = false;
    var categories ;
    var Region; 

    
  //라벨 버튼 클릭이벤트 등록
$(document).on('click', '.css-1czr60j', function(e) {   
    e.preventDefault();
    var toggleDiv = document.querySelector('.css-k641c8');
    toggleDiv.classList.toggle('show');
    // 이벤트 전파 중지
    e.stopPropagation();
});

  


$(document).on('click', '.css-1cs754p', function(e) {
    console.log("Label_content  button clicked");
    e.preventDefault();
    // data-category 속성이 있는지 확인하고 없으면 기본값 설정
    Region = $(this).data("category") || "defaultValue"; 
    	
        var toggleDiv = document.querySelector('.css-k641c8');
        toggleDiv.classList.toggle('show');
        // Ajax 호출로 서버에서 데이터를 가져오는 부분
        $.ajax({
            type: "GET",
            url: "SelectRegion.do",
            data: { categories: categories ,Region: Region },

             success: function (response) {
            	 processData(response.map, response.img, response.x, response.y, response.address);

                 // 상점 데이터를 순회하며 processData 함수를 호출합니다.

            
                var html = '';
                if (response.length === 0) {
                    // 검색 결과가 없을 경우 처리
                          html = '<p class="css-1czv3nb" style="font-weight: bold ; margin-left: 70px;  margin-top:30px;">해당 지역의 매장이 없습니다!</p>';
                      
                          html += '<div class="css-yz1nei" style="margin-top: 30px; margin-left: 110px;">';
	                	  html+= '<span style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;"><span style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">';
	                	  html+=  '<img alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%27102%27%20height=%2793%27/%3e" style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;"></span>';
	                	  html+=   '<img alt="검색 결과가 없어요" src="data:image/png;base64,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" decoding="async" data-nimg="intrinsic" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;"></span><div> ' ;     
	            
            	
                }
                 
                 
                 
                 
                 
               
               	for (var categories in response.counts) {
                       var stores = response.counts[categories];

                       // 각 상점에 대해 반복 처리
                        for (var storeName in stores) {
                            var countValue = stores[storeName]; // 상점별 count 값
                            var storeImage = response.img[storeName]; // 상점별 이미지 URL // img 객체에서 상점 이름에 해당하는 이미지 URL을 가져옵니다.
                        html += '<button type="button" class="css-bbjmfd" style="position: relative;">';
                        html += '<div class="css-2jimq4" style="height: 1px; width: 100%; background-color: rgb(238, 238, 238); position: absolute; bottom: 0;"></div>';
                        html += '<div class="css-1h09m9f">';
                        html += '<div class="css-pfy4cj">';
                        html += '<div class="css-1vxgqxw">';
                        html += '<img alt="" loading="eager" src="' + storeImage + '" width="64" height="64" class="css-zvnbei">';
                        html += '</div>';
                        html += '</div>';
                        html += '<div class="css-14ceppl">';
                        html += '<p class="css-1vkjk90" onclick="searchAPI(\'' + storeName + '\')">' + storeName + '</p>';
                        html += '<div class="css-1u8skbo">';
                        html += '<div class="css-1hqidh4">';
                        html += '<p class="css-1nybzwc">'+ "가맹점 수 : " + countValue + " 개" + '</p>';
                        html += '<div class="css-1yn5oca"></div>';
                        html += '</div>';
                        html += '</div>';
                        html += '<div class="css-1uyuv3u"></div>';
                        html += '</div>';
                        html += '</div>';
                        html += '</button>';
                    }
                }

                
                // 슬라이드 창에 동적으로 생성된 버튼 추가
                $("#ch .ReactVirtualized__Grid__innerScrollContainer").html(html);

                // 슬라이드 창 보이게 하기
                $("#ch").show();
                $("#searchengine").hide();
                slideOpen = true;
            },
            error: function (xhr, status, error) {
                console.log("에러 발생:", xhr.responseText);
                alert("실패: " + xhr.responseText);
            }
        });

    
});

$(".category-button").click(function (e) {
      e.preventDefault();
      categories = $(this).data("category");
      
        console.log("Category button clicked");
        // 만약 슬라이드 창이 열려 있다면 닫고, 닫혀 있다면 열기
        if (slideOpen) {
            // 슬라이드 창 닫기
            $("#ch").hide();
            slideOpen = false;
        } else {
            // Ajax 호출로 서버에서 데이터를 가져오는 부분
            $.ajax({
                type: "GET",
                url: "cg_search.do",
                data: { categories: categories },
                success: function (response) {
                	processData(response.map, response.img, response.x, response.y, response.address);
                
                    var html = '';

                    // 가정: response 객체에는 counts, img, map이 포함되어 있음
                    var counts = response.counts;
                    var images = response.img;

                    for (var storeName in counts) {
                        var count = counts[storeName];
                        var imageSrc = images[storeName]; // 이미지 URL을 img 맵에서 가져옴

                        html += '<button type="button" class="css-bbjmfd" style="position: relative;">';
                        html += '<div class="css-2jimq4" style="height: 1px; width: 100%; background-color: rgb(238, 238, 238); position: absolute; bottom: 0;"></div>';
                        html += '<div class="css-1h09m9f">';
                        html += '<div class="css-pfy4cj">';
                        html += '<div class="css-1vxgqxw">';
                        html += '<img alt="" loading="eager" src="' + imageSrc + '" width="64" height="64" class="css-zvnbei">';
                        html += '</div>';
                        html += '</div>';
                        html += '<div class="css-14ceppl">';
                        html += '<p class="css-1vkjk90" onclick="searchAPI(\'' + storeName + '\')">' + storeName + '</p>';
                        html += '<div class="css-1u8skbo">';
                        html += '<div class="css-1hqidh4">';
                        html += '<p class="css-1nybzwc">'+ "가맹점 수 : " + count + " 개" + '</p>';
                        html += '<div class="css-1yn5oca"></div>';
                        html += '</div>';
                        html += '</div>';
                        html += '<div class="css-1uyuv3u"></div>';
                        html += '</div>';
                        html += '</div>';
                        html += '</button>';
                    }

                    // 슬라이드 창에 동적으로 생성된 버튼 추가
                    $("#ch .ReactVirtualized__Grid__innerScrollContainer").html(html);

                    
               
                    // 슬라이드 창 보이게 하기
                    $("#ch").show();
                    $("#searchengine").hide();
                    slideOpen = true;
                },
                error: function (xhr, status, error) {
                    console.log("에러 발생:", xhr.responseText);
                    alert("실패: " + xhr.responseText);
                }
            });
        }
    });
}); 
 
 
 function searchAPI(storeName) {
	    window.open("brandData/apibulu?storeName=" + storeName,
	        "storeName", "width=500, height=650");
	    console.log("storeName : " + storeName)
	}
 
 function searchAdd(storeName, address) {
	    window.open("sangkwonAddress.do?storeName=" + encodeURIComponent(storeName) + "&address=" + encodeURIComponent(address),
	       
	"storeName", "width=360, height=276");
	console.log("storeName : " + storeName);
	console.log("address : " + address);
	}
</script> 


<script>
//JavaScript (jQuery 사용)
$(document).ready(function() {
   $('.category-button').click(function() {
      // 클릭된 버튼이 이미 active 상태인 경우 동작하지 않음
      if ($(this).hasClass('active')) {
         return;
      }

      // 현재 클릭된 버튼의 active 클래스를 토글
      $(this).toggleClass('active');

      // 다른 버튼의 active 클래스를 제거
      $('.category-button').not(this).removeClass('active');

      // 클릭된 버튼의 데이터(category)를 가져와서 해당 동작 수행
      var category = $(this).data('category');
      
      // 여기에 클릭된 버튼에 대한 작업을 수행
      console.log('Selected category:', category);
   });
});
</script>

	<div class="css-19gubhv">
         <div class="css-14dxogm">
         
            <div class="css-7059ux">
            
               <div class="css-hfcfsp"></div>
               
            <div class="css-1iv2r3x">
				<button id="chicken" type="button" class="css-17ny7wh category-button" data-category="chicken">
             <p class="css-1ol47x3">치킨</p>
               </button>
            	<button id="pizza" type="button" class="css-17ny7wh category-button" data-category="pizza">
             <p class="css-1ol47x3">피자</p>
               </button>
			   <button id="fastFood" type="button" class="css-17ny7wh category-button" data-category="fastFood">
             <p class="css-1ol47x3">패스트푸드</p>
               </button>
               <button id="jokbal_Bossam" type="button" class="css-17ny7wh category-button" data-category="jokbal_Bossam">
                  <p class="css-1ol47x3">족발/보쌈</p>
               </button>
               <button id="western" type="button" class="css-17ny7wh category-button" data-category="western">
                  <p class="css-1ol47x3">양식</p>
               </button>
               <button id="chinese" type="button" class="css-17ny7wh category-button" data-category="chinese">
                  <p class="css-1ol47x3">중식</p>
               </button>
               <button id="japanese" type="button" class="css-17ny7wh category-button" data-category="japanese">
                  <p class="css-1ol47x3">일식</p>
               </button>
               <button id="korean" type="button" class="css-17ny7wh category-button" data-category="korean">
                  <p class="css-1ol47x3">한식</p>
               </button>
               <button id="asian" type="button" class="css-17ny7wh category-button" data-category="asian">
                  <p class="css-1ol47x3">아시안</p>
               </button>
               <button id="snack" type="button" class="css-17ny7wh category-button" data-category="snack">
                  <p class="css-1ol47x3">분식</p>
               </button>
               <button id="pub" type="button" class="css-17ny7wh category-button" data-category="pub">
                  <p class="css-1ol47x3">주점</p>
               </button>
               <button id="dessert" type="button" class="css-17ny7wh category-button" data-category="dessert">
                  <p class="css-1ol47x3">디저트</p>
               </button>
               <button id="cafe" type="button" class="css-17ny7wh category-button" data-category="cafe">
                  <p class="css-1ol47x3">카페</p>
                  
               </button>
            </div>
            
         </div>
<!--          <div class="css-kcjb0q">
            <button type="button" class="css-13qf9ku">
               <span>데이터 출처</span><img
                  src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMTZweCIgaGVpZ2h0PSIxNnB4IiB2aWV3Qm94PSIwIDAgMTYgMTYiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+aWNvbi8xNi9pbmZvPC90aXRsZT4KICAgIDxnIGlkPSLrp4jsnbTtjpjsnbTsp4AiIHN0cm9rZT0ibm9uZSIgc3Ryb2tlLXdpZHRoPSIxIiBmaWxsPSJub25lIiBmaWxsLXJ1bGU9ImV2ZW5vZGQiPgogICAgICAgIDxnIGlkPSIjMzEt67iM656c65Oc7IOB7IS4LW0iIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0xOS4wMDAwMDAsIC00MTU3LjAwMDAwMCkiPgogICAgICAgICAgICA8ZyBpZD0iR3JvdXAtNjEiIHRyYW5zZm9ybT0idHJhbnNsYXRlKDE5LjAwMDAwMCwgMzQ4NS4wMDAwMDApIj4KICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC0xOCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMC4wMDAwMDAsIDMzLjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cC05IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwgNjM3LjAwMDAwMCkiPgogICAgICAgICAgICAgICAgICAgICAgICA8ZyBpZD0iaWNvbi8xNi9pbmZvIiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgwLjAwMDAwMCwgMi4wMDAwMDApIj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxwb2x5Z29uIGlkPSJQYXRoIiBwb2ludHM9IjAgMCAxNiAwIDE2IDE2IDAgMTYiPjwvcG9seWdvbj4KICAgICAgICAgICAgICAgICAgICAgICAgICAgIDxnIGlkPSJHcm91cCIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoMS41MDAwMDAsIDEuNTAwMDAwKSI+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPGNpcmNsZSBpZD0iT3ZhbCIgc3Ryb2tlPSIjOUU5RTlFIiBjeD0iNi41IiBjeT0iNi41IiByPSI2Ij48L2NpcmNsZT4KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICA8cmVjdCBpZD0iUmVjdGFuZ2xlIiBmaWxsPSIjOUU5RTlFIiB4PSI1Ljg1IiB5PSIyLjYiIHdpZHRoPSIxLjMiIGhlaWdodD0iMS4zIj48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgPHJlY3QgaWQ9IlJlY3RhbmdsZS1Db3B5IiBmaWxsPSIjOUU5RTlFIiB4PSI1Ljg1IiB5PSI1LjIiIHdpZHRoPSIxLjMiIGhlaWdodD0iNS4yIj48L3JlY3Q+CiAgICAgICAgICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICAgICAgICAgIDwvZz4KICAgICAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgICAgICA8L2c+CiAgICAgICAgICAgIDwvZz4KICAgICAgICA8L2c+CiAgICA8L2c+Cjwvc3ZnPg=="
                  width="14" height="14" alt="" class="css-158icaa">
            </button>
         </div> -->
      </div>

   </div>

</div>

<!-- 검색을 했을경우 사용하는 div -->
<div id="searchengine" class="css-xu6rln" style="display: none;">      
<div aria-label="grid" aria-readonly="true" class="ReactVirtualized__Grid ReactVirtualized__List" role="grid" tabindex="0" style="box-sizing: border-box; direction: ltr; height: 600px; position: relative; width: 360px; will-change: transform; overflow: auto;">
		<div class="ReactVirtualized__Grid__innerScrollContainer" role="rowgroup" style="width: 340px; height: auto; max-width: 360px; max-height: 10000px; overflow: hidden; position: relative;">
		
		 <!-- button -->
	        <button type="button" class="css-bbjmfd" style="position: relative;">
		
		            <!-- 구분선 -->
	            <div class="css-2jimq4" style="height: 1px; width: 100%; background-color: rgb(238, 238, 238); position: absolute; bottom: 0;"></div>
	
	            <div class="css-1h09m9f">
	                <!-- image -->
	                <div class="css-pfy4cj">
	                    <div class="css-1vxgqxw">
	                        <img alt="" loading="eager" src="" width="64" height="64" class="css-zvnbei">
	                    </div>
	                </div>
	                <!-- image -->
	
	                <!-- text-->
	                <div class="css-14ceppl">
	                    <p class="css-1vkjk90" onclick="searchAPI()"></p>
	                    <div class="css-1u8skbo">
	                        <div class="css-1hqidh4">
	                            <p class="css-1nybzwc"></p>
	                            <div class="css-1yn5oca"></div>
	                            <p class="css-1nybzwc"></p>
	                        </div>
	                    </div>
	                    <div class="css-1uyuv3u"></div>
	                </div>
	                <!-- text -->
	            </div>
	        </button>
	   </div>
	</div>
</div>
<!-- 검색을 했을경우 사용하는 div -->          

<!-- 카테고리를 사용 했을경우 사용하는 div -->                  
<div id="ch" class="css-xu6rln" style="display: none;">
<!--  문제가 있는 부분  이 부분이 있으면 슬라이드 창이 있을때 지도가 움직이고 없으면 잘 움직임-->
	<div class="css-1eoueix">
		<div class="css-bjn8wh">
			<button type="button" class="css-1czr60j"><span>자치구 선택</span>
				<span style="box-sizing: border-box; display: inline-block; overflow: hidden; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; position: relative; max-width: 100%;"><span style="box-sizing: border-box; display: block; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px; max-width: 100%;">
					<img alt="" aria-hidden="true" src="data:image/svg+xml,%3csvg%20xmlns=%27http://www.w3.org/2000/svg%27%20version=%271.1%27%20width=%2716%27%20height=%2716%27/%3e" style="display: block; max-width: 100%; width: initial; height: initial; background: none; opacity: 1; border: 0px; margin: 0px; padding: 0px;"></span><img alt="업종 필터 열기" src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiIgdmlld0JveD0iMCAwIDE2IDE2Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxwYXRoIGQ9Ik0wIDBIMTZWMTZIMHoiLz4KICAgICAgICAgICAgPHBhdGggc3Ryb2tlPSIjMkMyQzJDIiBkPSJNMTIgMkwxMiAxMCA0IDEwIiB0cmFuc2Zvcm09InJvdGF0ZSg0NSA4IDYpIi8+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4K" decoding="async" data-nimg="intrinsic" style="position: absolute; inset: 0px; box-sizing: border-box; padding: 0px; border: none; margin: auto; display: block; width: 0px; height: 0px; min-width: 100%; max-width: 100%; min-height: 100%; max-height: 100%;">
				</span>
			</button>
			<button type="button" class="css-143khj"></button>
				<div class="css-k641c8">
					<div class="css-sy4kze">
						<button type="button" class="css-1cs754p" data-category="서울">
							<p class="css-mlcrk0">서울시(전체)</p></button>
						<button type="button" class="css-1cs754p"  data-category="중구">
							<p class="css-1vsc68">중구</p></button>
						<button type="button" class="css-1cs754p"  data-category="종로구">
							<p class="css-1vsc68">종로구</p></button>
						<button type="button" class="css-1cs754p" data-category="용산구">
							<p class="css-1vsc68">용산구</p></button>
						<button type="button" class="css-1cs754p"  data-category="성동구">
							<p class="css-1vsc68">성동구</p></button>
						<button type="button" class="css-1cs754p"   data-category="광진구">
							<p class="css-1vsc68">광진구</p></button>
						<button type="button" class="css-1cs754p"   data-category="동대문구">
							<p class="css-1vsc68">동대문구</p></button>
						<button type="button" class="css-1cs754p" data-category="중랑구">
							<p class="css-1vsc68">중랑구</p></button>
						<button type="button" class="css-1cs754p"  data-category="성북구">
							<p class="css-1vsc68">성북구</p></button>
						<button type="button" class="css-1cs754p" data-category="강북구">
							<p class="css-1vsc68">강북구</p></button>
						<button type="button" class="css-1cs754p" data-category="도봉구">
							<p class="css-1vsc68">도봉구</p></button>
						<button type="button" class="css-1cs754p" data-category="노원구">
							<p class="css-1vsc68">노원구</p></button>
						<button type="button" class="css-1cs754p" data-category="은평구">
							<p class="css-1vsc68">은평구</p></button>
						<button type="button" class="css-1cs754p" data-category="서대문구">
							<p class="css-1vsc68">서대문구</p></button>
						<button type="button" class="css-1cs754p" data-category="마포구">
							<p class="css-1vsc68">마포구</p></button>
						<button type="button" class="css-1cs754p" data-category="양천구">
							<p class="css-1vsc68">양천구</p></button>
						<button type="button" class="css-1cs754p" data-category="강서구">
							<p class="css-1vsc68">강서구</p></button>
						<button type="button" class="css-1cs754p" data-category="구로구">
							<p class="css-1vsc68">구로구</p></button>
						<button type="button" class="css-1cs754p" data-category="금천구">
							<p class="css-1vsc68">금천구</p></button>
						<button type="button" class="css-1cs754p" data-category="영등포구">
							<p class="css-1vsc68">영등포구</p></button>
						<button type="button" class="css-1cs754p" data-category="동작구">
							<p class="css-1vsc68">동작구</p></button>
						<button type="button" class="css-1cs754p" data-category="관악구">
							<p class="css-1vsc68">관악구</p></button>
						<button type="button" class="css-1cs754p" data-category="서초구">
							<p class="css-1vsc68">서초구</p></button>
						<button type="button" class="css-1cs754p" data-category="강남구">
							<p class="css-1vsc68">강남구</p></button>
						<button type="button" class="css-1cs754p" data-category="송파구">
							<p class="css-1vsc68">송파구</p></button>
						<button type="button" class="css-1cs754p" data-category="강동구">
							<p class="css-1vsc68">강동구</p></button>
					</div>
				</div>
		</div>
	</div>
<!--  문제가 있는 부분  이 부분이 있으면 슬라이드 창이 있을때 지도가 움직이고 없으면 잘 움직임-->
                  
	<div aria-label="grid" aria-readonly="true" class="ReactVirtualized__Grid ReactVirtualized__List" role="grid" tabindex="0" style="box-sizing: border-box; direction: ltr; height: 600px; position: relative; width: 360px; will-change: transform; overflow: auto;">
		<div class="ReactVirtualized__Grid__innerScrollContainer" role="rowgroup" style="width: 340px; height: auto; max-width: 360px; max-height: 10000px; overflow: hidden; position: relative;">
		
		 <!-- button -->
	        <button type="button" class="css-bbjmfd" style="position: relative;">
		
		            <!-- 구분선 -->
	            <div class="css-2jimq4" style="height: 1px; width: 100%; background-color: rgb(238, 238, 238); position: absolute; bottom: 0;"></div>
	
	            <div class="css-1h09m9f">
	                <!-- image -->
	                <div class="css-pfy4cj">
	                    <div class="css-1vxgqxw">
	                        <img alt="" loading="eager" src="" width="64" height="64" class="css-zvnbei">
	                    </div>
	                </div>
	                <!-- image -->
	
	                <!-- text-->
	                <div class="css-14ceppl">
	                    <p class="css-1vkjk90" onclick="searchAPI()"></p>
	                    <div class="css-1u8skbo">
	                        <div class="css-1hqidh4">
	                            <p class="css-1nybzwc"></p>
	                            <div class="css-1yn5oca"></div>
	                            <p class="css-1nybzwc"></p>
	                        </div>
	                    </div>
	                    <div class="css-1uyuv3u"></div>
	                </div>
	                <!-- text -->
	            </div>
	        </button>
	   </div>
	</div>
</div>
<!-- 카테고리를 사용 했을경우 사용하는 div --> 
               
<div id="pano-container"
   style="position: absolute; inset: 0px; z-index: 0;">
   <div
      style="position: relative; overflow: hidden; width: 100%; height: 100%;">
      <div id="pano"
         style="position: absolute; width: 100%; height: 100%;">

         <button type="button" class="css-1con5or">
            <img
               src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgdmlld0JveD0iMCAwIDI0IDI0Ij4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGc+CiAgICAgICAgICAgIDxnPgogICAgICAgICAgICAgICAgPHBhdGggZD0iTTAgMEgyNFYyNEgweiIgdHJhbnNmb3JtPSJ0cmFuc2xhdGUoLTMxNiAtMjApIHRyYW5zbGF0ZSgzMTYgMjApIi8+CiAgICAgICAgICAgICAgICA8cGF0aCBzdHJva2U9IiNmZmZmZmYiIHN0cm9rZS13aWR0aD0iMiIgZD0iTTEyIDRMMTIgMjAuMDA2IiB0cmFuc2Zvcm09InRyYW5zbGF0ZSgtMzE2IC0yMCkgdHJhbnNsYXRlKDMxNiAyMCkgcm90YXRlKDQ1IDEyIDEyLjAwMykiLz4KICAgICAgICAgICAgICAgIDxwYXRoIHN0cm9rZT0iI2ZmZmZmZiIgc3Ryb2tlLXdpZHRoPSIyIiBkPSJNMTIgNEwxMiAyMC4wMDYiIHRyYW5zZm9ybT0idHJhbnNsYXRlKC0zMTYgLTIwKSB0cmFuc2xhdGUoMzE2IDIwKSByb3RhdGUoLTQ1IDEyIDEyLjAwMykiLz4KICAgICAgICAgICAgPC9nPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg=="
               width="27" height="27" alt="파노라마 닫기">
         </button>
         <div id="minimap" class="css-1ckmrpw"></div>

      </div>
   </div>
</div>
               <!-- 지도를 표시할 div 기본 지도-->
 					<div id="map" style="width: 100%; height: 800px;"></div>

					<script>
					    var x = 126.99253466457762; // 기본 x좌표
					    var y = 37.571006516207795; // 기본 y좌표
					
					    var mapContainer = document.getElementById('map'); // 지도를 표시할 div
					    var mapOption = {
					        center: new kakao.maps.LatLng(y, x), // 지도의 중심좌표
					        level: 3 // 지도의 확대 레벨
					    };
					
					    // 지도 생성
					    var map = new kakao.maps.Map(mapContainer, mapOption);
					</script>
            </div>
         </div>
         </main> 
      </div>
      <div class="Toastify"></div>
   </div>
   <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
      crossorigin="anonymous">
   </script>
      
</body>
</html>