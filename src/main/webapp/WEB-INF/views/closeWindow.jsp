<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- closeWindow.jsp -->
<script type="text/javascript">
	alert("${msg}")
	window.close(); // 현재 창 닫기
    window.opener.location.reload(); // 부모 창 새로고침
</script>