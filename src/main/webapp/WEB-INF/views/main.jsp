<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html style="overflow-y:hidden !important">
<head>
<style>
/* 문열리는 환영 css */
/* 창업정보 */
#sub.start .interior {  }
#sub.start .interior .interior_top { position:relative; z-index:7; background-image:url('../img/pc/sub/start/interior_top.png'); background-size:cover; height:533px; background-size:cover; background-position:center; background-repeat:no-repeat; }
#sub.start .interior .interior_bottom { position:relative; z-index:4; margin:-40px 0 0; background-color:#120505; background-size:cover; height:470px; background-size:cover; background-position:center; background-repeat:no-repeat; }
#sub.start .interior .interior_bottom > img { position:absolute; top:0; left:50%; transform:translate(-50%, 0); z-index:1; opacity:0; transition-duration:2000ms; transition-delay:2000ms; height:100% !important; }
#sub.start .interior .interior_bottom {  }
#sub.start .interior .interior_bottom img.on { opacity:1; }
#sub.start .interior .interior_bottom .txt { text-align:center; padding:80px 0 0; position:relative; z-index:5; }
#sub.start .interior .interior_bottom .txt img {  }
#sub.start .interior .interior_bottom .txt img.pc {  }
#sub.start .interior .interior_bottom .txt p { font-size:22px; line-height:37px; color:#fff; padding:35px 0 0; }
#sub.start .interior .interior_bottom .door {  }
#sub.start .interior .interior_bottom .door img { position:absolute; top:50%; transform:translate(0,-50%); z-index:6; }
#sub.start .interior .interior_bottom .door img.left { left:0; }
#sub.start .interior .interior_bottom .door img.right { right:0; }
#sub.start .interior .interior_bottom .window { }
#sub.start .interior .interior_bottom .window img { position:absolute; top:50%; transform:translate(0,-50%); z-index:5; transition-duration:2000ms; }
#sub.start .interior .interior_bottom .window img.left { left:216px; }
#sub.start .interior .interior_bottom .window img.right { right:241px; }
#sub.start .interior .interior_bottom .window.on img.left { left:-350px; }
#sub.start .interior .interior_bottom .window.on img.right { right:-330px; }
/* 반응형 */
@media screen and (max-width:1024px) {
  #sub.brand .since .list ol { height:250px; }
  #sub.brand .operation .content ul li { width:250px; height:250px; }
  #sub.brand .operation .content ul li .background { width:160px; height:160px; }
  #sub .tab ul li a { width:220px; }
  #sub.bbs .basic ol li a dl dt p { padding:0 15px; }
  #sub.bbs .basic ol li a dl dd { padding:20px 15px 25px; }
  #sub.start .interior .interior_bottom .door { display:none; }
  #sub.start .interior .interior_bottom .window.on img.left { left:-70%; }
  #sub.start .interior .interior_bottom .window.on img.right { right:-70%; }
  #sub.start .interior .interior_bottom .txt p { font-size:18px; line-height:30px; font-weight:300; padding:35px 160px 0; }
  #sub.start .interior .interior_bottom .txt p br { display:none !important; }
  #sub.start .interior .interior_bottom .txt img { height:100px !important; }
  #sub.start .interior .interior_bottom .txt { padding:100px 0 0; }
  #sub.start .interior .interior_bottom { height:380px; }
  #sub.start .interior .interior_bottom .window img { top:38%; }
}
</style>
<style>
.slideshow-container {
   max-width: 500px;
   position: relative;
   margin: auto;
}
.mySlides {
   display: none;
}
/* Next & previous buttons */
.prev, .next {
   cursor: pointer;
   position: absolute;
   top: 50%;
   width: auto;
   margin-top: -22px;
   padding: 16px;
   color: white;
   font-weight: bold;
   font-size: 18px;
   transition: 0.6s ease;
   border-radius: 0 3px 3px 0;
   user-select: none;
}
/* Position the "next button" to the right */
.next {
   right: 0;
   border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
   background-color: rgba(0, 0, 0, 0.8);
}

/* Caption text */
.text {
   color: #f2f2f2;
   font-size: 15px;
   padding: 8px 12px;
   position: absolute;
   bottom: 8px;
   width: 100%;
   text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
   color: #f2f2f2;
   font-size: 12px;
   padding: 8px 12px;
   position: absolute;
   top: 0;
}

/* The dots/bullets/indicators */
.dot {
   cursor: pointer;
   height: 15px;
   width: 15px;
   margin: 0 2px;
   background-color: #bbb;
   border-radius: 50%;
   display: inline-block;
   transition: background-color 0.6s ease;
}

.active, .dot:hover {
   background-color: #717171;
}

/* Fading animation */
.fade {
   -webkit-animation-name: fade;
   -webkit-animation-duration: 1.5s;
   animation-name: fade;
   animation-duration: 1.5s;
}
.jfGgpS {
   position: fixed;
   z-index: 10;
   display: flex;
   flex-wrap: nowrap;
   width: auto;
   overflow: visible;
   background: transparent;
   bottom: 26px;
   right: 8px;
}

button {
   box-sizing: border-box;
   width: auto;
   padding: 0px;
   margin: 0px;
   overflow: visible;
   font-style: inherit;
   font-variant: inherit;
   font-weight: inherit;
   font-stretch: inherit;
   font-size: inherit;
   font-optical-sizing: inherit;
   font-kerning: inherit;
   font-feature-settings: inherit;
   font-variation-settings: inherit;
   font-family: NotoSansKR, -apple-system, BlinkMacSystemFont,
      "Helvetica Neue", "맑은 고딕", "Segoe UI", Roboto, "system-ui",
      "sans-serif";
   line-height: inherit;
   color: inherit;
   text-shadow: transparent 0px 0px 0px;
   letter-spacing: inherit;
   background: transparent;
   border: 0px solid transparent;
   box-shadow: transparent 0px 0px 0px;
}




/* 여기는 추가 */

*{
  padding: 0;
  margin: 0;
  list-style: none;
  text-decoration: none;
  color: inherit;
}

/* 라이브러리 */

.row::after {
  content:"";
  display: block;
  clear: both;
}
.cell {
  float: left;
}
.img-box, .img-box > img {
  display: block;
  width: 100%;
}

/* 커스텀 */
h2 {
  padding-top: 80px;
}


/*슬라이드 첫번째*/
.slide1 {
  position: relative;
  width: 1200px;
  height: 300px;
}

.slide1 > .slide-wrap {
  position: absolute;
  top: 0;
  left: 0;
  /*슬라이드 한치수 크게 너비작성*/
  width: 4800px;
  height: 100%;
}
.slide1 > .slide-wrap > li > a > img{
  width: 1200px;
  height: 300px;
}

