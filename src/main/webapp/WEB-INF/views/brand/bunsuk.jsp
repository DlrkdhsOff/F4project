<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../top2.jsp"%>

  <head><script src="/docs/5.3/assets/js/color-modes.js"></script>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.118.2">
    <title>F4</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.3/examples/album/">

    

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">


    <!-- Favicons -->
<link rel="apple-touch-icon" href="/docs/5.3/assets/img/favicons/apple-touch-icon.png" sizes="180x180">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-32x32.png" sizes="32x32" type="image/png">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon-16x16.png" sizes="16x16" type="image/png">
<link rel="manifest" href="/docs/5.3/assets/img/favicons/manifest.json">
<link rel="mask-icon" href="/docs/5.3/assets/img/favicons/safari-pinned-tab.svg" color="#712cf9">
<link rel="icon" href="/docs/5.3/assets/img/favicons/favicon.ico">
<meta name="theme-color" content="#712cf9">


    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        width: 100%;
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }

      .btn-bd-primary {
        --bd-violet-bg: #712cf9;
        --bd-violet-rgb: 112.520718, 44.062154, 249.437846;

        --bs-btn-font-weight: 600;
        --bs-btn-color: var(--bs-white);
        --bs-btn-bg: var(--bd-violet-bg);
        --bs-btn-border-color: var(--bd-violet-bg);
        --bs-btn-hover-color: var(--bs-white);
        --bs-btn-hover-bg: #6528e0;
        --bs-btn-hover-border-color: #6528e0;
        --bs-btn-focus-shadow-rgb: var(--bd-violet-rgb);
        --bs-btn-active-color: var(--bs-btn-hover-color);
        --bs-btn-active-bg: #5a23c8;
        --bs-btn-active-border-color: #5a23c8;
      }

      .bd-mode-toggle {
        z-index: 1500;
      }

      .bd-mode-toggle .dropdown-menu .active .bi {
        display: block !important;
      }
      
      .css-1hqidh4 {
       display: flex;
       flex-direction: row;
       -webkit-box-align: center;
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
       height: 14px;
       background-color: black;
       margin: 0px 6px;
   }
   
   h1, h2, h3, h4, h5, h6, p, span, label {
         margin: 0;
       overscroll-behavior: none -moz-user-select:none -webkit-user-select:none -ms-user-select:none user-select:none;
   }
   
   .btn1 {
       display: inline-block !important;
       background: #ffcd3e !important;
       border-radius: 10px !important;
       padding: 10px 20px !important;
       text-decoration: none;
       style: cursor: pointer !important;
       font-size: 15px;
       color: black;
   }
   
   * {
       box-sizing: border-box;
       -webkit-touch-callout: none;
   }
   
   
     .pagination {
          margin-top: 0px;
          display: flex;
          justify-content: center;
      }

       .pagination a {
          display: inline-block;
          padding: 10px 15px;
          margin: 30px 5px;
          background-color: #ddd;
          text-decoration: none;
          color: black;
          border-radius: 10px;
          transition: background-color 0.3s; /* 마우스 오버 효과를 위한 트랜지션 추가 */
      }

        .pagination a.active {
            background-color: #4CAF50;
            color: white;
        }

        .pagination a:hover:not(.active) {
            background-color: #ddd;
        }
        
           
       .pagination a:not(.active):hover {
           background-color: #45a049;
           color: white;
       } 
       
      .btn-primary {
          --bs-btn-color: #fff;
          --bs-btn-bg: gray;
          --bs-btn-border-color: 4CAF50;
          --bs-btn-hover-color: #fff;
          --bs-btn-hover-bg: 4CAF50;
          --bs-btn-hover-border-color: 4CAF50;
          --bs-btn-focus-shadow-rgb: 49,132,253;
          --bs-btn-active-color: #fff;
          --bs-btn-active-bg: 4CAF50;
          --bs-btn-active-border-color: 4CAF50;
          --bs-btn-active-shadow: inset 0 3px 5px rgba(0, 0, 0, 0.125);
          --bs-btn-disabled-color: #fff;
          --bs-btn-disabled-bg: 4CAF50;
          --bs-btn-disabled-border-color: 4CAF50;
      }  
      
   .btn-check:checked+.btn, .btn.active, .btn.show, .btn:first-child:active, :not(.btn-check)+.btn:active {
       background-color: #4CAF50;
       border-color: #4CAF50;
       }
       
       

     /* 기본순과 창업 비용 높은 순 버튼의 일반 색상 */
     .btn-light.rounded-pill.px-3 {
       color: black !important;
     }
   
     /* 기본순과 창업 비용 높은 순 버튼의 활성화 색상 */
     .btn-light.rounded-pill.px-3:focus,
     .btn-light.rounded-pill.px-3:active {
       background-color: #4CAF50 !important;
       color: white !important;
     }
    </style>

    
  </head>
  <body>
    <svg xmlns="http://www.w3.org/2000/svg" class="d-none">
      <symbol id="check2" viewBox="0 0 16 16">
        <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
      </symbol>
      <symbol id="circle-half" viewBox="0 0 16 16">
        <path d="M8 15A7 7 0 1 0 8 1v14zm0 1A8 8 0 1 1 8 0a8 8 0 0 1 0 16z"/>
      </symbol>
      <symbol id="moon-stars-fill" viewBox="0 0 16 16">
        <path d="M6 .278a.768.768 0 0 1 .08.858 7.208 7.208 0 0 0-.878 3.46c0 4.021 3.278 7.277 7.318 7.277.527 0 1.04-.055 1.533-.16a.787.787 0 0 1 .81.316.733.733 0 0 1-.031.893A8.349 8.349 0 0 1 8.344 16C3.734 16 0 12.286 0 7.71 0 4.266 2.114 1.312 5.124.06A.752.752 0 0 1 6 .278z"/>
        <path d="M10.794 3.148a.217.217 0 0 1 .412 0l.387 1.162c.173.518.579.924 1.097 1.097l1.162.387a.217.217 0 0 1 0 .412l-1.162.387a1.734 1.734 0 0 0-1.097 1.097l-.387 1.162a.217.217 0 0 1-.412 0l-.387-1.162A1.734 1.734 0 0 0 9.31 6.593l-1.162-.387a.217.217 0 0 1 0-.412l1.162-.387a1.734 1.734 0 0 0 1.097-1.097l.387-1.162zM13.863.099a.145.145 0 0 1 .274 0l.258.774c.115.346.386.617.732.732l.774.258a.145.145 0 0 1 0 .274l-.774.258a1.156 1.156 0 0 0-.732.732l-.258.774a.145.145 0 0 1-.274 0l-.258-.774a1.156 1.156 0 0 0-.732-.732l-.774-.258a.145.145 0 0 1 0-.274l.774-.258c.346-.115.617-.386.732-.732L13.863.1z"/>
      </symbol>
      <symbol id="sun-fill" viewBox="0 0 16 16">
        <path d="M8 12a4 4 0 1 0 0-8 4 4 0 0 0 0 8zM8 0a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 0zm0 13a.5.5 0 0 1 .5.5v2a.5.5 0 0 1-1 0v-2A.5.5 0 0 1 8 13zm8-5a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2a.5.5 0 0 1 .5.5zM3 8a.5.5 0 0 1-.5.5h-2a.5.5 0 0 1 0-1h2A.5.5 0 0 1 3 8zm10.657-5.657a.5.5 0 0 1 0 .707l-1.414 1.415a.5.5 0 1 1-.707-.708l1.414-1.414a.5.5 0 0 1 .707 0zm-9.193 9.193a.5.5 0 0 1 0 .707L3.05 13.657a.5.5 0 0 1-.707-.707l1.414-1.414a.5.5 0 0 1 .707 0zm9.193 2.121a.5.5 0 0 1-.707 0l-1.414-1.414a.5.5 0 0 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .707zM4.464 4.465a.5.5 0 0 1-.707 0L2.343 3.05a.5.5 0 1 1 .707-.707l1.414 1.414a.5.5 0 0 1 0 .708z"/>
      </symbol>
    </svg>
    
