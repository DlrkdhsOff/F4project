<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search</title>
<style>
.css-1psd9kv {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   -webkit-box-align: center;
   align-items: center;
}

.css-rye3ve {
   width: 56px;
   letter-spacing: -0.35px;
   text-align: right;
}

img {
   border-style: none;
}

.css-1ay4jhn {
   position: fixed;
   inset: 0px;
   z-index: 10000001;
   width: 100%;
   height: 100vh;
   padding-top: 24px;
   padding-bottom: 76px;
   background-color: rgb(255, 255, 255);
   overflow-y: auto;
}

body {
   color: #191E23;
   font-family: Pretendard, -apple-system, BlinkMacSystemFont, system-ui,
      "Segoe UI", "Apple SD Gothic Neo", "Apple Color Emoji",
      "Segoe UI Emoji", "Segoe UI Symbol", sans-serif;
   font-size: 14px;
}

.css-1yfvu35 {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: 100%;
   height: 42px;
   margin-top: 67px;
}

.css-1yfvu35 {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: 100%;
   height: 42px;
   margin-top: 67px;
}

.css-dpkgbq {
   position: relative;
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: 100%;
   height: 100%;
   border-bottom: 3px solid rgb(25, 30, 35);
}

.css-1fz78bt {
   position: relative;
   top: 1px;
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: 36px;
   height: 100%;
   padding-left: 6px;
   cursor: default;
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

.css-1dawt9j {
   width: 100%;
   height: 100%;
   margin: 0px;
   padding: 0px 8px;
   color: inherit;
   font-size: 16px;
   font-weight: 700;
   letter-spacing: -0.59px;
   border: 0px;
}

input {
   outline: 0;
   -webkit-appearance: none;
}

input {
   overflow: visible;
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

.css-1hdamva > button:not(:last-of-type) {
   margin-right:8px;
}
.css-1hdamva>button {
   margin-top: 12px;
}

button, select {
   text-transform: none;
}

.css-1cuhs3l {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: center;
   justify-content: center;
   -webkit-box-align: center;
   align-items: center;
   height: 33px;
   padding: 8px 12px;
   margin: 0px;
   cursor: pointer;
   border: 0px;
   border-radius: 20px;
   background-color: rgb(230, 244, 245);
}

button {
   font-style:;
   font-variant-ligatures:;
   font-variant-caps:;
   font-variant-numeric:;
   font-variant-east-asian:;
   font-variant-alternates:;
   font-variant-position:;
   font-weight:;
   font-stretch:;
   font-optical-sizing:;
   font-kerning:;
   font-feature-settings:;
   font-variation-settings:;
   text-rendering: auto;
   letter-spacing: normal;
   word-spacing: normal;
   text-indent: 0px;
   text-shadow: none;
   padding-block: 1px;
   padding-inline: 6px;
}

.css-18793gf {
   font-size: 14px;
   font-weight: 500;
   color: rgb(0, 138, 148);
}

p {
   maggin: 0;
   display: block;
   margin-block-start: 1em;
   margin-block-end: 1em;
   margin-inline-start: 0px;
   margin-inline-end: 0px;
}

.css-1cuhs3l {
   cursor: pointer;
}

.css-1hdamva > button:not(:last-of-type) {
   margin-right : 8px;
}

.css-1hdamva>button {
   margin-top: 12px;
}

.css-17i4ovj {
   font-size: 18px;
   line-height: 1.33;
   color: rgb(25, 30, 35);
   font-weight: 700;
   letter-spacing: -0.3px;
}

.css-1d0nbku {
   margin-top: 24px;
}

* {
   box-sizing: border-box;
}

.css-f70my9 {
   margin-top: 48px;
}

.css-lutbjm {
   margin-top: 50px;
}

.css-70avso {
   position: relative;
   width: 100%;
   min-width: 320px;
   max-width: 640px;
   margin: 0px auto;
}

/* .css-15fccr1 {
   -webkit-box-pack: justify;
   -webkit-box-align: center;
   width: 100%;
   height: 32px;
   display: flex;
   flex-direction: row;
   align-items: center;
} */

.css-15fccr1 {
  display: grid;
  grid-template-columns: repeat(auto-fill, minmax(150px, 1fr));
  gap: 10px; /* 필요에 따라 조정 */
} 

.css-lutbjm {
  display: flex;
  flex-direction: column; /* 세로 정렬 */
}

.search-item-container {
   align-items: center;
    display: flex;
}

li {
   list-style: none;
}

.css-1cca3re {
   font-size: 18px;
   letter-spacing: -0.56px;
   line-height: 1.33;
   color: rgb(25, 30, 35);
   font-weight: 700;
}

.css-e0goot {
   font-size: 12px;
   font-weight: 600;
   color: rgb(115, 121, 126);
}

.css-1ay4yd3 {
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   -webkit-box-align: center;
   align-items: center;
   gap: 10px;
}

.css-hrl54u {
   width: 100%;
   display: flex;
   flex-direction: row;
   -webkit-box-pack: justify;
   justify-content: space-between;
   -webkit-box-align: center;
   align-items: center;
}

.css-bm3qiy {
   color: rgb(63, 70, 76);
   font-size: 12px;
   line-height: 1.5;
   letter-spacing: -0.45px;
   text-decoration: underline;
}

.css-bbp2wn {
   display: flex;
   flex-direction: row;
   -webkit-box-align: center;
   align-items: center;
   width: calc(100% - 120px);
}

.css-15fccr1:hover {
   background-blend-mode: multiply;
   background-color: rgb(244, 247, 255);
}

.css-1hdamva {
   display: flex;
   flex-flow: wrap;
   margin-top: 12px;
}

#serachString {
   width: 300px; /* 더 긴 너비로 조정하려면 원하는 픽셀 값으로 변경하세요. */
}

.css-1dl7q28 {
   display: inline-block;
   margin-left: 8px;
   overflow: hidden;
   text-overflow: ellipsis;
   white-space: nowrap;
   line-height: 1.4;
}
</style>
</head>
<body>
   <div class="css-1ay4jhn">
      <div class="css-70avso">
         <div class="css-1psd9kv">
            <a href="main.do">
            <button type="button">
               <div class="css-2g5od8">
                  <img src="https://i.ibb.co/3rpXWj2/Kakao-Talk-20231219-160424996-01.png"
                     width="100" height="50" alt="f4로고">
               </div>
            </button>
            </a>
            <a href="brand.do">
            <button type="button" class="css-rye3ve">
                <img
                  src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAKTSURBVHgB7ds9UgJBEIbhWcsYL6AHkDI3MDExMDGwVAI9ngYoRWBiYGJioLGFB5ALwAVwv1UsxWV76Znpbqr6TaSIxgd2YX4oZmXBW9pG8BpzICIHInIgIgciciAiByJyICIHInIgIgciciCizcBsOp2G/t2w+ntxfhp2treDpebj2+p0qvFxK7iz+f2Dw/AxHlePO+UgBv2bsNfdDRZ6G43CWe+qQkJ48R4f7qtxrhrrErsdDH9wEAZy1rssB/YetFvEQRgr3k2cWECTyfTfcxaQ6nDm1T3XJhZQr7ym696umkhNOJ2I+xAL6Ouec20GicLBWLkfIuyP+b1u1wRSGxyMlVvU9yBtpNw4KPqLohaSBA5K8k1aGkkKByWbakghSeKgpHOx3EjSOCj5ZDUXkgYOyjKbT42khYOyLXekQtLEQVnXg2KRtHFQ9gUzLpIFHCSyorgqkhUcVEgef6H/8Zvy0cwMDiqkzwdRSMgKDio0DlA1IdWlhYNUdjWa7kmLaeIgtW2fNkjaOGgN9sWKoJkaUJv7kIWNABWgVW7S2kjiQNTHvLXdElGgNt+QLe2WIDGgttMHK7sl80SAVp1bWULKDsSdeFpBygoUOyu3gJQNKNWShTZSFqDU6zmaSMmBci12aSElBcq9EqiBlAxIaplUGikJkPQasiRSNJDWArsUUhSQ9u6DBBIbyMrWTG4k1qI9jtUeHZ+Y2n2gXrDX56dWa+CL8c5Jf5+wrxuI1hoy9U4SPSddNwgLC+xNSFuMdw9iXWJ4RXCJ/f0pgi7O7+p+ivBSXmKcojYO8ZMEnLpfdrBcM7x4uBVgXDHjU9lZXaf892JEDkTkQEQORORARA5E5EBEDkTkQEQORORARA5E9An6b/knVqRJLAAAAABJRU5ErkJggg=="
                  width="24" height="24" alt="닫기">
            </button>
            </a>
         </div>
         <br>
         <br>
         <br>
         
         <div class="css-1yfvu35">
            <div class="css-dpkgbq">
               <button type="button" class="css-1fz78bt"
                  onclick="searchFunction(cf.serachString.value)">
                  <!-- 돋보기 이미지 -->
                  <img
                     src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAATxSURBVHgB7ZoxcxtFFMffW9nGRbDOppENI86xmUmH0kGF3VG6pXL4BHZLZaWkw9/A6aAiqYBK4hMk7jxDTC4eCCqY6IRdBDnex3tyxEinO+VOp11Zyv5mZI/25vZW/3vv7e57C+BwOBwOh8PhcDiyg2CQj/zNrSsNFQT6lIAq/Div58kB/w2R8FgpqP8RPK3DDWTsApV831da7XLX+wTgpb2PBxLyv4dazd9vBCcB3BDGJhDr4v2r1YEIAznhQR3dFKEKMAbElS41/sQ/7UsYDxUkvVNcWmmd/9N8AhMkt0Cr5dt7RPA9DHEnRI41iCdsGT/z54l8uJHbOvcsJtzmEcLOUnEZzlvNX2FC5HKxtfLtAwKsxnbMomjCQ+AA3BgSgD/0P6looC0g2gMCP7YvoOqLs9/vwwQYWaAkcbrCLKrX3wVBEEIGVsub+4h0wBbpDQ50MiKNJFDnrWv9OKa3gHB+O09wlVkQqVCLsyZScK8RnD4Ai2QW6Hq2Kog4fqSn3OL0PqNNqkaElcilkNT8XZuzm4KMtLXaA4PiCOKaC6i33ywme/GUvjwAi2SyoI7568KzaDu/1XUTb7Wz6KTC42hMIoXbDUsr70wWpPTcvWgbB2pjC7oGmxLITBgBNe2AJTIJxPup3b4GcQE1dwQGWeDZUGbGSPMuWCK1QDJzQST2IMkax2zA7CwVBq3IK/HqHSyQ3oKudHRGAa3QypSr1eujaBtylgAskFogjYMDshUoJRZF3UxSKGCB9BaE0D8gJLubSMKg/yvdLAuKuTXTNiI/dNz/FVPnmvKQQ6B3g+kRCLEIEyC1QAjY71JEPliE12D9LoX9MckUqQUioueRJk82lWAJ3hNVIgNqgQUyuNjAG/NewZyVmUQWqYM5IqyDBVILpNTggGztiSjmOXHjMUGm3fzaxxvNyJsM31NX61kzh1lZLW9IBsH/v4H3gH89P10HC2SbxWL2RG09l7vMMwwpCsBA/okOwRKZLOg601d4Fo0HSqm7fwa/jX1lfV2E5HwQRPNBZvJPcWSyoISdNXB++seSf8eHMSIvg5NztQFxDOaf4si8UJT8TEwqlDONl7VxifSmSluDmNSuVEvAIiNVNSQXwzNYLeZSwOafv6rBlgMQV9Ww51pdRqqsXoQvg1vFDzgDAVuRSx6XjPdHrYZKQFakpEpbiruuSHvc7yOwSK7Kaqm8WeW8TFKVIeDO66jU4bAA7rNbtnU79WkQOdjw4uz0a7BE7tMdbxGp+5CQ6+wiUshp2s6aib9zgRAqWY7I9PRnTaTchxcuWi/rS8srkqv5DJJ/rBxQ8PlzB673VN389mJix5yQI7XwObvVMsBANrOyVFzxbbjbWI6/nIfNk1vLxUccP+J+TCYktcpT+beNs9OvLsK/QxbhIYuxDhMSydAJs0KVXeiLpNMaCQQszIOkQw9r5Y0jiin3mHY3o2cUO8sBefPEYon79eSQEDm/ROJGeKx4Z55mJT4JkYwKZALbIo0lBtlEYlLCGsxITJo6gQSZOW2JNJUCCbZEmlqBBBsiTbVAgmmRpl4gwaRIMyGQYEqkmRFIMCHSTAkkjFukmRNIGCbS+8Vl76LV/CVtXzMpkJAsEpZYoNRlo5k+/tI4e1qVKkhvm2Q5IQMza0FdupaksHPg6geuBH8ThuErcDgcDofD4XA4HI7J8R9jmT3hca4jCwAAAABJRU5ErkJggg=="
                     width="24" height="24" alt="검색">
               </button>
               <form name="cf" method="get" id="searchForm"
                  onsubmit="searchFunction(cf.serachString.value)">
                  <input type="text" placeholder="브랜드, 업종, 창업 정보를 검색해 보세요."
                     class="css-1dawt9j" maxlength="10" id="serachString" name="serachString"
                     value="">
               </form>
            </div>
         </div>
          <div id="searchResultsContainer"></div>
          
         <div class="css-1d0nbku">
            <div class="css-f70my9">
               <div class="css-hrl54u">
                  <p class="css-1cca3re">추천 태그</p>
                  <button class="css-1ay4yd3">
                     <p class="css-e0goot" onclick="window.location='bunsuk_do?tablename=all'; saveActiveTab('all');">전체보기</p>
                     <img
                        src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEgAAABICAYAAABV7bNHAAAACXBIWXMAACE4AAAhOAFFljFgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAF2SURBVHgB7dm/UQJBFMfxt9gAJWAHxDjotWAHV4L/AjVBSTCQUStgrEDNNLyRkTYsgQpu2d9lcAxDwtv3Zn6f4O52L/vOJrsrQkRERERERERERESkI4iSm9uHInbqD4nSDRJenyePl+JAR5TEUM8Qp/mWeHF9P5qJA2qBkt7aKMbSQyS9QFHe2nP2Ix2JksW8+h4Mz47TZ3/jV39wWvQWv9WXGKQWCFKkT2+RVAOBt0jqgcBTpCyBwEukbIHAQ6SsgcB6pOyBwHIkE4HAaiQzgcBiJFOBYFekk2HR/ZtXP6JIc7O6t+lkXKbX++Z8OgUoRZnJQI0QohhgMlCzw49bVktsr6pDUztR3NeuONOncSnKTAWyFgfMBLIYB0wEshoHsgeyHAeyBrIeB7IF8hAHsgTyEgfUA3mKA6qBvMUBta3G1d3oxVscUAsU0n18a9J4HNDbrIawXBs7iAN6K6gO5+n53wzSPb2HOEREREREREREREREmlYwneZrJQIiGwAAAABJRU5ErkJggg=="
                        width="24" height="24" alt="전체보기 버튼">
                  </button>
               </div>
               <!-- 검색창에 입력한 단어 나오는 버튼  css-1hdamva-->
               <div class="css-1hdamva">
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=all'; saveActiveTab('all');">
                     <p class="css-18793gf">전체</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=coffee'; saveActiveTab('coffee');">
                     <p class="css-18793gf">커피</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=asian'; saveActiveTab('asian');">
                     <p class="css-18793gf">아시안</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=dessert'; saveActiveTab('dessert');">
                     <p class="css-18793gf">디저트</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=korean'; saveActiveTab('korean');">
                     <p class="css-18793gf">한식</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=chinese'; saveActiveTab('chinese');">
                     <p class="css-18793gf">중식</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=japanese'; saveActiveTab('japanese');">
                     <p class="css-18793gf">일식</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=western'; saveActiveTab('western');">
                     <p class="css-18793gf">양식</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=jokbal_Bossam'; saveActiveTab('jokbal_Bossam');">
                     <p class="css-18793gf">족발·보쌈</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=pub'; saveActiveTab('pub');">
                     <p class="css-18793gf">주점</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=chicken'; saveActiveTab('chicken');">
                     <p class="css-18793gf">치킨</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=pizza'; saveActiveTab('pizza');">
                     <p class="css-18793gf">피자</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=snack'; saveActiveTab('snack');">
                     <p class="css-18793gf">분식</p>
                  </button>
                  <button type="button" class="css-1cuhs3l" onclick="window.location='bunsuk_do?tablename=fastFood'; saveActiveTab('fastFood');">
                     <p class="css-18793gf">패스트푸드</p>
                  </button>                                                                                                                                                                     
               </div>
            </div>
            
        <script type="text/javascript">
        function saveActiveTab(tabName) {
          localStorage.setItem("activeTab", tabName);
        }
      </script>
      
      <div class="css-lutbjm">
          <div class="css-1psd9kv">
              <p class="css-17i4ovj">최근 검색 기록</p>
              <button type="button" onclick="clearSearchHistory()" class="css-bm3qiy">모두 지우기</button>
          </div>
          <ul class="css-jhdyxq" style="flex-flow: wrap !important;">
              <li>
                  <div class="css-15fccr1" id="searchHistoryContainer">
                  </div>
              </li>
          </ul>
      </div>
   </div>
</div>
</div>


<script>
document.addEventListener('DOMContentLoaded', function () {
  initializeSearchHistory();
});

function initializeSearchHistory() {
  // 로컬 스토리지 지원 여부 확인
  if (typeof(Storage) !== "undefined") {
    // 로컬 스토리지에서 검색 기록을 검색합니다.
    var searchHistory = JSON.parse(localStorage.getItem('searchHistory')) || [];
    displaySearchHistory(searchHistory);
  }
}

function searchFunction(serachString) {
  // 기존 검색 기능
  window.open("brandCostList.do?serachString=" + serachString, "searchString", "width=550, height=650");

  // 최근 검색어 저장
  saveSearchToHistory(serachString);
}

function saveSearchToHistory(query) {
  if (typeof(Storage) !== "undefined") {
    // 기존 검색 기록을 검색하거나 빈 배열을 초기화합니다.
    var searchHistory = JSON.parse(localStorage.getItem('searchHistory')) || [];
    
    // 중복된 검색어는 제거합니다.
    searchHistory = searchHistory.filter(function(item) {
      return item !== query;
    });

    // 새로운 검색 쿼리를 기록에 추가합니다.
    searchHistory.unshift(query);

    // 최근 10개의 검색어만 유지합니다.
    searchHistory = searchHistory.slice(0, 10);

    // 업데이트된 기록을 다시 로컬 스토리지에 저장합니다.
    localStorage.setItem('searchHistory', JSON.stringify(searchHistory));

    // 업데이트된 검색 기록을 표시합니다.
    displaySearchHistory(searchHistory);
  }
}

function clearSearchHistory() {
  if (typeof(Storage) !== "undefined") {
    // 로컬 스토리지에서 검색 기록을 모두 지웁니다.
    localStorage.removeItem('searchHistory');
    
    // UI에서도 검색 기록을 지웁니다.
    var historyContainer = document.getElementById('searchHistoryContainer');
    historyContainer.innerHTML = '';
  }
}

function displaySearchHistory(history) {
    // 검색 기록을 표시할 UI를 업데이트합니다.
    var historyContainer = document.getElementById('searchHistoryContainer');
    historyContainer.innerHTML = ''; // 이전 기록 지우기

    // 각 검색 쿼리에 대한 div 생성
    history.forEach(function(query) {
        var div = document.createElement('div');
        div.className = "css-15fccr1"; // 추가: 클래스 지정

        // 새로운 div 추가
        var searchItemContainer = document.createElement('div');
        searchItemContainer.className = "search-item-container"; // 새로운 클래스 추가
        div.appendChild(searchItemContainer);

        // 이미지 엘리먼트 생성 및 추가 (돋보기)
        var searchIcon = document.createElement('img');
        searchIcon.src = "data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4KPHN2ZyB3aWR0aD0iMjRweCIgaGVpZ2h0PSIyNHB4IiB2aWV3Qm94PSIwIDAgMjQgMjQiIHZlcnNpb249IjEuMSIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayI+CiAgICA8dGl0bGU+aWNvbi8yNC9zZWFyY2gva2V5d29yZDwvdGl0bGU+CiAgICA8ZyBpZD0iaWNvbi8yNC9zZWFyY2gva2V5d29yZCIgc3Ryb2tlPSJub25lIiBzdHJva2Utd2lkdGg9IjEiIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGcgaWQ9Imljb24iIGZpbGwtcnVsZT0ibm9uemVybyI+CiAgICAgICAgICAgIDxyZWN0IGlkPSJSZWN0YW5nbGUiIGZpbGw9IiNGNUY1RjUiIHg9IjAiIHk9IjAiIHdpZHRoPSIyNCIgaGVpZ2h0PSIyNCIgcng9IjgiPjwvcmVjdD4KICAgICAgICAgICAgPHBhdGggZD0iTTEwLjUsNS45OTk5OTk4OCBDMTIuMTQxNzYyMiw1Ljk5OTYyODE3IDEzLjY1MzQzNTgsNi44OTMzODc1NyAxNC40NDQzNzYxLDguMzMyMDY2MzYgQzE1LjIzNTMxNjQsOS43NzA3NDUxNiAxNS4xNzk5ODQ2LDExLjUyNTk5NDggMTQuMywxMi45MTIgTDE4LjEwNCwxNi43NjEgTDE2LjY5NCwxNy45OTk5OTk5IEwxMi45ODksMTQuMjUgQzExLjM4NDE3NDUsMTUuMzE0NTIwNiA5LjI3OTg0NTQ1LDE1LjIzOTg0NyA3Ljc1NDUxMjA5LDE0LjA2NDI1MDQgQzYuMjI5MTc4NzMsMTIuODg4NjUzOCA1LjYyMDk4NTkxLDEwLjg3Mjc0NzUgNi4yNDE2NDEyNiw5LjA0OTcxMjY4IEM2Ljg2MjI5NjYxLDcuMjI2Njc3ODMgOC41NzQyMDk1OSw2LjAwMDY1NTU0IDEwLjUsNS45OTk5OTk4OCBaIE0xMC41LDcuOCBDOS41MzUzODI4OSw3LjggOC42NDQwMzk5Miw4LjMxNDYxNzA3IDguMTYxNzMxMzYsOS4xNDk5OTk5OCBDNy42Nzk0MjI4LDkuOTg1MzgyOSA3LjY3OTQyMjgsMTEuMDE0NjE3MSA4LjE2MTczMTM2LDExLjg1IEM4LjY0NDAzOTkyLDEyLjY4NTM4MjkgOS41MzUzODI4OSwxMy4yIDEwLjUsMTMuMiBDMTEuOTkxMTY4OCwxMy4yIDEzLjIsMTEuOTkxMTY4OCAxMy4yLDEwLjUgQzEzLjIsOS4wMDg4MzExOCAxMS45OTExNjg4LDcuOCAxMC41LDcuOCBMMTAuNSw3LjggWiIgaWQ9IlNoYXBlIiBmaWxsPSIjMDA3MDc4Ij48L3BhdGg+CiAgICAgICAgPC9nPgogICAgPC9nPgo8L3N2Zz4=";
        
        // 이미지 엘리먼트 생성 및 추가 (엑스)
        var deleteIcon = document.createElement('img');
        deleteIcon.src = "data:image/svg+xml;base64,PHN2ZyB3aWR0aD0iMTYiIGhlaWdodD0iMTYiIHZpZXdCb3g9IjAgMCAxNiAxNiIgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIj4KICAgIDxnIGZpbGw9Im5vbmUiIGZpbGwtcnVsZT0iZXZlbm9kZCI+CiAgICAgICAgPGNpcmNsZSBmaWxsPSIjQkRCREJEIiBjeD0iOCIgY3k9IjgiIHI9IjciLz4KICAgICAgICA8ZyBzdHJva2U9IiNGNUY1RjUiIHN0cm9rZS13aWR0aD0iMS41Ij4KICAgICAgICAgICAgPHBhdGggZD0ibTEwLjc0MyA1LjI1Ny01LjQ4NiA1LjQ4Nk01LjI1NyA1LjI1N2w1LjQ4NiA1LjQ4NiIvPgogICAgICAgIDwvZz4KICAgIDwvZz4KPC9zdmc+Cg==";
        
        // 버튼 엘리먼트 생성 및 추가
        var button = document.createElement('button');
        button.textContent = query;
        button.addEventListener('click', function() {
            performSearch(query);
        });

        // 엑스 이미지 클릭 시 해당 단어 삭제
        deleteIcon.addEventListener('click', function() {
            removeSearchHistory(query);
        });

        searchItemContainer.appendChild(searchIcon);
        searchItemContainer.appendChild(button);
        searchItemContainer.appendChild(deleteIcon);

        historyContainer.appendChild(div);
    });
}

function performSearch(query) {
  // 원하는 검색 작업 수행
  window.open("brandCostList.do?serachString=" + query, "serachString", "width=550, height=650");
  // 최근 검색어 저장
  saveSearchToHistory(query);
}

function removeSearchHistory(query) {
    if (typeof(Storage) !== "undefined") {
        // 로컬 스토리지에서 검색 기록을 가져옴
        var searchHistory = JSON.parse(localStorage.getItem('searchHistory')) || [];
        
        // 해당 쿼리를 검색 기록에서 제거
        searchHistory = searchHistory.filter(function(item) {
            return item !== query;
        });

        // 업데이트된 기록을 다시 로컬 스토리지에 저장
        localStorage.setItem('searchHistory', JSON.stringify(searchHistory));

        // 업데이트된 검색 기록을 표시
        displaySearchHistory(searchHistory);
    }
}
</script>

   <!-- <div>
      <form action="brandCostList.do" method="get" id="searchForm">
         <input type="text" placeholder="브랜드명 입력" id="serachString"
            name="serachString">
      </form>
   </div> -->
</body>
</html>