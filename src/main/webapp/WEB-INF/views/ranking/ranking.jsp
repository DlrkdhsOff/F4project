<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   <%@ include file="../top2.jsp"%>

<html lang="ko">
<head>

<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>랭킹</title>

<link rel="stylesheet" type="text/css" href="/css/reset.css">
<link rel="stylesheet" type="text/css" href="/css/parallax.css">
<style>
/* 한 번에 나타나기 */
/* .parallax__wrap > section {
            opacity: 0;
            transition: all 1s;
        }
        .parallax__wrap > section.show {
            opacity: 1;
        } */

/* 개별적으로 나타나기 */
.parallax__wrap>section .parallax__item__num {
   opacity: 0;
   transform: translateY(200px);
   transition: all 1s 0.1s cubic-bezier(0, 0.49, 0.25, 1);
}

.parallax__wrap>section .parallax__item__title {
   opacity: 0;
   transform: translateX(-100px);
   transition: all 1s 0.3s cubic-bezier(0, 0.49, 0.25, 1);
}

.parallax__wrap>section:nth-child(even) .parallax__item__title {
   opacity: 0;
   transform: translateX(100px);
   transition: all 1s 0.3s cubic-bezier(0, 0.49, 0.25, 1);
}

.parallax__wrap>section .parallax__item__imgWrap {
   opacity: 0;
   transform: translateY(200px) rotate(30deg) skew(20deg);
   transition: all 0.6s 0.6s cubic-bezier(0, 0.49, 0.25, 1);
}

.parallax__wrap>section .parallax__item__desc {
   opacity: 0;
   transform: translateX(-500px);
   transition: all 0.6s 0.9s cubic-bezier(0, 0.49, 0.25, 1);
}

.parallax__wrap>section:nth-child(even) .parallax__item__desc {
   opacity: 0;
   transform: translateX(1000px);
   transition: all 0.6s 0.9s cubic-bezier(0, 0.49, 0.25, 1);
}

/* show */
.parallax__wrap>section.show .parallax__item__num {
   opacity: 0.07;
   transform: translateY(0);
}

.parallax__wrap>section.show .parallax__item__title {
   opacity: 1;
   transform: translateX(0);
}

.parallax__wrap>section.show .parallax__item__imgWrap {
   opacity: 1;
   transform: translateY(0) rotate(0) skew(0);
}

.parallax__wrap>section.show .parallax__item__desc {
   opacity: 1;
   transform: translateX(0px);
}

/* img {
    vertical-align: top;
    width: 20% !important;
} */

.parallax__item__img {
    position: absolute;
    left: 0%;
    top: 10%;
    background-image: url(../img/parallaxEffect01-min.jpg);
    background-repeat: no-repeat;
    background-position: center center;
    background-size: contain; /* 또는 background-size: auto; */
    filter: saturate(0%);
    transition: all 1s;
    width: 100%;
    height: 85%;
    object-fit: cover !important;
}

</style>
</head>
<body class="img01 bg01 font05">
   

<main id="main">
   <div class="parallax__wrap">
<c:forEach var="dto" items="${dto}" varStatus="status">
    <section id="section1" class="parallax__item">
        <span class="parallax__item__num">${status.count}</span>
        <h2 class="parallax__item__title">${dto.storeName}</h2>
        <figure class="parallax__item__imgWrap">
        
        <!-- 사진 넣는곳 -->
        <div class="parallax__item__img"
            style="background-image: url('${dto.imglink}');"></div>
        <!-- 사진 넣는곳 -->
        </figure>
    </section>
</c:forEach>



   </div>
   </main>
   <!-- //main -->



   <script>
            function scroll() {
                let scrollTop = window.pageYOffset || window.scrollY;

                document.querySelectorAll(".parallax__item").forEach((item) => {
                    if (scrollTop > item.offsetTop - window.innerHeight / 2) {
                        item.classList.add("show");
                    }
                });

                requestAnimationFrame(scroll);
            }
            scroll();
        </script>
</body>
