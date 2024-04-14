<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- writeForm.jsp -->
    <%@ include file="../top2.jsp"%>
    
<html>
<head>
<title></title>

   <script src="/js/check.js" charset="UTF-8"></script>
   
<style>
      
        body {
            font-family: Arial, sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        div.container {
            width: 50%;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            margin-top: 50px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
        }

        th, td {
            padding: 10px;
            text-align: left;
        }

        th {
            background-color: #f2f2f2;
        }

        input[type="text"],
        input[type="password"],
        textarea {
            width: 100%;
            padding: 8px;
            margin: 8px 0;
            display: inline-block;
            border: 1px solid #ccc;
            box-sizing: border-box;
        }

        input[type="submit"],
        input[type="reset"],
        input[type="button"] {
            background-color: #4CAF50;
            color: #fff;
            padding: 8px 12px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            border-radius: 3px;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover,
        input[type="button"]:hover {
            background-color: #45a049;
        }
        
        td.label {
            font-weight: bold;
            width: 20%;
            text-align: center;
            padding-right: 10px;
        }
        
          td.labels {
            font-weight: bold;
            width: 20%;
            text-align: center;
            padding-right: 10px;
        }

        td.input-field {
            width: 80%;
        }
        
      table {
          width: 100%;
          border-collapse: collapse;
          border: none; /* 기본 테이블 선 제거 */
      }
   
      table, th, td {
          border: none; /* 기본 테이블 선 제거 */
      }        
        
    </style>
</head>
<body>

<br><br><br><br>
<div class="container">
   <form name="f" action="re_writeForm.board.do" method="post"
                              onsubmit="return check()"> 
      <input type="hidden" name="num" value="${param.num}"/>
      <input type="hidden" name="re_group" value="${param.re_group}"/>
      <input type="hidden" name="re_step" value="${param.re_step}"/>
      <input type="hidden" name="re_level" value="${param.re_level}"/>  
      <input type="hidden" name="kind" value="${loginMember.kind}" />                               
      <input type="hidden" name="answer" value="0" />                               
       <table style="border-collapse: collapse !important; border: none !important; width: 100% !important;">
            <tr>
                <td colspan="2" style="font-size: 30px;" class="labels">글 쓰 기</td>
            </tr>
            <tr>
                <td class="label">아이디</td>
                <td class="input-field"><input type="text" style="width: 40%;" name="id" value="${getreboard.id}" class="box" readOnly></td>
            </tr>
            <tr>
                <td class="label">이 름</td>
                <td class="input-field"><input type="text" style="width: 40%;" name="writer" value="${getreboard.name}" class="box" readOnly></td>
            </tr>
            
            <tr>
                <td class="label">제 목</td>
                <td class="input-field"><input type="text" name="subject" maxlength="25" class="box" size="40" required></td>
            </tr>
            <tr>
                <td class="label">Email</td>
                <td class="input-field">
                   <input type="text" name="email1" value="${getreboard.email1}"class="box" style="width:40%" readOnly>
                   @
                   <input type="text" name="email" value="${getreboard.email2}"class="box" style="width:40%" readOnly>
                </td>
            </tr>
            <tr>
                <td class="label">내 용</td>
                <td class="input-field"><textarea name="content" rows="8" cols="40" class="box" required></textarea></td>
            </tr>

            <tr>
                <td align="center" style="text-align: center;" colspan="2">
                    <input type="submit" value="글쓰기">
                    <input type="reset" value="다시작성">
                    <input type="button" value="목록보기" onclick="window.location='re_list.board.do?kind=${loginMember.kind}&id=${loginMember.id}'">
                </td>
         </tr>
      </table>
   </form>
</div>
<br><br><br>

</body>
</html>

    <%@ include file="../bottom.jsp"%>