<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ include file="../top2.jsp"%>
        <style> 
        table a:hover {
          text-decoration: none !important;
      }
      
      table a {
          text-decoration: none !important;
      }
      
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
      }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

      th, td {
          padding: 25px;
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
           margin-top: 20px; /* 상단 여백 추가 */
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
           margin-top: 0px;
           display: flex;
           align-items: center;
           justify-content: center; /* 내용을 수평으로 가운데 정렬 */
       }
   
       .search-form select,
       .search-form input[type="text"],
       .search-form input[type="submit"] {
           margin-right: 10px;
           padding: 10px;
           border-radius: 5px;
       }

      .pagination {
          margin-top: 0px;
          display: flex;
          justify-content: center;
      }

       .pagination a {
          display: inline-block;
          padding: 10px 15px;
          margin: 30px 5px;
          background-color: #ddd;
          text-decoration: none;
          color: black;
          border-radius: 10px;
          transition: background-color 0.3s; /* 마우스 오버 효과를 위한 트랜지션 추가 */
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
          box-sizing: border-box; /* 패딩과 보더를 너비에 포함시킴 */
      }
      
      table {
          width: 100%; /* 테이블의 전체 너비를 100%로 설정 */
      }

      table th, table td {
          overflow: hidden;
          text-overflow: ellipsis; /* 콘텐츠가 너무 길 경우 줄임표(...)로 표시 */
          white-space: nowrap; /* 콘텐츠가 줄 바꿈되지 않도록 설정 */
      }
      
      .board-heading {
        text-align: center;
        font-size: 30px;
        margin: 20px 0; /* Adjust margin as needed */
    }
    
       .new-post {
       width: 50px;
       height: 20px;
       background-color: #3498db;
       color: #ffffff;
       text-align: center;
       line-height: 20px;
       border-radius: 5px;
   }
      

    </style>
    
    <script type="text/javascript">
   function write(){
      alert("로그인을 해주세요");
      location.href="login.do";
      return
   }
</script>
    
    

<div class="container">
    <div class="board-heading">
        문의 하기
    </div>
    <div class="write-link">
        <a href="re_writeForm.board.do?kind=${loginMember.kind}">글쓰기</a>
    </div>


    <table border="0">
        <tr>
            <th>번호</th>
            <th width="30%">제 목</th>
            <th>작성자</th>
            <th>작성일</th>
            <th>답변</th>
        </tr>
            
         
            <c:if test="${empty listReboard}">
             <tr>
                 <td colspan="5">등록된 게시물이 없습니다.</td>
              </tr>
         </c:if>
         <c:set var="num" value="${number}"/>
            <c:forEach var="dto" items="${listReboard}" >
              <tr>
              <td>
                 <c:out value="${num}"/>
           		 <c:set var="num" value="${num-1}"/>     
              </td>
              <td>
                 <a href="re_content.board.do?num=${dto.num}">
                    ${dto.subject}
                 </a>
              </td>
              <td>${dto.writer}</td>
              <td>${dto.reg_date}</td>
              <c:if test="${dto.answer.equals('0')}">
                 <td>답변대기</td>
                </c:if>
                <c:if test="${dto.answer.equals('1')}">
                 <td>답변완료</td>
                </c:if>
           </tr>
           
         
       </c:forEach>
         
    </table>
    <br><br><br><br>
      <div class="search-form">
            <form name="f" action="re_find.board.do" method="post">
            <input type="hidden"  name="kind" value="${loginMember.kind}"/>
                <select name="search">
                    <option value="writer">작성자</option>
                    <option value="subject">글제목</option>
                    <!-- <option value="content">글내용</option> -->
                </select>
                <input type="text" name="searchString" class="box">
                <input type="submit" value="검색">
            </form>
        </div>
        
        <div class="pagination">
    
    <c:if test="${count > 0}">
        <c:if test="${startPage > pageBlock}">
            <a href="re_list.board.do?pageNum=${startPage-3}&kind=${loginMember.kind}">이전</a>
        </c:if>
        <c:forEach var="i" begin="${startPage}" end="${endPage}">
            <a href="re_list.board.do?pageNum=${i}&kind=${loginMember.kind}">${i}</a>
        </c:forEach>
        <c:if test="${endPage < pageCount}">
            <a href="re_list.board.do?pageNum=${startPage+3}&kind=${loginMember.kind}">다음</a>
        </c:if>
    </c:if>
</div>
</div>

     <%@ include file="../bottom.jsp"%>  

    