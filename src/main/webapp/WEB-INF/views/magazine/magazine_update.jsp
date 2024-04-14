<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html>
<head>
    <title>매거진 수정</title>
    
<style>
        body { 
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }

        .center-container {
            align-items: center;
            justify-content: center;
            height: 100vh;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin: auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        th, td {
            text-align: left;
            font-weight: bold;
            margin-bottom: 20px;
            text-align: center; /* 가운데 정렬 */
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="text"],
        input[type="file"],
        textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="button"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 15px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }

        input[type="submit"]:hover,
        input[type="button"]:hover {
            background-color: #45a049;
        }

        form {
            margin-top: -15px; /* 필요한 만큼 조절하세요 */
        }

        #preview {
            margin-top: 10px;
        }
    </style>
</head>
<body>
   <div class="center-container">
    <form name="updateForm" action="magazine_update.do" method="post" enctype="multipart/form-data">
        <input type="hidden" name="mnum" value="${getMagazine.mnum}">
        <table align="center" border="0" class="outline">
        <br>
            <tr>
             <th colspan="2" style="font-size: 25px; text-align: center;">매거진 수정</th>
         </tr>
            <tr>
                <th>제목</th>
                <td><input type="text" name="mtitle" class="box" value="${getMagazine.mtitle}"></td>
            </tr>
            <tr>
                <th>현재 이미지</th>
                <td>
                    <img src="<%=request.getContextPath()%>/files/${getMagazine.mimage}" width="100" height="100">
                    <input type="hidden" name="mimage3" value="${getMagazine.mimage}">
                </td>
            </tr>
            <tr>
                <th>수정할 이미지</th>
                <td>
                    <img id="preview" src="" width="100" height="100">
                    <input type="file" name="mimage" class="box" onchange="previewImage(this);">
                </td>
            </tr>
            
            <tr>
                <th>내용</th>
                <td>
                    <textarea name="content" maxlength="3000" rows="10" cols="30">${getMagazine.content}</textarea>
                </td>
            </tr>
            
           <tr>
                <th>현재 이미지2</th>
                <td>
                    <img src="<%= request.getContextPath() %>/files/${getMagazine.mimage2}" width="100" height="100">
                    <input type="hidden" name="mimage4" value="${getMagazine.mimage2}">
                </td>
            </tr>
            
            <tr>
                <th>수정할 이미지2</th>
                <td>
                    <img id="preview2" src="" width="100" height="100">
                    <input type="file" name="mimage2" class="box" onchange="previewImage2(this);">
                </td>
            </tr>                   
            <tr>
                <th>내용2</th>
                <td>
                    <textarea name="content2" maxlength="3000" rows="10" cols="30">${getMagazine.content2}</textarea>
                </td>
            </tr>            
            
            <tr>
                <th align="center" colspan="2">
                    <input type="submit" value="수정">&nbsp;&nbsp;
                     <input type="button" value="닫기" onclick="closeWindow()">
                 
                </th>
            </tr>
        </table>
    </form>
</div>
    <script>
        function previewImage(input) {
            var preview = document.getElementById('preview');
            var file = input.files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
        
        function previewImage2(input) {
            var preview = document.getElementById('preview2');
            var file = input.files[0];
            var reader = new FileReader();

            reader.onloadend = function () {
                preview.src = reader.result;
            }

            if (file) {
                reader.readAsDataURL(file);
            } else {
                preview.src = "";
            }
        }
        
        function closeWindow() {
            window.close();
        }
    </script>

</body>
</html>