<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="/css/signin.css"> 
<title>브랜드</title>

</head>
<body>
<script>
    function updateStoreOptions() {
        var tablename = document.getElementById("tablename").value;
        var storeSelect = document.getElementById("storeName");

        // Remove existing options
        storeSelect.innerHTML = "";

        var stores = {
            chicken: ["BBQ", "BHC", "네네치킨", "푸라닭", "교촌치킨"],
            pizza: ["도미노", "피자헛", "파파존스", "피자알볼로", "피자스쿨"],
            jokbal_Bossam: ["원할머니","장충동","마왕족발","귀한족발","가장맛있는족발"],
            japanese:["미소야","백소정","아비꼬","소노야","쿠우쿠우"], 
            chinese: ["홍콩반점","교동짬뽕","경성양꼬치","소림마라","홍짜장"],
            korean: ["본죽","두찜","박가부대","팔각도","큰맘할매순대국"],
            western: ["빕스","애슐리","아웃백","매드포갈릭","서가앤쿡"],
            snack: ["엽기떡볶이","죠스떡볶이","이삭토스트","고봉민","두끼"],
            pub: ["범맥주","인쌩맥주","한신포차","역전할머니맥주","경성주막"],
            fastFood: ["맥도날드","롯데리아","버거킹","KFC","써브웨이"],
            asian: ["하노이별","포메인","생어거스틴","미스사이공","소담촌"],
            dessert: ["베스킨라빈스","설빙","왕가탕후루","뚜레쥬르","파리바게트"],
            cafe: ["스타벅스","이디야","메가커피","빽다방","투썸"]
        };

        if (stores[tablename]) {
            stores[tablename].forEach(function (store) {
                var option = document.createElement("option");
                option.text = store;
                option.value = store;
                storeSelect.add(option);
            });
        }
        if (tablename == 'default') {
           document.getElementById("brandButton").style.display = "none";
           window.onload;
            return;
        }
        
     // Show the button
        document.getElementById("brandButton").style.display = "inline-block";
    }

    function check() {
        var storeName = document.getElementById("storeName").value;
        if (!storeName) {
            alert("브랜드명을 선택해주세요");
            return false;
        } 
    }
   
    function popUp() {
        var storeName = document.getElementById('storeName').value;
        window.open("brandData/apibulu?storeName=" + encodeURIComponent(storeName), "ApiBulu", "width=500, height=650");
    }

    function closeWindow() {
        window.close();
    }
    
    window.onload = function() {
        // 페이지 로드 시 초기화 작업
        updateStoreOptions();
    };
    
    function calculateTotal() {
        // 각 입력 필드에서 값 가져오기
        var interiorCost = parseFloat(document.getElementsByName('interiorCost')[0].value) || 0;
        var depositAmount = parseFloat(document.getElementsByName('depositAmount')[0].value) || 0;
        var education = parseFloat(document.getElementsByName('education')[0].value) || 0;
        var otherCosts = parseFloat(document.getElementsByName('otherCosts')[0].value) || 0;
        var franchiseAmount = parseFloat(document.getElementsByName('franchiseAmount')[0].value) || 0;

        // 합계 계산
        var total = interiorCost + depositAmount + education + otherCosts + franchiseAmount;

        // 합계를 합계 필드에 설정
        document.getElementsByName('total')[0].value = total;
    }
    
   
