<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<style>
.btn1 {
    display: inline-block !important;
    background: #ffcd3e !important; 
    border-radius: 10px !important;   
    padding: 10px 20px !important; 
    style: cursor: pointer !important;
    text-decoration: none !important;
    font-size:15px;
    color:black;
    font-family: 'Noto Sans KR', sans-serif;
}

.css-it8fze {
    display: flex !important;
    flex-direction: row !important;
    -webkit-box-align: center !important;
    align-items: center !important;
    gap: 15px !important;
}  

.css-1c8isl7 {
    top: 0px !important;
}

.btn1:hover {
    text-decoration: none !important;
}


</style>

<script type="text/javascript">

function membership() {
    window.open("dong2.do", "membership", "width=700, height=700")
 }

</script>
<script>
   function reAccept(){
      window.open("saup.do", "saup", "width=700, height=700")
   }
   
   function brandSearch(searchBrand, currentPageUrl){
         location.href="brandSearch.do?searchBrand="+searchBrand+"&currentPageUrl="+currentPageUrl;
      }
</script>

<script>
function beforeMypage() {
    window.open("beforeMypage.do", "pay", "width=500, height=500")
 }
</script>

<head>
    <title>F4</title>
    <link rel="icon" href="https://i.ibb.co/Wxv3M0D/son01.jpg" type="image/jpeg">
    <link rel="stylesheet" type="text/css" href="/css/f4.css" >
    <link rel="stylesheet" type="text/css" href="/css/style.css">
   <link rel="stylesheet" type="text/css" href="/css/listt.css">
   <link rel="stylesheet" type="text/css" href="/css/listtt.css">
</head>

<c:set var="isLogin" value="${false}" />
<c:if test="${!empty loginMember}">
   <c:set var="isLogin" value="${true}" />
</c:if>

<c:set var="isSaup" value="${false}" />
<c:if test="${!empty saup}">
   <c:set var="isSaup" value="${true}" />
</c:if>

