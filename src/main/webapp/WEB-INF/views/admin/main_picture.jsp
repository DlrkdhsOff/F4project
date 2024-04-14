<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="admin.jsp"%> 

 <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f4f4f4;
        margin: 0;
        padding: 0;
    }

    div.center {
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
    }

    table {
        width: 60%;
        border-collapse: collapse;
        margin: auto;
    }

    table, th, td {
        border: 1px solid #ddd;
    }

    th, td {
        padding: 12px;
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
    input[type="reset"] {
        background-color: #4CAF50;
        color: #fff;
        padding: 10px 15px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        border-radius: 3px;
    }

    input[type="submit"]:hover,
    input[type="reset"]:hover {
        background-color: #45a049;
    }

    form {
        margin-top: -340px; /* 필요한 만큼 조절하세요 */
    }

    /* 추가된 스타일 */
    .outline {
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        border-radius: 8px;
        background-color: #fff;
    }
    
    

    caption {
        font-size: 24px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    td[colspan="2"] {
        text-align: center;
    }
    
</style>

<body>
<div align="center">
   <form name="f" action="middleimage.do" method="post" enctype="multipart/form-data" onsubmit="return validateFiles()">
    <table border="0" class="outline" width="60%">
        <tr>
            <th style="font-size:20px;" colspan="2">middle image</th>
        </tr>

        <tr>
            <th>이미지 업로드</th>
            <td><input type="file" name="images[]" class="box" multiple id="imageUpload"></td>
        </tr>

        <tr>
            <td align="center" colspan="2">
                <input type="submit" value="등록">
                <input type="reset" value="취소">
            </td>
        </tr>
    </table>   
   </form>

	<div align="center">
      <hr width="300">
      <h2>목록보기</h2>
      <hr width="300">
      <table border="1">
         <tr>
            <th>middleImage</th>
            <th>파일명</th>
            <th>이미지</th>
            <th>수정</th>
         </tr>  
      <c:if test="${empty middleImage}">
         <tr>
            <td colspan="4">사진이 없습니다.</td>
         </tr>
      </c:if>
         <tr>
            <td align="center">이미지 1
            </td>
            <td>${middleImage.image1}</td>            
            <td>
                <img src="<%= request.getContextPath() %>/files/${middleImage.image1}" width="80" height="80">            
            </td>
            <td>
               <a style="text-decoration: none;" href="javascript:void(0);" onclick="popUp('image1', '${middleImage.image1}')">수정</a>
            </td>
         </tr>
         <tr>
            <td align="center">이미지 2 
            </td>
            <td>${middleImage.image2}</td>            
            <td>
                <img src="<%= request.getContextPath() %>/files/${middleImage.image2}" width="80" height="80">            
            </td>
            <td>
               <a style="text-decoration: none;" href="javascript:void(0);" onclick="popUp('image2', '${middleImage.image2}')">수정</a>
            </td>
         </tr>
         <tr>
            <td align="center">이미지 3
            </td>
            <td>${middleImage.image3}</td>            
            <td>
                <img src="<%= request.getContextPath() %>/files/${middleImage.image3}" width="80" height="80">            
            </td>
            <td>
               <a style="text-decoration: none;" href="javascript:void(0);" onclick="popUp('image3', '${middleImage.image3}')">수정</a>
            </td>
         </tr>
      </table><br><br>
   </div>
</div>

<script>
function validateFiles() {
    var files = document.getElementById('imageUpload').files;
    if (files.length !== 3) {
        alert('정확히 3개의 이미지를 업로드해야 합니다.');
        return false;
    }
    return true;
}

function popUp(imageType, imageName) {
    window.open("middleImage_update.do?type=" + imageType + "&image=" + imageName, "image", "width=530, height=365");
}

</script>



</body>