</script>
<div data-v-581bdaec="" class="help_area">
        <div data-v-581bdaec="">

            <h2 data-v-581bdaec="" class="subtitle1">브랜드</h2><br>

            <form name="f4" action="brandform_ok.do" method="post" enctype="multipart/form-data">

                <fieldset>
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">업종</h3><br>
                        <div data-v-5ee806c3="" class="input_item">
                        <div class="fld">
                            <select id="tablename" name="tablename" onchange="updateStoreOptions()">
                               <c:if test="${tablename == 'all'}">
                                   <option value="default">-- 선택하세요 --</option>
                                   <option value="chicken">치킨</option>
                                   <option value="pizza">피자</option>
                                   <option value="jokbal_Bossam">족발/보쌈</option>
                                   <option value="japanese">일식</option>
                                   <option value="chinese">중식</option>
                                   <option value="korean">한식</option>
                                   <option value="western">양식</option>
                                   <option value="snack">분식</option>
                                   <option value="pub">주점</option>
                                   <option value="fastFood">패스트푸드</option>
                                   <option value="asian">아시안</option>
                                   <option value="dessert">디저트</option>
                                   <option value="cafe">카페</option>
                                </c:if>
                                <c:if test="${tablename != 'all'}">
                                   <c:forTokens var="food" items="치킨,피자,족발/보쌈,일식,중식,한식,양식,분식,주점,패스트푸드,아시안,디저트,카페" delims=",">
                                      <c:choose>
                                     <c:when test="${food == '치킨'}">
                                         <option value="chicken" ${food == tablename ? 'selected' : ''}>치킨</option>
                                     </c:when>
                                     <c:when test="${food == '피자'}">
                                         <option value="pizza" ${food == tablename ? 'selected' : ''}>피자</option>
                                     </c:when>
                                     <c:when test="${food == '족발/보쌈'}">
                                        <option value="jokbal_Bossam" ${food == tablename ? 'selected' : ''}>족발/보쌈</option>
                                     </c:when>
                                     <c:when test="${food == '일식'}">
                                        <option value="japanese" ${food == tablename ? 'selected' : ''}>일식</option>
                                     </c:when>
                                     <c:when test="${food == '중식'}">
                                        <option value="chinese" ${food == tablename ? 'selected' : ''}>중식</option>
                                     </c:when>
                                     <c:when test="${food == '한식'}">
                                        <option value="korean" ${food == tablename ? 'selected' : ''}>한식</option>
                                     </c:when>
                                     <c:when test="${food == '양식'}">
                                        <option value="western" ${food == tablename ? 'selected' : ''}>양식</option>
                                     </c:when>
                                     <c:when test="${food == '분식'}">
                                        <option value="snack" ${food == tablename ? 'selected' : ''}>분식</option>
                                     </c:when>
                                     <c:when test="${food == '주점'}">
                                        <option value="pub" ${food == tablename ? 'selected' : ''}>주점</option>
                                     </c:when>
                                     <c:when test="${food == '패스트푸드'}">
                                        <option value="fastFood" ${food == tablename ? 'selected' : ''}>패스트푸드</option>
                                     </c:when>
                                     <c:when test="${food == '아시안'}">
                                        <option value="asian" ${food == tablename ? 'selected' : ''}>아시안</option>
                                     </c:when>
                                     <c:when test="${food == '디저트'}">
                                        <option value="dessert" ${food == tablename ? 'selected' : ''}>디저트</option>
                                     </c:when>
                                     <c:when test="${food == '카페'}">
                                        <option value="cafe" ${food == tablename ? 'selected' : ''}>카페</option>
                                     </c:when>
                                     
                                     <c:otherwise>
                                         <option value="${food}" ${food == tablename ? 'selected' : ''}>${food}</option>
                                     </c:otherwise>
                                 </c:choose>
                                   </c:forTokens>
                                </c:if>
                                
                            </select><br>

                        </div>
                        </div>
                    </div>
                <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                    <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">브랜드명</h3><br>
                    <div data-v-5ee806c3="" class="input_item">
                        <div class="fld">
                         <select id="storeName" name="storeName">                      
                         </select>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input id="brandButton" onclick="popUp()" style="font-size:12px" type="button" value="예상 창업비용 불러오기">
                        </div>
                    </div>
                </div>
            </fieldset>
                <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                   <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">사업자명</h3>
                   <div data-v-5ee806c3="" class="input_item">
                       <input data-v-5ee806c3="" type="text" name="name" required
                             class="input_txt">
                   </div>
                </div>  
                <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                    <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">전화번호</h3>
                    <div data-v-5ee806c3="" class="input_item">
                        <input data-v-5ee806c3="" style="width: 30%; float: left;" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                            type="text" name="tel1" maxlength="3" autocomplete="off"
                            class="input_txt"> - <input data-v-5ee806c3=""
                            style="width: 30%;" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" name="tel2" maxlength="4"
                            autocomplete="off" class="input_txt"> -
                            <input data-v-5ee806c3=""
                            style="width: 30%;" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');" type="text" name="tel3" maxlength="4"
                            autocomplete="off"  class="input_txt">
                    </div>
                </div>
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">주소</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="address" required
                                  class="input_txt">
                        </div>
                    </div>
            
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">면적 (평 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="area" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                 class="input_txt">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">면적 단위 평균 매출금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="storeAreaSales" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                 class="input_txt">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">평균 매출 금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="averageSales" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">평당 인테리어 비용 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="squareInteriorCost" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">인테리어 비용 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="interiorCost" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt" onchange="calculateTotal()">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">보증금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="depositAmount" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt" onchange="calculateTotal()">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">교육금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="education" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt" onchange="calculateTotal()">
                        </div>
                    </div>
                    
                     <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">기타금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="otherCosts" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt" onchange="calculateTotal()">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">가맹 금액 (천 단위)</h3>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="text" name="franchiseAmount" required oninput="this.value = this.value.replace(/[^0-9.]/g, '').replace(/(\..*)\./g, '$1');"
                                  class="input_txt" onchange="calculateTotal()">
                        </div>
                    </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                   <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">합계 (천 단위)</h3>
                   <div data-v-5ee806c3="" class="input_item">
                       <input data-v-5ee806c3="" type="text" name="total" required  class="input_txt" readonly>
                   </div>
               </div>
                    
                    <div data-v-5ee806c3="" data-v-581bdaec="" class="input_box">
                        <h3 data-v-581bdaec="" data-v-5ee806c3="" class="input_title">이미지</h3><br>
                        <div data-v-5ee806c3="" class="input_item">
                            <input data-v-5ee806c3="" type="file" name="bimage" required
                                 class="input_txt">
                        </div>
                    </div>
                <div data-v-581bdaec="" class="help_btn_box">
                    <button data-v-0a6aebaa="" data-v-581bdaec=""
                        style="width: 40%; float: left; cursor: pointer;" onclick="check()" type="submit"
                        class="btn full solid disabled">등록</button>
                    &nbsp;&nbsp;&nbsp;
                    <button data-v-0a6aebaa="" data-v-581bdaec=""
                        style="width: 40%; cursor: pointer;" onclick="closeWindow()"
                        class="btn full solid disabled">닫기</button>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>