<body>
    <script type="text/javascript" async="" src="https://www.googletagmanager.com/gtag/js?id=G-R6J3ZGR5YV&amp;l=dataLayer&amp;cx=c"></script>
    <script async="" src="https://www.clarity.ms/s/0.7.20/clarity.js"></script>
    <script async="" src="https://www.clarity.ms/tag/4j8899d9og?ref=gtm2"></script>
    <script src="https://pagead2.googlesyndication.com/pagead/managed/js/adsense/m202312070101/show_ads_impl_fy2021.js" id="google_shimpl"></script>
    <script src="https://buttr.dev/butter.js" data-site-id="widnqoywgb" async=""></script>
    <script async="" src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-8921050991097615" crossorigin="anonymous" data-checked-head="true"></script>
    <div class="css-1iwk1g9">
        <header data-cy="mfch-gnb" class="css-1c8isl7">
            <div class="css-ppjb5q">
                <div class="css-1dbjdmt">
                    <a data-cy="mfch-home-logo" href="">
                        <div class="css-1l34kjw">
                            <a href="main.do">  
                            <img src="https://i.ibb.co/3rpXWj2/Kakao-Talk-20231219-160424996-01.png" style="width:100%; height:44px;" alt="F4 로고">
                            </a>
                        </div>
                    </a>
                    <nav class="css-1dvrgo5" >
                        <ul data-cy="mfch-main-menu" class="css-t6ly1j" >
                            <li>
                                <button class="css-16zu9k" style="cursor: pointer;" onClick="window.location='main.do'">홈</button>
                            </li>
                            <li>
                                 <button class="css-16zu9k" style="cursor: pointer;" onClick="window.location='sangkwon.do'">상권정보
                                </button>
                            </li>
                            <li>
                                 <button class="css-16zu9k" style="cursor: pointer;" onClick="window.location='brand.do'">브랜드 정보
                                </button>
                            </li>
                            <li>
                                <button class="css-16zu9k" style="cursor: pointer;" onClick="window.location='magazineform.do'">매거진</button>
                            </li>
                            <li>
                                <button class="css-16zu9k" style="cursor: pointer;" onClick="window.location='ranking_do'">랭킹</button>
                            </li>
                        </ul>
                      <div class="css-c9fies">
                        <ul>
                  <li style="flex: 1; display: flex; align-items: center;">
                    <a onclick="brandSearch(searchForm.searchBrand.value, searchForm.currentPageUrl.value)">
                          <img style="width:100% !important;" src="https://i.ibb.co/B6VZwdK/Kakao-Talk-20231219-160424996-02.png" alt="" width="24" height="24" class="css-111o5ku">
                      </a>
                      <form action="brandSearch.do" method="get" name="searchForm" id="searchForm" style="color: black;">
                          <input type="text" class="css-n5fagy" placeholder="어떤 창업 아이템을 찾고 계세요?" id="searchBrand" name="searchBrand">
                          <input type="hidden" id="currentPageUrl" name="currentPageUrl" value="">
                      </form>
                  </li>
                  </ul>
                  </div>
                  <script>
                     document.addEventListener("DOMContentLoaded", function() {
                         document.getElementById('currentPageUrl').value = window.location.href;
                     });
                  </script>
                        
                    </nav>
                </div>
                <div class="css-19kqqz7">
                    <ul data-cy="mfch-signout-menu" class="css-it8fze">
                        
                       <c:if test="${isLogin}">
                       <c:if test="${loginMember.id != 'admin'}">
                           <li>
                                 <a onclick="beforeMypage()">
                                    <img src="https://i.ibb.co/6FFptgg/loginimage01.png" style="height: 45px !important;" alt="loginimage">
                                 </a>
                            </li>
                      </c:if>
                        <li><a href="logout.do" class="btn1">로그아웃 </a></li>
                        <c:if test="${loginMember.id != 'admin'}">
                         <c:if test="${isSaup}">
                         <c:if test="${accept == '2'}">
                                 <li><a onclick="pay()"
                              style="cursor: pointer;" class="btn1">결제하기</a></li>
                           <li class="nav-item">
                                <a href="brandadmin.do"><img width="30" height="30" src="data:image/png;base64,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"></a>
                          </li>
                          </c:if>
                               </c:if>
                               <c:if test="${accept == '2'}">
                                 <li><a onclick="reAccept()" style="cursor: pointer;"
                                    class="btn1">재인증</a></li>
                              </c:if>
                               <c:if test="${!isSaup}">
                                 <!-- <li><a href="saup.do"
                                    style="cursor: pointer;" class="btn1">브랜드 관리자 로그인</a></li> -->
                             </c:if>
                             </c:if>
                     </c:if> 
                     <c:if test="${!isLogin}">
                        <li><a href="login.do" class="btn1">로그인</a></li>
                        <li><a onClick="javascript:membership()"
                     style="cursor: pointer;" class="btn1">회원가입</a></li>
                     </c:if>
                     
                     <c:if test="${loginId == 'admin'}">
                     <hr class="my-3">
                           <li class="nav-item">
                             <a href="adminn.do"><img width="30" height="30" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAMwAAADACAMAAAB/Pny7AAAAllBMVEUAAAD///+sq7F4uet4doAeHR+OjZKwr7W1tbVubHUuLTEgHyJCQUYxMTUODg9yseCDgofl5eWAfohLSlAQGR97vvNnn8lpaW02VGoZGRtjY2ZxcHR8e4GVlJpSUVQ4NzyBx/5XhqonPE0uR1pZV19tp9UUICchM0Jfk7vu7u5Faod6eno7WnMdLDmH0P+dnKLQ0NBQe5xhp+CQAAAFXklEQVR4nO3d63qaQBAGYIoKxQMQjQdiUCNITGyqvf+ba56CYYRZWMjuAna+n1ORfWticGZV7Ue1PGgK81BxcRph7gpjDydSM7QVYry1b0iMv/YUYgaGKTXGQC1GlxjCEOYGI/qXpVGMvxYav0nMUvBfSW3ZHMYQbdE0ozGMKx7jEoYwKMYOQPbxmmApYJb2sGS3AhM5aXqLeJlOLy0d4tIBlJy4tOiBQ6NWYB7nvTQJBlSuK3dg7YpJM38kDGEIQxjCEIYwhCEMYQhDmCYx82oYeGRLMAeQY7JMUFowS0d4ZDsw2ivIB7P0AWvMUuMYkSEMgnkzxuXZdgQz5j9lgvE90RbPF4O5VDjndQrwPPGEZvIsaArwszrGNP1nofHjcVMjmPZOzmph5EQUZjQLCzPrEmZo9Qtj3TNGxq+MYMwSi5XHmLovNLopHjPEf+1nOYxrV3jW4IjtisZMZ6xThbcYU8YVgCkYwzzVLPPItPfajDBdwTxGIIWYKH/L2iVJmD9O+vrc2RdgYA/ASXoAh/Rg59oDAKVkAH0EpxDbA8hiXkDrZFeIKe7OzK/dGdiRSnzSujM5DDg3N6YtfTPCEIYwhCEMYQhTEwOvzXpdxyAhDGFizOWhPG8lGGbLRTVmw5HTpRjD6s54oWIMV8aFmH4f14zCbN8s2ddcjCl6cQZvhuxr5sulGNO30OQ6mrJ3nPPlZwmGs9csuztDmLZiikdF4WYgEiP7nU3WtDDWUCRGX1b5ceDI4PY9Z2Vr4cJY+MNqZTGm7j4JjaubWUzRWngwFj6fscdWbtgkPNlHxhrj1yNgnYWY6ZbxQ5Cdz0gLwISsa6vtlA/DfW2mAMO6tNJsTgzr+FZhNMIUYUzBpvwTgCDMcZfmd4BjjAnzXLUyMXBM8Bss5lgDU96dMc+MGXv9DM8mhtnvwGJepGCkX5sRhjD3iXlcHBZfSc6UFhbXTehHcKukU/ACbrVAGhpNYOYg14YGKH01NNJ8TZtB2oIBtxTaaiLMf4ABP8/NY8Bi6mDejyCvzWJe4Vrea2CQNIbBQpiOY5jbSNuE8TgxIev4J/WYJ9b/bMiHYU2bBiHea5aK6Yd403Q25e1oMnq7jMa5XEzBYsT2mpVgvttrJgxhVGAqPQFEoKe1S3Ysz0EpWXkPlOZx6QCPRKbNZWvhemq2xlsks9x8Jpk2r36lSebIsLRilgJYQqbN/044w9YytjifmqcW4w/VNjufUdDQsBjzFY93PsPsUzbWnUEylHOhKTTNXTVLnzYrxJg665K0dkIdbZxjqYTZg6eaXxGG0c3zkmcXFX+W5+y0OcZEcC37GhiO7oxuip02IdNmda0mWSEMYQhDmMYxtd4y305M5ceLcTdtwJjndbX9Zeszfj9twOgbrWI2qh4ZuN2EC2PWeEngoneUw8DtJnUwwTsIfqGZXUONrwlYcmEiuJagBgZJYxgshKmMiYLVbeKDM8UgUoPhns/gmJWzuwnSN/uMs/oeZsSJeWLsOB3mtgIzML2bYB3NzyofhrEtWbO55zPhFvuKq+0y2wRUgOkv8bWE/POZPrPLqxyDr6Ivfj7TGKZS45wwhCEMYQhDGMIQhjCEIQxhCEMYwhCGMIQhDGEIQxjCEIYwhCEMYQjTDcy8HDNXgyn5HL5/txoZ6JZLFIN+KCjAYDFGMaZkLSjm4p5Op3gXnzfB3hWVJv5wJnuMvi8h/sePFc9GoFX8zZQT9I6Sj5srW0u8yWfzuXj3csVcBH98VBOZXGLMm4T39KiP8RZjTk0vREROhGlpbjH2qKOxEcyI40tbW5nRvWM8bPtgF+IhGM3uaLAngI7n7jB/AQtsjV6Opn8FAAAAAElFTkSuQmCC"></a>
                          </li>
                       </c:if>                         
                    </ul>
                </div>
            </div>
        </header>
        </div>
        </body>
        </html>
       