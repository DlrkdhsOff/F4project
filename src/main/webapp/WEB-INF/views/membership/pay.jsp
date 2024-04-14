<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>결제</title>
<style>
.default-ltr-cache-1g18ivv {
   flex: 1 1 auto;
   border: 1px solid rgba(128, 128, 128, 0.7);
   border-radius: 18px;
   position: relative;
   margin: 0px;
   transition: margin 250ms ease-in-out 0s, box-shadow 250ms ease-in-out 0s,
      border-color 250ms ease-in-out 0s;
   box-shadow: rgba(0, 0, 0, 0.25) 0px 4px 10px 0px;
}

.default-ltr-cache-hljwm5 {
   border-radius: 12px;
   box-shadow: rgba(0, 0, 0, 0) 0px 0px 0px 0px;
   box-sizing: border-box;
   color: white;
   cursor: pointer;
   display: flex;
   flex-direction: column;
   margin: 8px;
   min-height: 83px;
   padding: 10px 16px;
   background: radial-gradient(140.76% 131.96% at 100% 100%, rgb(229, 9, 20)
      0%, rgba(74, 42, 150, 0.5) 73.57%, rgba(74, 42, 150, 0) 100%),
      rgb(29, 82, 157);
}
</style>
<style>
@import url('https://fonts.googleapis.com/css?family=Open+Sans');

* {
   box-sizing: border-box;
}

body {
   background-color: #f6f5f7;
   font-family: 'Open Sans', sans-serif;
   margin-bottom: 50px;
}

.text-center {
   text-align: center;
}

.pricing-box-container {
   display: flex;
   align-items: center;
   justify-content: center;
   flex-wrap: wrap;
}

.pricing-box {
   background-color: #ffffff;
   box-shadow: 0px 2px 15px 0px rgba(0, 0, 0, 0.5);
   border-radius: 4px;
   flex: 1;
   padding: 0 30px 30px;
   margin: 2%;
   min-width: 250px;
   max-width: 350px;
}

.pricing-box h5 {
   text-transform: uppercase;
}

.price {
   margin: 24px 0;
   font-size: 36px;
   font-weight: 900;
}

.price sub, .price sup {
   font-size: 16px;
   font-weight: 100;
}

.features-list {
   padding: 0;
   list-style-type: none;
}

.features-list li {
   font-weight: 100;
   padding: 12px 0;
   font-weight: 100;
}

.features-list li:not(:last-of-type) {
   border-bottom: 1px solid rgba(0, 0, 0, 0.1);
}

.btn-primary {
   border-radius: 25px;
   border: none;
   background-color: #EC1362;
   color: #ffffff;
   cursor: pointer;
   padding: 10px 15px;
   margin-top: 20px;
   text-transform: uppercase;
   transition: all 0.1s ease-in-out;
}

.btn-primary:hover {
   box-shadow: 0px 2px 15px 0px rgba(0, 0, 0, 0.5);
   transform: translateY(-3px);
}

.pricing-box-bg-image {
   background-image: url('https://i.ibb.co/K6Gn2sb/paypay.jpg');
   background-size: cover;
   background-position: center center;
   color: #ffffff;
}

.pricing-box-bg-image .features-list li {
   border-bottom-color: rgba(255, 255, 255, 1);
}

.pricing-box-bg-image .btn-primary {
   background-color: #ffffff;
   color: #000;
}

footer {
   background-color: #222;
   color: #fff;
   font-size: 14px;
   bottom: 0;
   position: fixed;
   left: 0;
   right: 0;
   text-align: center;
}

footer p {
   margin: 10px 0;
}

footer i {
   color: red;
}

footer a {
   color: #3C97BF;
   text-decoration: none;
}
</style>
</head>
<body>
   <h1 class="text-center">원하는 상품을 선택해주세요</h1>
   <div class="pricing-box-container">
      <div class="pricing-box text-center">
         <h5>Standard</h5>
         <h5>6개월</h5>
         <h2 class="price">19,900<span style="font-size: 16px; font-weight: 100;">/(월)</span></h2>
         <ul class="features-list">
            <li>예비 창업주님과 채팅</li>
            <li>브랜드를 홍보</li>
            <li>브랜드를 판매</li>
         </ul>
         <button class="btn-primary"
            style="background-color: #EC1362; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;"
            onclick="requestPay('Standard')">결제하기</button>
      </div>
      <div class="pricing-box pricing-box-bg-image text-center">
         <h5>Premium</h5>
         <h5>12개월</h5>
         <h2 class="price">12,900<span style="font-size: 16px; font-weight: 100;">/(월)</span></h2>
         <ul class="features-list">
            <li>예비 창업주님과 채팅</li>
            <li>브랜드를 홍보</li>
            <li>브랜드를 판매</li>
         </ul>
         <button class="btn-primary"
            style="background-color: #EC1362; color: white; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer;"
            onclick="requestPay('Premium')">결제하기</button>
      </div>
   </div>
   	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
    var IMP = window.IMP;
    IMP.init("imp23083223");

    function requestPay(mode) {
        var product, amount, period;
        if (mode === 'Standard') {
            product = 'Standard 상품';
            amount = 100;
            period = 180;
        } else if (mode === 'Premium') {
            product = 'Premium 상품';
            amount = 12900;
            period = 365;
        } else {
            alert('잘못된 모드값입니다.');
            return;
        }

        var paymentData = {
            pg: 'danal',
            pay_method: 'card',
            merchant_uid: "merchant_" + new Date().getTime(),
            name: product,
            amount: amount,
            buyer_email: '',
            buyer_name: 'F4',
            buyer_tel: '010-1234-5678',
            period: period
        };
        
        IMP.request_pay(paymentData, function(rsp) {
         console.log(rsp);
         if (rsp.success) {
            var msg = '결제가 완료되었습니다.';
            imp_uid = rsp.imp_uid;
            dealId = rsp.merchant_uid;
            amount = rsp.paid_amount;
            name = rsp.name;
            window.location.href = 'paymentHistory.do?imp_uid='+imp_uid+'&dealId='+dealId+'&amount='+amount+'&name='+name+'&msg='+msg+'&period='+period;
         } else {
            console.error('결제 실패');
            alert('결제 실패');
         }
      });
    }
</script>
</body>
</html>