/*슬라이드 두번째*/
/*두번째 슬라이드는 float이면 안됩니다.*/
.slide2 {
  position: relative;
  width: 1200px;
  height: 300px;
  overflow: hidden;
}
.slide2 > .slide-wrap {
  position: absolute;
  top: 0;
  left: 0;
  width: 1200px;
  /*슬라이드 높이 한치수 크게 작성*/
  height: 1200px;
}
.slide2 > .slide-wrap > li > a > img{
  width: 1200px;
  height: 300px;
}

/* 페이드 인, 아웃 슬라이드  */
.slide3 {
  position: relative;
  width: 1200px;
  height: 300px;
  overflow: hidden;
}
.slide3 > .slide-wrap {
  position: absolute;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
}
/* 슬라이드 아이템 */
.slide3 > .slide-wrap > li {
  position: absolute;
  top: 0;
  left: 0;
}
/*처음에 안보이게 하기*/
.slide3 > .slide-wrap > li:not(:first-child) {
  display: none;
}
.slide3 > .slide-wrap > li > a > img{
  width: 1200px;
  height: 300px;
}
#mct_02 {
    /* 원하는 배경 이미지 URL로 설정 */
    background-image: url('https://cdn.quv.kr/u71269y3x%2Fus%2F_aR4l6fj6wQ_1920.jpg') !important;
    /* 크기 및 위치 설정 */
    background-size: cover !important;
    background-position: center !important;
    /* 다른 스타일들... */
}
#mct_10 {
    /* 원하는 배경 이미지 URL로 설정 */
    background-image: url('https://xn--hz2b23whtdg3k.com/img/t/39/5d945e45613ac_1920.jpg') !important;
    /* 크기 및 위치 설정 */
    background-size: cover !important;
    background-position: center !important;
    /* 다른 스타일들... */
}
#mct_06 {
    padding: 0px 0 !important;
    overflow: hidden;
}
</style>
<style>
/* 리뷰 링크 */ 
body{background-color: #032414}
.gra_bg{bottom: 0;left: 0;width: 100%;height: 730px;background: linear-gradient(to bottom, transparent 10%, #676c19)}
.only_boxs{margin: 0 auto;padding-top: 150px;max-width: 1580px}
.only_b01_sl{top: 0;left: 0;width: 100%;height: 100%}
.only_b01{width: 100%;height: 100%}
.only_b{padding-left: 50px;padding-top: 45px;width: 600px;height: 600px;box-sizing: border-box}
.only_box01{background-image: url('../img/main/only_box01.jpg')}
.only_box02{width: 600px;height: 600px;background-image: url('../img/main/only_box02.jpg')}
.only_box01 .only_highlight{background-color: #ffd800;color: #d21019}
.only_b02_01 .only_highlight{background-color: #d21019;color: #7de3d7}
.only_b02_02 .only_highlight{background-color: #d21019;color: #ffd800}
.only_highlight{display: inline-block;padding: 0 5px;font-family: 'KOHIBaeum';font-size: 45px;line-height: 1.2222}
.only_box01{color: #ffd800}
.only_box01 .only_more{border-color: #ffd800}
.only_box02{color: #03502b}
.only_box_txt{margin-top: 18px}
.only_more{display: block;margin-top: 34px;width: 160px;border-radius: 24px;border: 1px solid #03502b;font-size: 18px;line-height: 48px}
.only_02_paging{bottom: 50px;left: 50px}
.only_02_paging li:not(:last-child){margin-right: 20px}
.only_02_paging li.swiper-pagination-bullet-active a{background-color: #f0ebe1}
.only_02_paging li a{display: block;width: 15px;height: 15px;border-radius: 50%;border: 2px solid #f0ebe1;box-sizing: border-box}
/* praise */
.praise{height: 995px;margin-bottom: 50px;background-image: url('../img/page/fran/praise.jpg');}
.praise_head{padding-top: 112px;}
.praise_ttl{font-size: 70px;line-height: 1.2857;font-family:'KOHIBaeum';color: #fff;}
.praise_ttl em{color: #f5d31f;}
.praise_sub{padding-top: 30px;padding-bottom: 30px;}
.praise_txt{color: #f0ebe1;}
.praise_flow{left: 0;bottom: 118px;width: 100%;height: 290px;}
.praise_flow .flow_item{width: 300px;height: 340px;margin-right: 30px;overflow: hidden;cursor: pointer;}
.praise_flow .flow_item img{width: 100%}
.praise_box{display: flex;justify-content: center;align-items: center;bottom: 0;left: 0;width: 100%;height: 120px;background-color: #03502b;color: #fff;}
/* side_flow */
.side_flow{margin: 50px 0;height: 80px;border: 2px solid #f0ebe1;}
.side_flow .swiper-slide{width: auto}
.side_fl{margin: 0 50px;padding-top: 10px}
.side_fl > *{vertical-align: middle}
.side_fl_txt{margin-left: 20px}
.flow_container {
    width: 100% !important; /* 슬라이드 전체 너비 조정 */
    overflow: hidden !important; /* 넘치는 부분 감추기 */
    position: relative !important; /* 상대 위치 지정 */
}
.js-marquee-wrapper {
    white-space: nowrap !important; /* 사진들을 한 줄에 배열 */
    animation: marqueeAnimation 1000s linear infinite !important; /* 슬라이드 애니메이션 적용 */
}
.js-marquee {
    display: inline-block !important; /* 사진들을 인라인 요소로 표시 */
}
@keyframes marqueeAnimation {
    0% { transform: translateX(0) !important; }
    100% {transform:translateX(-100%); } /* 왼쪽으로 슬라이드 */
}
.flow_item {
    display: inline-block !important; /* 사진들을 인라인 요소로 표시 */
}
</style>
<style>
/* 창업 추천 목록 */
/* visual */
.area_visual{position:relative;}
.area_visual .list li,
.area_visual .bx-viewport{}
.area_visual .list li{position:relative;}
.area_visual .list li > img{width:100%;}
.area_visual .list li .text{position:absolute; top:20%; left:10%; width:100%;}
.area_visual .list li.img_mob{display:none;}

.area_cont01{display:flex; background:#1b2741; height:585px;}
.area_cont01 .right{box-sizing:border-box; display: flex; align-items: flex-start; justify-content: center; flex-direction: column; padding:0 3%; width:50%; color:#fff;}
.area_cont01 .right h3{line-height: 1.3; font-size:55px; font-family:'GmarketSansLight'; font-weight: 100;}
.area_cont01 .right h3 b{font-family: 'GmarketSansBold';}
.area_cont01 .right > div{box-sizing: border-box; position:relative; padding: 10px 40px; margin:30px 0; background:#fec602; color:#fff; font-size:82px; font-family: 'GmarketSansBold';}
.area_cont01 .right > div:before{content:'';position:absolute;width:33px;height:56px;background:url(../../images/main/icon_check.svg) no-repeat;bottom: -52px;right: 190px;transform: rotate(15deg);}
.area_cont01 .right p{ font-size:25px; font-family:'GmarketSansLight';}
.area_cont01 .left{width:50%; background-size:cover;}

.area_cont02 {display: flex; background: #1b2741; height: 585px; flex-direction: row-reverse;}
.area_cont02 .left{box-sizing: border-box; display: flex; align-items: flex-start; justify-content: center; flex-direction: column; padding: 0 3%; width: 50%; color: #fff;}
.area_cont02 .left h3{line-height: 1.3; font-size:55px; font-family:'GmarketSansLight'; font-weight: 100;}
.area_cont02 .left h3 b{font-family: 'GmarketSansBold';}
.area_cont02 .left > div{box-sizing: border-box; position:relative; padding: 10px 40px; margin:30px 0; background:#fec602; color:#fff; font-size:82px; font-family: 'GmarketSansBold';}
.area_cont02 .left > div:before{content:'';position:absolute;width:33px;height:56px;background:url(../../images/main/icon_check.svg) no-repeat;bottom: -52px;right: 190px;transform: rotate(15deg);}
.area_cont02 .left p{ font-size:25px; font-family:'GmarketSansLight';}

.area_cont02 .right{width:50%; background-size:cover;}
</style>
<style>
/* ㅇㅇ */ 
/* 여기까지 기본 베이스 */
[data-aos][data-aos][data-aos-duration="50"],body[data-aos-duration="50"] [data-aos] {
    transition-duration: 50ms
}

[data-aos][data-aos][data-aos-delay="50"],body[data-aos-delay="50"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="50"].aos-animate,body[data-aos-delay="50"] [data-aos].aos-animate {
    transition-delay: 50ms
}

[data-aos][data-aos][data-aos-duration="100"],body[data-aos-duration="100"] [data-aos] {
    transition-duration: .1s
}

[data-aos][data-aos][data-aos-delay="100"],body[data-aos-delay="100"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="100"].aos-animate,body[data-aos-delay="100"] [data-aos].aos-animate {
    transition-delay: .1s
}

[data-aos][data-aos][data-aos-duration="150"],body[data-aos-duration="150"] [data-aos] {
    transition-duration: .15s
}

[data-aos][data-aos][data-aos-delay="150"],body[data-aos-delay="150"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="150"].aos-animate,body[data-aos-delay="150"] [data-aos].aos-animate {
    transition-delay: .15s
}

[data-aos][data-aos][data-aos-duration="200"],body[data-aos-duration="200"] [data-aos] {
    transition-duration: .2s
}

[data-aos][data-aos][data-aos-delay="200"],body[data-aos-delay="200"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="200"].aos-animate,body[data-aos-delay="200"] [data-aos].aos-animate {
    transition-delay: .2s
}

[data-aos][data-aos][data-aos-duration="250"],body[data-aos-duration="250"] [data-aos] {
    transition-duration: .25s
}

[data-aos][data-aos][data-aos-delay="250"],body[data-aos-delay="250"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="250"].aos-animate,body[data-aos-delay="250"] [data-aos].aos-animate {
    transition-delay: .25s
}

[data-aos][data-aos][data-aos-duration="300"],body[data-aos-duration="300"] [data-aos] {
    transition-duration: .3s
}

[data-aos][data-aos][data-aos-delay="300"],body[data-aos-delay="300"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="300"].aos-animate,body[data-aos-delay="300"] [data-aos].aos-animate {
    transition-delay: .3s
}

[data-aos][data-aos][data-aos-duration="350"],body[data-aos-duration="350"] [data-aos] {
    transition-duration: .35s
}

[data-aos][data-aos][data-aos-delay="350"],body[data-aos-delay="350"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="350"].aos-animate,body[data-aos-delay="350"] [data-aos].aos-animate {
    transition-delay: .35s
}

[data-aos][data-aos][data-aos-duration="400"],body[data-aos-duration="400"] [data-aos] {
    transition-duration: .4s
}

[data-aos][data-aos][data-aos-delay="400"],body[data-aos-delay="400"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="400"].aos-animate,body[data-aos-delay="400"] [data-aos].aos-animate {
    transition-delay: .4s
}

[data-aos][data-aos][data-aos-duration="450"],body[data-aos-duration="450"] [data-aos] {
    transition-duration: .45s
}

[data-aos][data-aos][data-aos-delay="450"],body[data-aos-delay="450"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="450"].aos-animate,body[data-aos-delay="450"] [data-aos].aos-animate {
    transition-delay: .45s
}

[data-aos][data-aos][data-aos-duration="500"],body[data-aos-duration="500"] [data-aos] {
    transition-duration: .5s
}

[data-aos][data-aos][data-aos-delay="500"],body[data-aos-delay="500"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="500"].aos-animate,body[data-aos-delay="500"] [data-aos].aos-animate {
    transition-delay: .5s
}

[data-aos][data-aos][data-aos-duration="550"],body[data-aos-duration="550"] [data-aos] {
    transition-duration: .55s
}

[data-aos][data-aos][data-aos-delay="550"],body[data-aos-delay="550"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="550"].aos-animate,body[data-aos-delay="550"] [data-aos].aos-animate {
    transition-delay: .55s
}

[data-aos][data-aos][data-aos-duration="600"],body[data-aos-duration="600"] [data-aos] {
    transition-duration: .6s
}

[data-aos][data-aos][data-aos-delay="600"],body[data-aos-delay="600"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="600"].aos-animate,body[data-aos-delay="600"] [data-aos].aos-animate {
    transition-delay: .6s
}

[data-aos][data-aos][data-aos-duration="650"],body[data-aos-duration="650"] [data-aos] {
    transition-duration: .65s
}

[data-aos][data-aos][data-aos-delay="650"],body[data-aos-delay="650"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="650"].aos-animate,body[data-aos-delay="650"] [data-aos].aos-animate {
    transition-delay: .65s
}

[data-aos][data-aos][data-aos-duration="700"],body[data-aos-duration="700"] [data-aos] {
    transition-duration: .7s
}

[data-aos][data-aos][data-aos-delay="700"],body[data-aos-delay="700"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="700"].aos-animate,body[data-aos-delay="700"] [data-aos].aos-animate {
    transition-delay: .7s
}

[data-aos][data-aos][data-aos-duration="750"],body[data-aos-duration="750"] [data-aos] {
    transition-duration: .75s
}

[data-aos][data-aos][data-aos-delay="750"],body[data-aos-delay="750"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="750"].aos-animate,body[data-aos-delay="750"] [data-aos].aos-animate {
    transition-delay: .75s
}

[data-aos][data-aos][data-aos-duration="800"],body[data-aos-duration="800"] [data-aos] {
    transition-duration: .8s
}

[data-aos][data-aos][data-aos-delay="800"],body[data-aos-delay="800"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="800"].aos-animate,body[data-aos-delay="800"] [data-aos].aos-animate {
    transition-delay: .8s
}

[data-aos][data-aos][data-aos-duration="850"],body[data-aos-duration="850"] [data-aos] {
    transition-duration: .85s
}

[data-aos][data-aos][data-aos-delay="850"],body[data-aos-delay="850"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="850"].aos-animate,body[data-aos-delay="850"] [data-aos].aos-animate {
    transition-delay: .85s
}

[data-aos][data-aos][data-aos-duration="900"],body[data-aos-duration="900"] [data-aos] {
    transition-duration: .9s
}

[data-aos][data-aos][data-aos-delay="900"],body[data-aos-delay="900"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="900"].aos-animate,body[data-aos-delay="900"] [data-aos].aos-animate {
    transition-delay: .9s
}

[data-aos][data-aos][data-aos-duration="950"],body[data-aos-duration="950"] [data-aos] {
    transition-duration: .95s
}

[data-aos][data-aos][data-aos-delay="950"],body[data-aos-delay="950"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="950"].aos-animate,body[data-aos-delay="950"] [data-aos].aos-animate {
    transition-delay: .95s
}

[data-aos][data-aos][data-aos-duration="1000"],body[data-aos-duration="1000"] [data-aos] {
    transition-duration: 1s
}

[data-aos][data-aos][data-aos-delay="1000"],body[data-aos-delay="1000"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1000"].aos-animate,body[data-aos-delay="1000"] [data-aos].aos-animate {
    transition-delay: 1s
}

[data-aos][data-aos][data-aos-duration="1050"],body[data-aos-duration="1050"] [data-aos] {
    transition-duration: 1.05s
}

[data-aos][data-aos][data-aos-delay="1050"],body[data-aos-delay="1050"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1050"].aos-animate,body[data-aos-delay="1050"] [data-aos].aos-animate {
    transition-delay: 1.05s
}

[data-aos][data-aos][data-aos-duration="1100"],body[data-aos-duration="1100"] [data-aos] {
    transition-duration: 1.1s
}

[data-aos][data-aos][data-aos-delay="1100"],body[data-aos-delay="1100"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1100"].aos-animate,body[data-aos-delay="1100"] [data-aos].aos-animate {
    transition-delay: 1.1s
}

[data-aos][data-aos][data-aos-duration="1150"],body[data-aos-duration="1150"] [data-aos] {
    transition-duration: 1.15s
}

[data-aos][data-aos][data-aos-delay="1150"],body[data-aos-delay="1150"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1150"].aos-animate,body[data-aos-delay="1150"] [data-aos].aos-animate {
    transition-delay: 1.15s
}

[data-aos][data-aos][data-aos-duration="1200"],body[data-aos-duration="1200"] [data-aos] {
    transition-duration: 1.2s
}

[data-aos][data-aos][data-aos-delay="1200"],body[data-aos-delay="1200"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1200"].aos-animate,body[data-aos-delay="1200"] [data-aos].aos-animate {
    transition-delay: 1.2s
}

[data-aos][data-aos][data-aos-duration="1250"],body[data-aos-duration="1250"] [data-aos] {
    transition-duration: 1.25s
}

[data-aos][data-aos][data-aos-delay="1250"],body[data-aos-delay="1250"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1250"].aos-animate,body[data-aos-delay="1250"] [data-aos].aos-animate {
    transition-delay: 1.25s
}

[data-aos][data-aos][data-aos-duration="1300"],body[data-aos-duration="1300"] [data-aos] {
    transition-duration: 1.3s
}

[data-aos][data-aos][data-aos-delay="1300"],body[data-aos-delay="1300"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1300"].aos-animate,body[data-aos-delay="1300"] [data-aos].aos-animate {
    transition-delay: 1.3s
}

[data-aos][data-aos][data-aos-duration="1350"],body[data-aos-duration="1350"] [data-aos] {
    transition-duration: 1.35s
}

[data-aos][data-aos][data-aos-delay="1350"],body[data-aos-delay="1350"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1350"].aos-animate,body[data-aos-delay="1350"] [data-aos].aos-animate {
    transition-delay: 1.35s
}

[data-aos][data-aos][data-aos-duration="1400"],body[data-aos-duration="1400"] [data-aos] {
    transition-duration: 1.4s
}

[data-aos][data-aos][data-aos-delay="1400"],body[data-aos-delay="1400"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1400"].aos-animate,body[data-aos-delay="1400"] [data-aos].aos-animate {
    transition-delay: 1.4s
}

[data-aos][data-aos][data-aos-duration="1450"],body[data-aos-duration="1450"] [data-aos] {
    transition-duration: 1.45s
}

[data-aos][data-aos][data-aos-delay="1450"],body[data-aos-delay="1450"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1450"].aos-animate,body[data-aos-delay="1450"] [data-aos].aos-animate {
    transition-delay: 1.45s
}

[data-aos][data-aos][data-aos-duration="1500"],body[data-aos-duration="1500"] [data-aos] {
    transition-duration: 1.5s
}

[data-aos][data-aos][data-aos-delay="1500"],body[data-aos-delay="1500"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1500"].aos-animate,body[data-aos-delay="1500"] [data-aos].aos-animate {
    transition-delay: 1.5s
}

[data-aos][data-aos][data-aos-duration="1550"],body[data-aos-duration="1550"] [data-aos] {
    transition-duration: 1.55s
}

[data-aos][data-aos][data-aos-delay="1550"],body[data-aos-delay="1550"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1550"].aos-animate,body[data-aos-delay="1550"] [data-aos].aos-animate {
    transition-delay: 1.55s
}

[data-aos][data-aos][data-aos-duration="1600"],body[data-aos-duration="1600"] [data-aos] {
    transition-duration: 1.6s
}

[data-aos][data-aos][data-aos-delay="1600"],body[data-aos-delay="1600"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1600"].aos-animate,body[data-aos-delay="1600"] [data-aos].aos-animate {
    transition-delay: 1.6s
}

[data-aos][data-aos][data-aos-duration="1650"],body[data-aos-duration="1650"] [data-aos] {
    transition-duration: 1.65s
}

[data-aos][data-aos][data-aos-delay="1650"],body[data-aos-delay="1650"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1650"].aos-animate,body[data-aos-delay="1650"] [data-aos].aos-animate {
    transition-delay: 1.65s
}

[data-aos][data-aos][data-aos-duration="1700"],body[data-aos-duration="1700"] [data-aos] {
    transition-duration: 1.7s
}

[data-aos][data-aos][data-aos-delay="1700"],body[data-aos-delay="1700"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1700"].aos-animate,body[data-aos-delay="1700"] [data-aos].aos-animate {
    transition-delay: 1.7s
}

[data-aos][data-aos][data-aos-duration="1750"],body[data-aos-duration="1750"] [data-aos] {
    transition-duration: 1.75s
}

[data-aos][data-aos][data-aos-delay="1750"],body[data-aos-delay="1750"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1750"].aos-animate,body[data-aos-delay="1750"] [data-aos].aos-animate {
    transition-delay: 1.75s
}

[data-aos][data-aos][data-aos-duration="1800"],body[data-aos-duration="1800"] [data-aos] {
    transition-duration: 1.8s
}

[data-aos][data-aos][data-aos-delay="1800"],body[data-aos-delay="1800"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1800"].aos-animate,body[data-aos-delay="1800"] [data-aos].aos-animate {
    transition-delay: 1.8s
}

[data-aos][data-aos][data-aos-duration="1850"],body[data-aos-duration="1850"] [data-aos] {
    transition-duration: 1.85s
}

[data-aos][data-aos][data-aos-delay="1850"],body[data-aos-delay="1850"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1850"].aos-animate,body[data-aos-delay="1850"] [data-aos].aos-animate {
    transition-delay: 1.85s
}

[data-aos][data-aos][data-aos-duration="1900"],body[data-aos-duration="1900"] [data-aos] {
    transition-duration: 1.9s
}

[data-aos][data-aos][data-aos-delay="1900"],body[data-aos-delay="1900"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1900"].aos-animate,body[data-aos-delay="1900"] [data-aos].aos-animate {
    transition-delay: 1.9s
}

[data-aos][data-aos][data-aos-duration="1950"],body[data-aos-duration="1950"] [data-aos] {
    transition-duration: 1.95s
}

[data-aos][data-aos][data-aos-delay="1950"],body[data-aos-delay="1950"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="1950"].aos-animate,body[data-aos-delay="1950"] [data-aos].aos-animate {
    transition-delay: 1.95s
}

[data-aos][data-aos][data-aos-duration="2000"],body[data-aos-duration="2000"] [data-aos] {
    transition-duration: 2s
}

[data-aos][data-aos][data-aos-delay="2000"],body[data-aos-delay="2000"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2000"].aos-animate,body[data-aos-delay="2000"] [data-aos].aos-animate {
    transition-delay: 2s
}

[data-aos][data-aos][data-aos-duration="2050"],body[data-aos-duration="2050"] [data-aos] {
    transition-duration: 2.05s
}

[data-aos][data-aos][data-aos-delay="2050"],body[data-aos-delay="2050"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2050"].aos-animate,body[data-aos-delay="2050"] [data-aos].aos-animate {
    transition-delay: 2.05s
}

[data-aos][data-aos][data-aos-duration="2100"],body[data-aos-duration="2100"] [data-aos] {
    transition-duration: 2.1s
}

[data-aos][data-aos][data-aos-delay="2100"],body[data-aos-delay="2100"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2100"].aos-animate,body[data-aos-delay="2100"] [data-aos].aos-animate {
    transition-delay: 2.1s
}

[data-aos][data-aos][data-aos-duration="2150"],body[data-aos-duration="2150"] [data-aos] {
    transition-duration: 2.15s
}

[data-aos][data-aos][data-aos-delay="2150"],body[data-aos-delay="2150"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2150"].aos-animate,body[data-aos-delay="2150"] [data-aos].aos-animate {
    transition-delay: 2.15s
}

[data-aos][data-aos][data-aos-duration="2200"],body[data-aos-duration="2200"] [data-aos] {
    transition-duration: 2.2s
}

[data-aos][data-aos][data-aos-delay="2200"],body[data-aos-delay="2200"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2200"].aos-animate,body[data-aos-delay="2200"] [data-aos].aos-animate {
    transition-delay: 2.2s
}

[data-aos][data-aos][data-aos-duration="2250"],body[data-aos-duration="2250"] [data-aos] {
    transition-duration: 2.25s
}

[data-aos][data-aos][data-aos-delay="2250"],body[data-aos-delay="2250"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2250"].aos-animate,body[data-aos-delay="2250"] [data-aos].aos-animate {
    transition-delay: 2.25s
}

[data-aos][data-aos][data-aos-duration="2300"],body[data-aos-duration="2300"] [data-aos] {
    transition-duration: 2.3s
}

[data-aos][data-aos][data-aos-delay="2300"],body[data-aos-delay="2300"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2300"].aos-animate,body[data-aos-delay="2300"] [data-aos].aos-animate {
    transition-delay: 2.3s
}

[data-aos][data-aos][data-aos-duration="2350"],body[data-aos-duration="2350"] [data-aos] {
    transition-duration: 2.35s
}

[data-aos][data-aos][data-aos-delay="2350"],body[data-aos-delay="2350"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2350"].aos-animate,body[data-aos-delay="2350"] [data-aos].aos-animate {
    transition-delay: 2.35s
}

[data-aos][data-aos][data-aos-duration="2400"],body[data-aos-duration="2400"] [data-aos] {
    transition-duration: 2.4s
}

[data-aos][data-aos][data-aos-delay="2400"],body[data-aos-delay="2400"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2400"].aos-animate,body[data-aos-delay="2400"] [data-aos].aos-animate {
    transition-delay: 2.4s
}

[data-aos][data-aos][data-aos-duration="2450"],body[data-aos-duration="2450"] [data-aos] {
    transition-duration: 2.45s
}

[data-aos][data-aos][data-aos-delay="2450"],body[data-aos-delay="2450"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2450"].aos-animate,body[data-aos-delay="2450"] [data-aos].aos-animate {
    transition-delay: 2.45s
}

[data-aos][data-aos][data-aos-duration="2500"],body[data-aos-duration="2500"] [data-aos] {
    transition-duration: 2.5s
}

[data-aos][data-aos][data-aos-delay="2500"],body[data-aos-delay="2500"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2500"].aos-animate,body[data-aos-delay="2500"] [data-aos].aos-animate {
    transition-delay: 2.5s
}

[data-aos][data-aos][data-aos-duration="2550"],body[data-aos-duration="2550"] [data-aos] {
    transition-duration: 2.55s
}

[data-aos][data-aos][data-aos-delay="2550"],body[data-aos-delay="2550"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2550"].aos-animate,body[data-aos-delay="2550"] [data-aos].aos-animate {
    transition-delay: 2.55s
}

[data-aos][data-aos][data-aos-duration="2600"],body[data-aos-duration="2600"] [data-aos] {
    transition-duration: 2.6s
}

[data-aos][data-aos][data-aos-delay="2600"],body[data-aos-delay="2600"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2600"].aos-animate,body[data-aos-delay="2600"] [data-aos].aos-animate {
    transition-delay: 2.6s
}

[data-aos][data-aos][data-aos-duration="2650"],body[data-aos-duration="2650"] [data-aos] {
    transition-duration: 2.65s
}

[data-aos][data-aos][data-aos-delay="2650"],body[data-aos-delay="2650"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2650"].aos-animate,body[data-aos-delay="2650"] [data-aos].aos-animate {
    transition-delay: 2.65s
}

[data-aos][data-aos][data-aos-duration="2700"],body[data-aos-duration="2700"] [data-aos] {
    transition-duration: 2.7s
}

[data-aos][data-aos][data-aos-delay="2700"],body[data-aos-delay="2700"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2700"].aos-animate,body[data-aos-delay="2700"] [data-aos].aos-animate {
    transition-delay: 2.7s
}

[data-aos][data-aos][data-aos-duration="2750"],body[data-aos-duration="2750"] [data-aos] {
    transition-duration: 2.75s
}

[data-aos][data-aos][data-aos-delay="2750"],body[data-aos-delay="2750"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2750"].aos-animate,body[data-aos-delay="2750"] [data-aos].aos-animate {
    transition-delay: 2.75s
}

[data-aos][data-aos][data-aos-duration="2800"],body[data-aos-duration="2800"] [data-aos] {
    transition-duration: 2.8s
}

[data-aos][data-aos][data-aos-delay="2800"],body[data-aos-delay="2800"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2800"].aos-animate,body[data-aos-delay="2800"] [data-aos].aos-animate {
    transition-delay: 2.8s
}

[data-aos][data-aos][data-aos-duration="2850"],body[data-aos-duration="2850"] [data-aos] {
    transition-duration: 2.85s
}

[data-aos][data-aos][data-aos-delay="2850"],body[data-aos-delay="2850"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2850"].aos-animate,body[data-aos-delay="2850"] [data-aos].aos-animate {
    transition-delay: 2.85s
}

[data-aos][data-aos][data-aos-duration="2900"],body[data-aos-duration="2900"] [data-aos] {
    transition-duration: 2.9s
}

[data-aos][data-aos][data-aos-delay="2900"],body[data-aos-delay="2900"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2900"].aos-animate,body[data-aos-delay="2900"] [data-aos].aos-animate {
    transition-delay: 2.9s
}

[data-aos][data-aos][data-aos-duration="2950"],body[data-aos-duration="2950"] [data-aos] {
    transition-duration: 2.95s
}

[data-aos][data-aos][data-aos-delay="2950"],body[data-aos-delay="2950"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="2950"].aos-animate,body[data-aos-delay="2950"] [data-aos].aos-animate {
    transition-delay: 2.95s
}

[data-aos][data-aos][data-aos-duration="3000"],body[data-aos-duration="3000"] [data-aos] {
    transition-duration: 3s
}

[data-aos][data-aos][data-aos-delay="3000"],body[data-aos-delay="3000"] [data-aos] {
    transition-delay: 0
}

[data-aos][data-aos][data-aos-delay="3000"].aos-animate,body[data-aos-delay="3000"] [data-aos].aos-animate {
    transition-delay: 3s
}

[data-aos][data-aos][data-aos-easing=linear],body[data-aos-easing=linear] [data-aos] {
    transition-timing-function: cubic-bezier(.25,.25,.75,.75)
}

[data-aos][data-aos][data-aos-easing=ease],body[data-aos-easing=ease] [data-aos] {
    transition-timing-function: ease
}

[data-aos][data-aos][data-aos-easing=ease-in],body[data-aos-easing=ease-in] [data-aos] {
    transition-timing-function: ease-in
}

[data-aos][data-aos][data-aos-easing=ease-out],body[data-aos-easing=ease-out] [data-aos] {
    transition-timing-function: ease-out
}

[data-aos][data-aos][data-aos-easing=ease-in-out],body[data-aos-easing=ease-in-out] [data-aos] {
    transition-timing-function: ease-in-out
}

[data-aos][data-aos][data-aos-easing=ease-in-back],body[data-aos-easing=ease-in-back] [data-aos] {
    transition-timing-function: cubic-bezier(.6,-.28,.735,.045)
}

[data-aos][data-aos][data-aos-easing=ease-out-back],body[data-aos-easing=ease-out-back] [data-aos] {
    transition-timing-function: cubic-bezier(.175,.885,.32,1.275)
}

[data-aos][data-aos][data-aos-easing=ease-in-out-back],body[data-aos-easing=ease-in-out-back] [data-aos] {
    transition-timing-function: cubic-bezier(.68,-.55,.265,1.55)
}

[data-aos][data-aos][data-aos-easing=ease-in-sine],body[data-aos-easing=ease-in-sine] [data-aos] {
    transition-timing-function: cubic-bezier(.47,0,.745,.715)
}

[data-aos][data-aos][data-aos-easing=ease-out-sine],body[data-aos-easing=ease-out-sine] [data-aos] {
    transition-timing-function: cubic-bezier(.39,.575,.565,1)
}

[data-aos][data-aos][data-aos-easing=ease-in-out-sine],body[data-aos-easing=ease-in-out-sine] [data-aos] {
    transition-timing-function: cubic-bezier(.445,.05,.55,.95)
}

[data-aos][data-aos][data-aos-easing=ease-in-quad],body[data-aos-easing=ease-in-quad] [data-aos] {
    transition-timing-function: cubic-bezier(.55,.085,.68,.53)
}

[data-aos][data-aos][data-aos-easing=ease-out-quad],body[data-aos-easing=ease-out-quad] [data-aos] {
    transition-timing-function: cubic-bezier(.25,.46,.45,.94)
}

[data-aos][data-aos][data-aos-easing=ease-in-out-quad],body[data-aos-easing=ease-in-out-quad] [data-aos] {
    transition-timing-function: cubic-bezier(.455,.03,.515,.955)
}

[data-aos][data-aos][data-aos-easing=ease-in-cubic],body[data-aos-easing=ease-in-cubic] [data-aos] {
    transition-timing-function: cubic-bezier(.55,.085,.68,.53)
}

[data-aos][data-aos][data-aos-easing=ease-out-cubic],body[data-aos-easing=ease-out-cubic] [data-aos] {
    transition-timing-function: cubic-bezier(.25,.46,.45,.94)
}

[data-aos][data-aos][data-aos-easing=ease-in-out-cubic],body[data-aos-easing=ease-in-out-cubic] [data-aos] {
    transition-timing-function: cubic-bezier(.455,.03,.515,.955)
}

[data-aos][data-aos][data-aos-easing=ease-in-quart],body[data-aos-easing=ease-in-quart] [data-aos] {
    transition-timing-function: cubic-bezier(.55,.085,.68,.53)
}

[data-aos][data-aos][data-aos-easing=ease-out-quart],body[data-aos-easing=ease-out-quart] [data-aos] {
    transition-timing-function: cubic-bezier(.25,.46,.45,.94)
}

[data-aos][data-aos][data-aos-easing=ease-in-out-quart],body[data-aos-easing=ease-in-out-quart] [data-aos] {
    transition-timing-function: cubic-bezier(.455,.03,.515,.955)
}

[data-aos^=fade][data-aos^=fade] {
    opacity: 0;
    transition-property: opacity,transform
}

[data-aos^=fade][data-aos^=fade].aos-animate {
    opacity: 1;
    transform: translateZ(0)
}

[data-aos=fade-up] {
    transform: translate3d(0,100px,0)
}

[data-aos=fade-down] {
    transform: translate3d(0,-100px,0)
}

[data-aos=fade-right] {
    transform: translate3d(-100px,0,0)
}

[data-aos=fade-left] {
    transform: translate3d(100px,0,0)
}

[data-aos=fade-up-right] {
    transform: translate3d(-100px,100px,0)
}
 
[data-aos=fade-up-left] {
    transform: translate3d(100px,100px,0)
}

[data-aos=fade-down-right] {
    transform: translate3d(-100px,-100px,0)
}

[data-aos=fade-down-left] {
    transform: translate3d(100px,-100px,0)
}

[data-aos^=zoom][data-aos^=zoom] {
    opacity: 0;
    transition-property: opacity,transform
}

[data-aos^=zoom][data-aos^=zoom].aos-animate {
    opacity: 1;
    transform: translateZ(0) scale(1)
}

[data-aos=zoom-in] {
    transform: scale(.6)
}

[data-aos=zoom-in-up] {
    transform: translate3d(0,100px,0) scale(.6)
}

[data-aos=zoom-in-down] {
    transform: translate3d(0,-100px,0) scale(.6)
}

[data-aos=zoom-in-right] {
    transform: translate3d(-100px,0,0) scale(.6)
}

[data-aos=zoom-in-left] {
    transform: translate3d(100px,0,0) scale(.6)
}

[data-aos=zoom-out] {
    transform: scale(1.2)
}

[data-aos=zoom-out-up] {
    transform: translate3d(0,100px,0) scale(1.2)
}

[data-aos=zoom-out-down] {
    transform: translate3d(0,-100px,0) scale(1.2)
}

[data-aos=zoom-out-right] {
    transform: translate3d(-100px,0,0) scale(1.2)
}

[data-aos=zoom-out-left] {
    transform: translate3d(100px,0,0) scale(1.2)
}

[data-aos^=slide][data-aos^=slide] {
    transition-property: transform
}

[data-aos^=slide][data-aos^=slide].aos-animate {
    transform: translateZ(0)
}

[data-aos=slide-up] {
    transform: translate3d(0,100%,0)
}

[data-aos=slide-down] {
    transform: translate3d(0,-100%,0)
}

[data-aos=slide-right] {
    transform: translate3d(-100%,0,0)
}

[data-aos=slide-left] {
    transform: translate3d(100%,0,0)
}

[data-aos^=flip][data-aos^=flip] {
    backface-visibility: hidden;
    transition-property: transform
}

[data-aos=flip-left] {
    transform: perspective(2500px) rotateY(-100deg)
}

[data-aos=flip-left].aos-animate {
    transform: perspective(2500px) rotateY(0)
}

[data-aos=flip-right] {
    transform: perspective(2500px) rotateY(100deg)
}

[data-aos=flip-right].aos-animate {
    transform: perspective(2500px) rotateY(0)
}

[data-aos=flip-up] {
    transform: perspective(2500px) rotateX(-100deg)
}

[data-aos=flip-up].aos-animate {
    transform: perspective(2500px) rotateX(0)
}

[data-aos=flip-down] {
    transform: perspective(2500px) rotateX(100deg)
}

[data-aos=flip-down].aos-animate {
    transform: perspective(2500px) rotateX(0)
}
</style>
</head>
<%@ include file="top.jsp"%>

<body style="overflow-x: hidden" class="main" data-aos-easing="ease" data-aos-duration="1500" data-aos-delay="0">


<section id="sub" class="start nav">
  <article class="interior scroll_contents" id="interior">
    <div class="interior_bottom">
      <img src="https://gajok.kr/theme/basic/img/pc/sub/start/door_light.png" class="on">
      <div class="txt">
        <img src="https://i.ibb.co/89ZLYw2/jw33.png" class="pc">
        <p>F$는 오랜시간 많은 분들의 사랑을 받아온 브랜드입니다.<br>우리는 고객을 존중하고 고객에게 만족과 감동을 줄 수 있도록 노력한다.<br>우리는 투명하고 효율적인 경영을 통하여 주주의 투자수익을 성실하게 보호한다.</p>
      </div>

      <div class="door">
        <img src="https://gajok.kr/theme/basic/img/pc/sub/start/left_door.png" class="left">
        <img src="https://gajok.kr/theme/basic/img/pc/sub/start/right_door.png" class="right">
      </div>

      <!-- 클래스 on 하면 문 열림 -->
      <div class="window">
        <img src="https://gajok.kr/theme/basic/img/pc/sub/start/left_window.png" class="left">
        <img src="https://gajok.kr/theme/basic/img/pc/sub/start/right_window.png" class="right">
      </div>
    </div>
<script>
//window 요소 가져오기
const windowElement = document.querySelector('.window');
// 화면이 로드될 때 실행할 함수
window.addEventListener('load', function() {
  // window에 on 클래스 추가
  windowElement.classList.add('on');
});
</script>
<script>
    var image_swiper = new Swiper('.image-swiper-container', {
      slidesPerView: 'auto',
      autoplay: {
        delay: 2500,
        disableOnInteraction: false,
      },
      pagination: {
        el: '.image-swiper-pagination',
        type: 'progressbar',
      },
    });
    </script>
  </article>
</section>
<!-- The dots/circles -->
<script type="text/javascript" src="/js/slideShow.js"></script>

<div id="mct_06">

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="/js/jquery.min.js"></script>

<div class="container" align="center">
  <!-- Content here -->
<br>
<br>
<br>
<br>
<h2>창업 박람회</h2>
<div class="slide1" >
  <c:if test="${middleImage == null || middleImage.image1.equals('0')}">
   <ul class="slide-wrap row" >
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="https://www.franchisecoex.co.kr/admin/data/banner/visual_2308210934555.png" alt="슬라이드1">
         </a>
       </li>
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="https://www.franchisesetec.co.kr/admin/data/banner/visual_2311020514263.png" alt="슬라이드2">
         </a>
       </li>
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="https://www.franchisesetec.co.kr/admin/data/banner/visual_2311020532588.png" alt="슬라이드3">
         </a>
       </li>
     </ul>
  </c:if>
  <c:if test="${middleImage != null }">
   <ul class="slide-wrap row" >
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="/files/${middleImage.image1}" alt="슬라이드1">
         </a>
       </li>
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="/files/${middleImage.image2}" alt="슬라이드2">
         </a>
       </li>
       <li class="slide-item cell">
         <a href="#" class="img-box">
           <img src="/files/${middleImage.image3}" alt="슬라이드3">
         </a>
       </li>
     </ul>
  </c:if>
</div>
</div><br>
<br>
<script>
/* 창업 아이템 추천 */ 
window.addEventListener('scroll', function() {
    var scrollPosition = window.scrollY || window.pageYOffset;
    var element = document.querySelector('.right.aos-init');

    if (element) {
        if (scrollPosition > 300) { // 스크롤이 300px 위치에 도달하면
            element.classList.add('aos-animate');
        } else { // 스크롤이 300px 위치를 벗어나면
            element.classList.remove('aos-animate');
        }
    }
});
</script>
<div id="mct_02">
   <div class="area">
      <div class="title">
         <h1>
            F4 <span>스토리</span>
         </h1>
         <p>창업도 공부가 필요하다!</p>
      </div>
      <div class="youtube">
         <iframe width="560" height="315"
            src="https://www.youtube.com/embed/hKVVhnEgY38?si=SzFeWTdQrK0uWn0j"
            title="YouTube video player" frameborder="0"
            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share"
            allowfullscreen></iframe>
      </div>
   </div>
</div>

<h1> </h1>

</div>
</div>
<!-- 리뷰 css -->
<div id="mct_10">
<div class="content" id="content">
<br>
<br>
<br>
<br>
<br>
<br>
                <div class="praise_head t_center">
                </div>
                <div class="praise_flow flow_container abs">
                <div style="width: 100000px; transform: translateX(0px); animation: 249.983s linear 1s infinite normal none running marqueeAnimation-8521062;" class="js-marquee-wrapper"><div class="js-marquee" style="margin-right: 0px; float: left;">
  
  
            <div class="flow_item" data-index="14"><a href="https://www.instagram.com/p/C1s7J7cBPW9/"><img src="https://i.ibb.co/sWGRf0k/Kakao-Talk-20240105-165729685-04.jpg" alt=""></a></div>  
               <div class="flow_item" data-index="0"><img src="https://hanoimacbam.com/img/page/fran/praise_fl01.png" alt=""></div>
            <div class="flow_item" data-index="7"><a href="https://www.instagram.com/p/C1td58hBshL/?igsh=MTMxbGluZHJyOXlybQ%3D%3D"><img src="https://i.ibb.co/t2XJN0m/Kakao-Talk-20240105-165729685-07.jpg" alt=""></a></div>
            
               <div class="flow_item" data-index="1"><img src="https://hanoimacbam.com/img/page/fran/praise_fl02.png" alt=""></div>
               <div class="flow_item" data-index="8"><a href="https://www.instagram.com/p/C1s7z1cBIeX/"><img src="https://i.ibb.co/p0bHYmS/Kakao-Talk-20240105-165729685-01.jpg" alt=""></a></div>
  
               <div class="flow_item" data-index="2"><img src="https://hanoimacbam.com/img/page/fran/praise_fl03.png" alt=""></div><div class="flow_item" data-index="9"><a href="https://www.instagram.com/p/C1s7cE2BgkO/"><img src="https://i.ibb.co/8jfptR5/Kakao-Talk-20240105-165729685-02.jpg" alt=""></a></div>  
  
               <div class="flow_item" data-index="3"><img src="https://hanoimacbam.com/img/page/fran/praise_fl04.png" alt=""></div>
             <div class="flow_item" data-index="10"><a href="https://www.instagram.com/p/C1s7WhYBqAz/"><img src="https://i.ibb.co/JdDm5HY/Kakao-Talk-20240105-165729685-03.jpg" alt=""></a></div>  
               <div class="flow_item" data-index="4"><img src="https://hanoimacbam.com/img/page/fran/praise_fl05.png" alt=""></div>
               <div class="flow_item" data-index="11"><a href="https://www.instagram.com/p/C1td_E_hyx6/"><img src="https://i.ibb.co/chm7ys1/Kakao-Talk-20240105-165729685-06.jpg
            " alt=""></a></div>              
               <div class="flow_item" data-index="5"><img src="https://hanoimacbam.com/img/page/fran/praise_fl06.png" alt=""></div>
              <div class="flow_item" data-index="12"><a href="https://www.instagram.com/p/C1td1HNB64S/"><img src="https://i.ibb.co/Rp4SH5G/Kakao-Talk-20240105-165729685-08.jpg" alt=""></a></div>  
               <div class="flow_item" data-index="6"><img src="https://hanoimacbam.com/img/page/fran/praise_fl07.png" alt=""></div>
             <div class="flow_item" data-index="13"><a href="https://www.instagram.com/p/C1tds3Rhvc9/"><img src="https://i.ibb.co/HVxYk1h/Kakao-Talk-20240105-165729685-09.jpg" alt=""></a></div>            
            </div>
 </div>
 <script>
//기존 요소들을 담고 있는 부모 요소 선택
 const parentContainer = document.querySelector('.js-marquee');

 // 반복 횟수
 const repeatCount = 3;

 // 반복
 for (let i = 0; i < repeatCount; i++) {
     const originalItems = parentContainer.querySelectorAll('.flow_item');
     // 기존 요소들을 복제하여 추가
     originalItems.forEach((item) => {
         const clonedItem = item.cloneNode(true);
         parentContainer.appendChild(clonedItem);
     });
 }
 </script>
</div>
</div>
</div>

<script src="https://unpkg.com/aos@2.3.1/dist/aos.js"></script>
   <script>AOS.init();</script>
</body>
<%@ include file="bottom.jsp"%>