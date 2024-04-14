<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../top2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
/********** root에 추가해야될것 매거진 템플릿   root **********/
:root {
   -toastify-color-light: #fff;
   -toastify-color-dark: #121212;
   -toastify-color-info: #3498db;
   -toastify-color-success: #07bc0c;
   -toastify-color-warning: #f1c40f;
   -toastify-color-error: #e74c3c;
   -toastify-color-transparent: hsla(0, 0%, 100%, .7);
   -toastify-icon-color-info: var(--toastify-color-info);
   -toastify-icon-color-success: var(--toastify-color-success);
   -toastify-icon-color-warning: var(--toastify-color-warning);
   -toastify-icon-color-error: var(--toastify-color-error);
   -toastify-toast-width: 320px;
   -toastify-toast-background: #fff;
   -toastify-toast-min-height: 64px;
   -toastify-toast-max-height: 800px;
   -toastify-font-family: sans-serif;
   -toastify-z-index: 9999; -
   -toastify-text-color-light: #757575;
   -toastify-text-color-dark: #fff;
   -toastify-text-color-info: #fff;
   -toastify-text-color-success: #fff;
   -toastify-text-color-warning: #fff;
   -toastify-text-color-error: #fff;
   -toastify-spinner-color: #616161;
   -toastify-spinner-color-empty-area: #e0e0e0;
   -toastify-color-progress-light: linear-gradient(90deg, #4cd964, #5ac8fa, #007aff, #34aadc, #5856d6,
      #ff2d55);
   -toastify-color-progress-dark: #bb86fc;
   -toastify-color-progress-info: var(--toastify-color-info);
   -toastify-color-progress-success: var(--toastify-color-success);
   -toastify-color-progress-warning: var(--toastify-color-warning);
   -toastify-color-progress-error: var(--toastify-color-error);
}
/********** 매거진 템플릿   root **********/

/********** magazine **********/
p {
   display: block;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
}

/********** magazine **********/
section {
   display: block;
}

/********** magazine **********/
img {
   border-style: none;
}
/********** magazine **********/
img {
   overflow-clip-margin: content-box;
   overflow: clip;
}

/********** magazine **********/
div {
   display: block;
}

/********** magazine **********/
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

/********** magazine **********/
h1, h2, h3, h4, h5, h6, p, span, label {
   margin: 0;
   overscroll-behavior: none -moz-user-select:none -webkit-user-select:none
      -ms-user-select:none user-select:none;
}

/********** magazine **********/
button {
   margin: 0;
   color: black;
   text-align: center;
   outline: none;
   cursor: pointer;
}

/********** magazine **********/
section {
   display: block;
}

/********** magazine **********/
ul {
   display: block;
   list-style-type: disc;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
   padding-inline-start: 40px;
}

/********** magazine **********/
ul, ol, li {
   list-style: none;
}
/********** magazine **********/
ul, ol {
   margin: 0;
   padding: 0;
   border: 0 none;
}

/********** magazine **********/
img {
   border-style: none;
}

/********** magazine **********/
img {
   overflow-clip-margin: content-box;
   overflow: clip;
}

/********** magazine **********/
div {
   display: block;
}

/********** magazine **********/
.css-1hqidh4 {
   display: flex;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
}

button {
   border: 0px solid transparent !important;
   background-color: transparent !important;
}

button, input {
   overflow: visible;
}

*, *:before, *:after {
   box-sizing: border-box;
}

/*매거진 폼 수정 css*/
.h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
   font-family: inherit;
   font-weight: 500;
   line-height: 1.1;
   color: black;
}

/*매거진 폼 수정 css*/
a:-webkit-any-link {
   color: -webkit-link;
   cursor: pointer;
}

/*매거진 폼 수정 css*/
@media screen and (min-width: 972px) {
   .css-h5gv7h {
      padding-top: 7px;
   }
}
/*매거진 폼 수정 css*/
.css-h5gv7h {
   -webkit-flex: 1;
   -ms-flex: 1;
   flex: 1;
   padding-bottom: 0px;
}
/*매거진 폼 수정 css*/
main {
   display: block;
}

/*매거진 폼 수정 css*/
@media screen and (min-width: 972px) {
   .css-1tw7hpa {
      padding-top: 80px;
      gap: 0;
   }
}
/*매거진 폼 수정 css*/
.css-1tw7hpa {
   position: relative;
   display: -webkit-box;
   display: -webkit-flex;
   display: -ms-flexbox;
   display: flex;
   -webkit-flex-direction: column;
   -ms-flex-direction: column;
   flex-direction: column;
   gap: 60px;
   padding-top: 64px;
   overflow-x: hidden;
}