<script type="text/javascript">
   
   function popUp() {
      window.open("brandform.do", "BrandForm", "width=800, height=900");
   }    
</script>

<!-- 페이지 번호 -->
<script type="text/javascript">
document.addEventListener("DOMContentLoaded", function () {
    var paginationLinks = document.querySelectorAll('.pagination a');

    paginationLinks.forEach(function (link) {
        // 현재 URL에서 'pageNum'이라는 쿼리 매개변수를 가져옴
        var currentPage = new URLSearchParams(window.location.search).get('pageNum');

        // 클릭한 페이지 번호 또는 현재 페이지에 'active' 클래스 추가
        if ((link.getAttribute('href').includes('pageNum=1') && !currentPage) || link.getAttribute('href').includes('pageNum=' + currentPage)) {
            link.classList.add('active');
        }

        link.addEventListener('click', function (event) {
            event.preventDefault();

            // 모든 페이지 번호에서 'active' 클래스 제거
            paginationLinks.forEach(function (otherLink) {
                otherLink.classList.remove('active');
            });

            // 클릭한 페이지 번호에 'active' 클래스 추가
            link.classList.add('active');

            // 페이지로 이동
            window.location.href = link.getAttribute('href');
        });
    });
});
</script>

<script>
document.addEventListener("DOMContentLoaded", function () {
    var sortByParam = new URLSearchParams(window.location.search).get('sortBy');

    if (sortByParam) {
        document.getElementById('btnHighCost').classList.add('active');

        document.getElementById('btnDefault').classList.remove('active');
    } else {
        document.getElementById('btnDefault').classList.add('active');

        document.getElementById('btnHighCost').classList.remove('active');
    }

});
</script>

