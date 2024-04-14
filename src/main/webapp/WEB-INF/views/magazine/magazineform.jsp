<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../top2.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<style>
 /********** root에 추가해야될것 매거진 템플릿   root **********/
:root{   
    -toastify-color-light: #fff ;
    -toastify-color-dark: #121212 ;
    -toastify-color-info: #3498db ;
    -toastify-color-success: #07bc0c ;
    -toastify-color-warning: #f1c40f ;
    -toastify-color-error: #e74c3c ;
    -toastify-color-transparent: hsla (0, 0%,100%,.7 );
    -toastify-icon-color-info: var (--toastify-color-info);
    -toastify-icon-color-success: var (--toastify-color-success);
    -toastify-icon-color-warning: var (--toastify-color-warning);
    -toastify-icon-color-error: var (--toastify-color-error);
    -toastify-toast-width: 320px ;
    -toastify-toast-background: #fff ;
    -toastify-toast-min-height: 64px ;
    -toastify-toast-max-height: 800px ;
    -toastify-font-family: sans-serif ;
    -toastify-z-index: 9999; --toastify-text-color-light: #757575 ;
    -toastify-text-color-dark: #fff ;
    -toastify-text-color-info: #fff ;
    -toastify-text-color-success: #fff;
    -toastify-text-color-warning: #fff;
    -toastify-text-color-error: #fff ;
    -toastify-spinner-color: #616161 ;
    -toastify-spinner-color-empty-area: #e0e0e0 ;
    -toastify-color-progress-light: linear-gradient (90deg, #4cd964,
   #5ac8fa, #007aff, #34aadc, #5856d6, #ff2d55 );
    -toastify-color-progress-dark: #bb86fc ;
    -toastify-color-progress-info: var (--toastify-color-info);
    -toastify-color-progress-success: var (--toastify-color-success);
    -toastify-color-progress-warning: var (--toastify-color-warning);
    -toastify-color-progress-error: var (--toastify-color-error);
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
.css-9bt47r {
   display: flex;
   flex-direction: column;
   gap: 40px;
   padding: 40px 16px; /**********첫번째는 상단 두번째는 좌 우 세번 째는 하단 패딩 크기를 
    조정한다. **********/
}

@media screen and (min-width: 972px) {
   .css-9bt47r {
      gap: 50px;
      max-width: 900px;
      margin: 50px auto;
      padding: 40px 16px 120px; /********** media 퀴리문 먹히는거 확인된 
    쿼리문으로 작동됨    .css-9bt47r는 메거진 form 크기 조정 **********/
   }
}

/********** magazine **********/
section {
   display: block;
}

/********** magazine **********/
.css-1mn0t8n {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   -webkit-box-align: center;
   align-items: center;
   width: 100%;
   height: 40px;
   padding: 8px 0px;
   margin-bottom: 8px;
}

/********** magazine **********/
@media ( min-width : 972px) {
   .css-di384q {
      font-size: 20px;
   }
}

/********** magazine **********/
.css-di384q {
   font-size: 18px;
   font-weight: 500;
   font-weight: 700;
   color: #191E23;
   line-height: 140%;
   word-break: keep-all;
}

/********** magazine **********/
.css-1gmohfh {
   display: flex;
   -webkit-box-align: center;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   align-items: flex-start;
   gap: 19px;
   height: 100%;
   margin: 0px -16px;
   white-space: nowrap;
}
/********** magazine **********/
.css-xj8xir {
   flex: 1 0 0%;
   min-width: 240px;
}

/********** magazine **********/
@media ( min-width : 972px) {
   .css-xj8xir {
      max-width: 290px;
   }
}

/********** magazine **********/
.css-15kie03 {
   flex: 1 0 0%;
   min-width: 240px;
}

/********** magazine **********/
@media ( min-width : 972px) {
   .css-15kie03 {
      max-width: 286px;
   }
}

/********** magazine **********/
@media ( min-width : 972px) {
   .css-15van8s {
      font-size: 18px;
      font-weight: 500;
   }
}

/********** magazine **********/
.css-137w4sx {
   position: absolute;
   top: 50%;
   left: 50%;
   width: 100%;
   height: 100%;
   border-radius: 4px;
   transform: translate(-50%, -50%);
   transition: all 400ms ease 0s;
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
.css-xda5ep {
   margin-top: 12px;
}
/********** magazine **********/
div {
   display: block;
}
/********** magazine **********/
.css-15van8s {
   max-width: 100%;
   font-size: 16px;
   font-weight: 500;
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   overflow-wrap: break-word;
   -webkit-box-orient: vertical;
   white-space: break-spaces;
   -webkit-line-clamp: 2;
   line-height: 140%;
   letter-spacing: -0.408px;
}
/********** magazine **********/
.css-hkh81z {
   margin-top: 8px;
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


/********** magazine **********/
.css-podf75 {
   color: rgb(45, 52, 60);
   font-size: 14px;
   font-weight: 400;
   line-height: normal;
   letter-spacing: -0.408px;
}

/********** magazine **********/
h1, h2, h3, h4, h5, h6, p, span, label {
   margin: 0;
   overscroll-behavior: none -moz-user-select:none -webkit-user-select:none
      -ms-user-select:none user-select:none;
}

/********** magazine **********/
@media screen and (min-width: 972px) {
   .css-1mn0t8n {
      height: auto;
      padding: 0px;
      margin-bottom: 20px;
   }
}
/********** magazine **********/
.css-wizawe {
   display: -webkit-box;
   display: -webkit-flex;
   display: -ms-flexbox;
   display: flex;
   -webkit-flex-direction: row;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-box-pack: justify;
   -webkit-justify-content: space-between;
   justify-content: space-between;
   -webkit-align-items: center;
   -webkit-box-align: center;
   -ms-flex-align: center;
   align-items: center;
   -webkit-column-gap: 15px;
   column-gap: 15px;
}

/********** magazine **********/
.css-djcz7n {
   display: -webkit-box;
   display: -webkit-flex;
   display: -ms-flexbox;
   display: flex;
   -webkit-flex-direction: row;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-align-items: flex-end;
   -webkit-box-align: flex-end;
   -ms-flex-align: flex-end;
   align-items: flex-end;
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
@media screen and (min-width: 972px) {
   .css-1evhplz {
      display: flex;
      flex-direction: row;
      -webkit-box-pack: justify;
      justify-content: space-between;
      -webkit-box-align: center;
      align-items: flex-start;
      gap: 30px;
   }
}

/********** magazine **********/
@media screen and (min-width: 972px) {
   .css-1mipwqs {
      flex: 110%;
   }
}
/********** magazine **********/
section {
   display: block;
}

/********** magazine **********/
.css-wizawe {
   display: -webkit-box;
   display: -webkit-flex;
   display: -ms-flexbox;
   display: flex;
   -webkit-flex-direction: row;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-box-pack: justify;
   -webkit-justify-content: space-between;
   justify-content: space-between;
   -webkit-align-items: center;
   -webkit-box-align: center;
   -ms-flex-align: center;
   align-items: center;
   -webkit-column-gap: 15px;
   column-gap: 15px;
}

/********** magazine **********/
@media screen and (min-width: 972px) {
   .css-di384q {
      font-size: 20px;
   }
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
.css-10g4v0j {
   display: flex;
   flex-direction: column;
   gap: 25px;
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
@media screen and (min-width: 972px) {
   .css-1z0p913 {
      -webkit-box-pack: justify;
      justify-content: space-between;
   }
}
/********** magazine **********/
.css-1z0p913 {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   gap: 12px;
}

/********** magazine **********/
.css-175k8sb {
   position: relative;
   width: 142px;
}

/********** magazine **********/
.css-14kvhi5 {
   width: 100%; /* 부모 요소가 꽉 차도록 설정 */
   height: auto; /* 높이를 자동으로 설정하여 가로세로 비율을 유지 */
   border: 1px solid rgb(238, 238, 238);
   border-radius: 6px;
   overflow: hidden; /* 필요한 경우만 사용 */
}

/********** magazine **********/
.css-2xhrgs {
   position: relative;
   width: 100%;
   height: 100%;
   padding-top: 56.25%;
   overflow: hidden;
   border-radius: 6px;
   text-align: center; /* 이 부분을 삭제하거나 수정해보세요. */
}
/* 이미지 자체에 대한 스타일 수정 */
.css-14kvhi5 img {
   display: block; /* 이미지를 블록 수준 요소로 설정하여 부모 요소의 영향을 받도록 함 */
   width: 100%; /* 이미지가 부모 요소에 꽉 차도록 설정 */
}
/********** magazine **********/
.css-2xhrgs::before {
   content: "";
   position: absolute;
   inset: 0px;
   opacity: 0;
   z-index: 2;
   border-radius: 6px; /* 이 부분을 수정하여 border-radius 속성을 삭제하거나 0으로 설정합니다. */
   transition: all 400ms ease 0s;
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
.css-82a6rk {
   flex: 1 1 0%;
}

/********** magazine **********/
div {
   display: block;
}

/********** magazine **********/
@media screen and (min-width: 972px) {
   .css-15van8s {
      font-size: 18px;
      font-weight: 500;
   }
}
/********** magazine **********/
.css-15van8s {
   max-width: 100%;
   font-size: 16px;
   font-weight: 500;
   overflow: hidden;
   text-overflow: ellipsis;
   display: -webkit-box;
   overflow-wrap: break-word;
   -webkit-box-orient: vertical;
   white-space: break-spaces;
   -webkit-line-clamp: 2;
   line-height: 140%;
   letter-spacing: -0.408px;
}
/********** magazine **********/
.css-j9a02z {
   margin-top: 6px;
}
/********** magazine **********/
.css-1hqidh4 {
   display: flex;
   -ms-flex-direction: row;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
}

/********** magazine **********/

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
.css-xj8xir {
    flex: 1 0 0%;
    min-width: 280px;
}

/*매거진 폼 수정 css*/
.css-1evhplz {
    display: flex;
    flex-direction: row;
    gap: 30px;
}

/*매거진 폼 수정 css*/
main {
    display: block;
}

</style>

<style>
button {
   border: 0px solid transparent !important;
   background-color: transparent !important;
   
}

button, input {
    overflow: visible;
}

</style>

<br><br><br><br>
<div class="css-9bt47r">
   <section>
      <div class="css-1mn0t8n">
         <div class="css-wizawe">
            <div class="css-djcz7n">
               <div class="css-di384q">새로 올라온 아티클</div>
            </div>
         </div>
      </div>

      <c:choose>
         <c:when test="${not empty list}">
             <ul class="css-1gmohfh">
             <c:forEach var="dto" items="${list}" varStatus="status">
                 
                     <li class="css-xj8xir">


                  <a href="magzinedetail.do?mnum=${dto.mnum}" class="css-15kie03">
                     <div class="css-14kvhi5">
                        <div class="css-2xhrgs">
                           <img src="/files/${dto.mimage}" alt="" class="css-137w4sx">
                        </div>
                     </div>
                     <div class="css-xda5ep">
                        <h3 class="contentTitle css-15van8s">${dto.mtitle}</h3>
                     </div>
                     <div class="css-hkh81z">
                        <div class="css-1hqidh4">
                           <p class="css-podf75">${dto.readcount}조회 / ${dateFormatter.format(dto.reg_date)}</p>
                        </div>
                     </div>
                  </a>
               </li>
         </c:forEach>
      </ul>
     </c:when>
         <c:otherwise>
            <p style="font-size:20px">등록된 게시물이 없습니다.</p>
         </c:otherwise>
      </c:choose>
      <div align="center">
      <c:if test="${count > 0}">
      <c:if test="${startPage > pageBlock}">
         <a href="magazineform.do?pageNum=${startPage-3}">[이전]</a>
      </c:if>
      <c:forEach var="i" begin="${startPage}" end="${endPage}">
         <a href="magazineform.do?pageNum=${i}">[${i}]</a>
      </c:forEach>
      <c:if test="${endPage < pageCount}">
         <a href="magazineform.do?pageNum=${startPage+3}">[다음]</a>
      </c:if>
   </c:if>
      </div>
   </section>
       
   <div class="css-1evhplz"></div>

  <div class="css-1evhplz">
      <section class="css-1mipwqs">
         <div class="css-1mn0t8n">
            <div class="css-wizawe">
               <div class="css-djcz7n">
                  <div class="css-di384q">추천 아티클</div>
               </div>
            </div>
         </div>
              <ul class="css-10g4v0j">
              <c:forEach var="dto" items="${list2}" varStatus="status">
              <c:if test="${status.index lt 3}">
                  <li>
                     <a href="magzinedetail.do?mnum=${dto.mnum}" class="css-1z0p913">
                     
                     <div class="css-175k8sb">
                        <div class="css-14kvhi5">
                           <div class="css-2xhrgs">
                              <img src="/files/${dto.mimage}" alt="" class="css-137w4sx">
                           </div>
                        </div>
                     </div>
                     <div class="css-82a6rk">
                        <h3 class="contentTitle css-15van8s">${dto.mtitle}</h3>
                        <div class="css-j9a02z">
                           <div class="css-1hqidh4">
                             <p class="css-podf75">${dto.readcount}조회 / ${dateFormatter.format(dto.reg_date)}</p>
                           </div>
                        </div>
                     </div>
                  </a>
               </li>
               </c:if>
         </c:forEach>
              
      </ul>
   </section>


       <section class="css-1mipwqs">
         <div class="css-1mn0t8n">
            <div class="css-wizawe">
               <div class="css-djcz7n">
                  <div class="css-di384q">인기 아티클</div>
               </div>
            </div>
         </div>
             <ul class="css-10g4v0j">
                <c:forEach var="dto" items="${popularArticles1}" varStatus="status">
               <li>
                  <a href="magzinedetail.do?mnum=${dto.mnum}" class="css-1z0p913">
                        <div class="css-175k8sb">
                            <div class="css-14kvhi5">
                                <div class="css-2xhrgs">
                                    <img src="/files/${dto.mimage}" alt="" class="css-137w4sx">
                                </div>
                            </div>
                        </div>
                        <div class="css-82a6rk">
                            <h3 class="contentTitle css-15van8s">${dto.mtitle}</h3>
                            <div class="css-j9a02z">
                                <div class="css-1hqidh4">
                                    <p class="css-podf75">${dto.readcount}조회 / ${dateFormatter.format(dto.reg_date)}</p>
                                </div>
                            </div>
                        </div>
                    </a>
                </li>
            </c:forEach>
        </ul>
    </section>
</div>
</div>   
<br><br>
   <%@ include file="../bottom.jsp"%>