/*매거진 폼 수정 css*/
@media screen and (min-width: 972px) {
   .css-yw8hfl {
      display: -webkit-box;
      display: -webkit-flex;
      display: -ms-flexbox;
      display: flex;
      -webkit-flex-direction: row;
      -ms-flex-direction: row;
      flex-direction: row;
      -webkit-box-pack: center;
      -ms-flex-pack: center;
      -webkit-justify-content: center;
      justify-content: center;
      -webkit-align-items: center;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      -webkit-flex-direction: column;
      -ms-flex-direction: column;
      flex-direction: column;
      max-width: 700px;
      margin: 0 auto;
   }
}

/*매거진 폼 수정 css*/
.css-yw8hfl {
   width: 100%;
}
/*매거진 폼 수정 css*/
@media screen and (min-width: 972px) {
   .css-1b4ljgx {
      margin-top: 0;
      font-size: 16px;
   }
}
/*매거진 폼 수정 css*/
.css-1b4ljgx {
   margin-top: 70px;
   font-weight: 1000;
   color: #3F464C;
}

/*매거진 폼 수정 css*/
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

/*매거진 폼 수정 css*/
.css-podf75 {
   color: #2D343C;
   font-size: 15px;
   font-weight: 500;
   font-weight: 400;
   line-height: normal;
   letter-spacing: -0.408px;
}

/*매거진 폼 수정 css*/

/*매거진 폼 수정 css*/
@media screen and (min-width: 972px) {
   .css-1jtq9c3 {
      padding: 0;
      margin-top: 40px;
   }
}

/*매거진 폼 수정 css*/
.css-1jtq9c3 {
   width: 100%;
   max-width: 100%;
   margin: auto;
   margin-top: 32px;
   padding: 0 16px;
   word-break: keep-all;
}

/*매거진 폼 수정 css*/
.css-1jtq9c3 p {
   color: #191E23 !important;
   font-size: 16px !important;
   line-height: 160% !important;
   word-break: break-all !important;
}

/*매거진 폼 수정 css*/
.css-1jtq9c3 hr {
   margin: 24px 0 !important;
}

/*매거진 폼 수정 css*/
hr {
   box-sizing: content-box;
   height: 0;
   overflow: visible;
}

/*매거진 폼 수정 css*/
b, strong {
   font-weight: bolder;
}

* {
   box-sizing: border-box;
   -webkit-touch-callout: none;
}

/*매거진 폼 수정 css*/
blockquote {
   display: block;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 40px;
   margin-inline-end: 40px;
}

.css-1jtq9c3 {
   width: 100%;
   max-width: 100%;
   margin: auto;
   margin-top: 32px;
   padding: 0 16px;
   word-break: keep-all;
}

.css-1jtq9c3 p {
   color: #191E23 !important;
   font-size: 16px !important;
   line-height: 160% !important;
   word-break: break-all !important;
}

.css-1jtq9c3 blockquote p {
   margin: 0 !important;
   line-height: 1.5 !important;
}

.css-14jdq65 {
   position: relative;
   width: 100%;
   height: 100%;
   overflow: hidden;
   border-radius: 10px;
}

.css-e82ck0 {
   width: 100%;
   height: 100%;
   object-fit: cover;
}
</style>

<main class="css-h5gv7h">
   <div class="css-1tw7hpa">
      <section class="css-yw8hfl">

         <c:if test="${not empty dto}">
            <div>
               <h2 style="font-size: 30px;" class="css-1b4ljgx">${dto.mtitle}</h2>
            </div>
            <br>

            <div class="css-1hqidh4">
               <p class="css-podf75">${dateFormatter.format(dto.reg_date)}</p>
            </div>
            <br>
            <br>

            <div class="css-14jdq65">
               <img src="/files/${dto.mimage}" alt="" class="css-e82ck0">
            </div>

            <article class="css-1jtq9c3">
               <p style="text-align: justify">${dto.content}</p>
            </article>
            <br>
            <br>
            <div class="css-14jdq65">
               <img src="/files/${dto.mimage2}" alt="" class="css-e82ck0">
            </div>

            <article class="css-1jtq9c3">
               <p style="text-align: justify">${dto.content2}</p>
            </article>

         </c:if>
      </section>
   </div>
   <br> <br> <br> <br>
</main>


<%@ include file="../bottom.jsp"%>