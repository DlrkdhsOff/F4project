<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- src/main/webapp/content.jsp -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../top2.jsp"%>
     <html>
     <head> 
     <title></title>
       <style>
        body {
            font-family: 'Noto Sans KR', sans-serif;
            background-color: white;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1000px;
            margin: 140px auto;
            background-color: #fff;
            border-radius: 8px;
            text-align: center;
        }
        
        .container1 {
            max-width: 1000px;
            margin: 0px auto;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            text-align: left;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        th, td {
            padding: 15px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #4CAF50;
            color: white;
        }

        .write-link {
            float: right;
            margin-bottom: 20px;
            margin-top: 20px;
        }

        .write-link a {
            display: inline-block;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

        .write-link a:hover {
            background-color: #45a049;
        }

        .search-form {
            margin-top: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
        }

        .search-form select,
        .search-form input[type="text"],
        .search-form input[type="submit"] {
            margin-right: 10px;
            padding: 10px;
            border-radius: 5px;
        }

        .pagination {
            margin-top: 20px;
            display: flex;
            justify-content: center;
        }

        .pagination a {
            display: inline-block;
            padding: 10px 15px;
            margin: 10px 5px;
            background-color: #ddd;
            text-decoration: none;
            color: black;
            border-radius: 10px;
            transition: background-color 0.3s;
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

        table th, table td {
            box-sizing: border-box;
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
        }

        table th, table td {
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .board-heading {
            font-size: 30px;
            margin: 20px 0;
        }
        
        .container b {
          font-size: 20px; /* 원하는 크기로 조절하세요 */
      }
      
      .write-link a, .pagination a, .comment-buttons a {
          display: inline-block;
          padding: 10px 20px;
          background-color: #4CAF50;
          color: white;
          text-decoration: none;
          border-radius: 5px;
          transition: background-color 0.3s;
      }
      
      .write-link a:hover, .pagination a:hover:not(.active), .comment-buttons a:hover {
          background-color: #45a049;
      }
    </style>
    </head>
    
<body>
    <div class="container">
        <b>내용 보기</b><br><br>
        <table border="0">
        <tr>
            <th width="20%">글번호</th>
            <td width="30%" align="center">${getReboard.num}</td>
        </tr>
              <tr>
         <th width="20%">작성자</th>
         <td width="30%" align="center">${getReboard.writer}</td>
         <th width="20%">작성일</th>
         <td width="30%" align="center">${getReboard.reg_date}</td>
      </tr>
      <tr>
         <th width="20%">글제목</th>
         <td width="80%" colspan="3">${getReboard.subject}</td>
      </tr>
      <tr>
         <th width="20%">글내용</th>
         <td width="80%" colspan="3">${getReboard.content}</td>
      </tr>
    </table>
    <table border="0" width="30%">
        <!-- 댓글 목록 출력 -->
           <c:if test="${loginId == 'admin'}">
           <h3>답글 쓰기</h3>
           <form name="ctf" action="re_writeForm_ad_board.do" method="post">
              <input type="hidden" name="num" value="${getReboard.num}" />
              <input type="hidden" name="kind" value="${getReboard.kind}" />
              <input type="hidden" name="id" value="${getReboard.id}" />
              <c:if test="${getReboard.answer.equals('0')}">
                    <textarea name="ad_answer" rows="5" cols="80" class="container1" placeholder="준모형 답변해줘..." required></textarea>
                   </c:if>
                   <c:if test="${getReboard.answer.equals('1')}">
                    <textarea name="ad_answer" rows="5" cols="80" class="container1" required>
                 ${getReboard.ad_answer}
              </textarea>
                   </c:if>
              <br>
              <br>
              <input type="submit" value="등록하기" style="border: 1px solid black; background-color: green; color: white; border-radius: 13px; padding: 6px 21px;" />
              &nbsp;&nbsp;<button type="button" onClick="window.location.href='re_list.board.do?kind=${loginMember.kind}&id=${loginMember.id}'" style="border: 1px solid black; background-color: green; color: white; border-radius: 13px; padding: 6px 21px;">글목록</button>
           </form>
           </c:if>
           <c:if test="${empty getReboard.ad_answer}">
            <tr>
                <td>댓글이 없습니다.</td>
            </tr>
           </c:if>
           <c:if test="${not empty getReboard.ad_answer}">
            <c:if test="${loginId != 'admin'}">
               <c:forEach var="dto" items="${comment}">
                <tr>
                    <td align="right" width="20%">답변</td>
                    <td align="center" width="60%"><c:out value="${dto.ad_answer}"/></td>
                </tr>
            </c:forEach>
              <tr>
                 <td align="right" colspan="3" class="comment-buttons">
                      <button type="button" onClick="window.location.href='re_list.board.do?kind=${loginMember.kind}&id=${loginMember.id}'" style="border: 1px solid black; background-color: green; color: white; border-radius: 13px; padding: 6px 21px;">글목록</button>
                  </td>
              </tr>
            </c:if>
      </c:if>
    </table>
</div>
</body>
</html>
<%@ include file="../bottom.jsp"%>  