<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>브랜드 관리자 가입</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        section {
            padding: 35px;
            background-color: #fff;
        }

        .sub_wrap {
            max-width: 600px;
            margin: 0 auto;
        }

        h5 {
            color: #333;
        }

        .txt {
            font-weight: bold;
            margin-bottom: 5px;
            color: #555;
        }

        .input {
            margin-bottom: 15px;
        }

        input[type="text"], select, textarea {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="radio"] {
            margin-right: 5px;
        }

        label {
            font-weight: normal;
            margin-right: 15px;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        input[type="submit"] {
            background-color: #4caf50;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>

<section id="sub" class="start nav">
    <article class="compete scroll_contents" id="compete">
        <article class="inquiry scroll_contents" id="inquiry">
            <div class="container" align="center">
                <div class="sub_wrap">
                    <div class="txt required" style="font-size:25px;">브랜드 관리자</div><br>
                    <form method="post" action="saup_ok.do">
                            <!-- 아이디 입력 -->
                            <div class="txt required">아이디</div>
                            <div class="input"><input type="text" id="id" name="id" value="${id}" readonly></div>

                            <!-- 이름 입력 -->
                            <div class="txt required">이름</div>
                            <div class="input"><input type="text" id="name" name="name" value="${name}" readonly></div>

                            <!-- 연락처 입력 -->
                            <div class="txt required">연락처</div>
                            <div class="input"><input type="text" id="tel" name="tel" value="${tel}" readonly></div>

                            <!-- 창업희망지역 선택 -->
                            <div class="txt required">창업희망지역</div>
                            <div class="input">
                                <select id="place" name="place" required>
                                    <option value="">서울시(전체)</option>
                                    <option value="종로구">종로구</option>
                                    <option value="중구">중구</option>
                                    <option value="용산구">용산구</option>
                                    <option value="성동구">성동구</option>
                                    <option value="광진구">광진구</option>
                                    <option value="동대문구">동대문구</option>
                                    <option value="중랑구">중랑구</option>
                                    <option value="성북구">성북구</option>
                                    <option value="강북구">강북구</option>
                                    <option value="도봉구">도봉구</option>
                                    <option value="노원구">노원구</option>
                                    <option value="은평구">은평구</option>
                                    <option value="서대문구">서대문구</option>
                                    <option value="마포구">마포구</option>
                                    <option value="양천구">양천구</option>
                                    <option value="강서구">강서구</option>
                                    <option value="구로구">구로구</option>
                                    <option value="금천구">금천구</option>
                                    <option value="영등포구">영등포구</option>
                                    <option value="동작구">동작구</option>
                                    <option value="관악구">관악구</option>
                                    <option value="서초구">서초구</option>
                                    <option value="강남구">강남구</option>
                                    <option value="송파구">송파구</option>
                                    <option value="강동구">강동구</option>
                                </select>
                            </div>

                            <!-- 점포보유 여부 선택 -->
                            <div class="txt required">점포보유</div>
                            <div class="input">
                                <div>
                                    <input type="radio" name="store" value="없음" onclick="change_store(this.value)" id="no" checked="">
                                    <label for="no">없음</label>
                                    <input type="radio" name="store" value="있음" onclick="change_store(this.value)" id="yes">
                                    <label for="yes">있음</label>
                                </div>
                            </div>

                            <!-- 문의내용 입력 -->
                            <div class="txt">문의내용</div>
                            <div><textarea id="memo" name="memo" maxlength="900" required></textarea></div>

                            <!-- 버튼 -->
                            <div class="confirm"><input type="submit" value="확인"></div>
                    </form>
                </div>
            </div>
        </article>
    </article>
</section>

</body>
</html>