<!-- 종류 버튼  -->
<script>
document.addEventListener("DOMContentLoaded", function () {
  // 로컬 스토리지에서 활성화된 탭 정보 가져오기
  var activeTab = localStorage.getItem("activeTab");

  // 각 버튼에 active 클래스를 추가하여 활성화된 버튼을 표시
  var tabButtons = document.querySelectorAll('.btn.btn-primary.my-2');
  
  tabButtons.forEach(function (button) {
    button.addEventListener('click', function () {
      // 클릭한 버튼의 href 속성에서 특정 문자열을 추출
      var clickedTab = button.getAttribute('href').split('=')[1];
      
      // 현재 클릭한 탭을 로컬 스토리지에 저장
      localStorage.setItem("activeTab", clickedTab);

      // 모든 버튼에서 'active' 클래스 제거
      tabButtons.forEach(function (otherButton) {
        otherButton.classList.remove("active");
      });

      // 클릭한 버튼에 'active' 클래스 추가
      button.classList.add("active");
    });

    // 버튼의 href 속성에서 특정 문자열을 추출
    var tab = button.getAttribute('href').split('=')[1];

    // 현재 저장된 탭 정보와 일치하는 경우 'active' 클래스 추가
    if (tab === activeTab) {
      button.classList.add('active');
    }
  });
});
</script>
   
<main>
   
   <br><br><br><br><br><br><br>
  <section class="py-5 text-center container">
    <div class="row py-lg-5">
      <div class="col-lg-6 col-md-8 mx-auto">
        <h1 style="font-size:40px; font-weight:500 !important;"class="fw-light">브랜드 찾기</h1><br><br><br> 
      </div>
    </div>
  </section>

<script>
    var receivedTablename = "${param.tablename}";
    function clickButtonByTablename(tablename) {
        var button = document.getElementById(tablename);
        if (button) {
            var buttons = document.querySelectorAll('.btn-tab');
            buttons.forEach(function(otherButton) {
                if (otherButton !== button) {
                    otherButton.classList.remove('active');
                }
            });
            var isActive = button.classList.contains('active');
            if (!isActive) {
                button.classList.add('active');
            }
        }
    }
    document.addEventListener('DOMContentLoaded', function() {
        clickButtonByTablename(receivedTablename);
    });
</script>

<div class="container">
    <div style="justify-content: center; display: flex;" class="text-start">
        <p>
            <a href="bunsuk_do?tablename=all" id="all" onclick="clickButtonByTablename('all')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">전체</a>&nbsp;
            <a href="bunsuk_do?tablename=chicken" id="chicken" onclick="handleButtonClick('chicken')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">치킨</a>&nbsp;
            <a href="bunsuk_do?tablename=pizza" id="pizza" onclick="handleButtonClick('pizza')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">피자</a>&nbsp;
            <a href="bunsuk_do?tablename=jokbal_Bossam" id="jokbal_Bossam" onclick="handleButtonClick('jokbal_Bossam')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">족발/보쌈</a>&nbsp;
            <a href="bunsuk_do?tablename=japanese" id="japanese" onclick="handleButtonClick('japanese')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">일식</a>&nbsp;
            <a href="bunsuk_do?tablename=chinese" id="chinese" onclick="handleButtonClick('chinese')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">중식</a>&nbsp;         
            <a href="bunsuk_do?tablename=korean" id="korean" onclick="handleButtonClick('korean')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">한식</a>&nbsp;
            <a href="bunsuk_do?tablename=western" id="western" onclick="handleButtonClick('western')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">양식</a>&nbsp;
            <a href="bunsuk_do?tablename=snack" id="snack" onclick="handleButtonClick('snack')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">분식</a>&nbsp;
            <a href="bunsuk_do?tablename=pub" id="pub" onclick="handleButtonClick('pub')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">주점</a>&nbsp;
            <a href="bunsuk_do?tablename=fastFood" id="fastFood" onclick="handleButtonClick('fastFood')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">패스트푸드</a>&nbsp;
            <a href="bunsuk_do?tablename=asian" id="asian" onclick="handleButtonClick('asian')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">아시안</a>&nbsp;            
            <a href="bunsuk_do?tablename=dessert" id="dessert" onclick="handleButtonClick('dessert')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">디저트</a>&nbsp;
         <a href="bunsuk_do?tablename=coffee" id="coffee" onclick="handleButtonClick('coffee')" style="font-size:15px; text-decoration: none; color:white;" class="btn btn-primary my-2 btn-tab">커피</a>
        </p>
    </div>
</div>
<br><br><br>

<div style="padding:115px;" class="d-flex gap-2 justify-content-end py-5">
   <c:if test="${empty tablename}">
     <button id="btnDefault" style="font-size:13px;" onclick="window.location='bunsuk_do'" class="btn btn-light rounded-pill px-3" type="button">기본순</button>
   </c:if>
   <c:if test="${not empty tablename}">
     <button id="btnDefault" style="font-size:13px;" onclick="window.location='bunsuk_do?tablename=${tablename}'" class="btn btn-light rounded-pill px-3" type="button">기본순</button>
   </c:if>
   
   <c:if test="${empty tablename}">
     <button id="btnHighCost" style="font-size:13px;" onclick="window.location='bunsuk_do?sortBy=1'" class="btn btn-light rounded-pill px-3" type="button">창업 비용 높은 순</button>
   </c:if>
   <c:if test="${not empty tablename}">
     <button id="btnHighCost" style="font-size:13px;" onclick="window.location='bunsuk_do?sortBy=1&tablename=${tablename}'" class="btn btn-light rounded-pill px-3" type="button">창업 비용 높은 순</button>
   </c:if>
</div>
  

        <div style="background-color:white !important;" class="album py-5 bg-body-tertiary">
            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <c:forEach var="dto" items="${listBrand}">
                        <div class="col">
                            <div class="card shadow-sm">
                                <div class="bd-placeholder-img card-img-top" style="width:100%; height:225;">
                                    <a href="bunsukDetail.do?bnum=${dto.bnum}"><img
                                            src="/files/${dto.bimage}" style="width:100%; height:100%;"></a>
                                </div>
                                <div class="card-body">
                                    <p style="font-size:15px;" class="css-1nybzwc">${dto.storeName}</p>
                                    <div class="css-1hqidh4">
                                        <p class="css-1nybzwc">${dto.tablename}</p>
                                        <div class="css-1yn5oca">
                                        </div>
                                        <p class="css-1nybzwc">면적 : ${dto.area} m²</p>
                                    </div>
                                    <div class="css-1hqidh4">
                                        <p class="css-1nybzwc">주소 : ${dto.address}</p>
                                        <div class="css-1yn5oca">
                                        </div>                                        
                                        <p class="css-1nybzwc">창업비용 :</p>&nbsp;
                                        <p class="css-1nybzwc"><fmt:formatNumber value="${dto.total}" pattern="###,###"/></p>
                                    </div>
                                    <div class="css-1hqidh4">
                                        <p class="css-1nybzwc">화폐단위 : (천 단위)</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                
               <br><br><br><br>       
                <!-- Pagination -->
<!-- Pagination -->
<div class="pagination">
    <c:if test="${count > 0}">
        <c:if test="${startPage > pageBlock}">
            <c:url var="prevPage" value="bunsuk_do">
                <!-- 변경: 전체 버튼을 위한 파라미터도 포함 -->
                <c:param name="tablename" value="${tablename}" />
                <c:param name="pageNum" value="${startPage - 1}" />
                <c:param name="sortBy" value="${param.sortBy}" />
                
            </c:url>
            <a href="${prevPage}">이전</a>
        </c:if>
        <c:forEach var="i" begin="${startPage}" end="${endPage}">
            <c:url var="pageNumber" value="bunsuk_do">
                <!-- 변경: 전체 버튼을 위한 파라미터도 포함 -->
                <c:param name="tablename" value="${tablename}" />
                <c:param name="pageNum" value="${i}" />
                <c:param name="sortBy" value="${param.sortBy}" />
                
            </c:url>
            <a href="${pageNumber}" class="${i == currentPage ? 'active' : ''}">${i}</a>
        </c:forEach>
        <c:if test="${endPage < pageCount}">
            <c:url var="nextPage" value="bunsuk_do">
                <!-- 변경: 전체 버튼을 위한 파라미터도 포함 -->
                <c:param name="tablename" value="${tablename}" />
                <c:param name="pageNum" value="${endPage + 1}" />
                  <c:param name="sortBy" value="${param.sortBy}" />
                
            </c:url>
            <a href="${nextPage}">다음</a>
        </c:if>
    </c:if>
</div>
         
            </div>
        </div>
    </main>
    

<footer class="text-body-secondary py-5">
  <div class="container">
    <p class="float-end mb-1">
      <a style="text-decoration: none; font-size:15px" href="#">위로갈래?(그럼눌러)</a>
    </p>
  </div>
</footer><br><br><br><br>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

    </body>
<%@ include file="../bottom.jsp"%>