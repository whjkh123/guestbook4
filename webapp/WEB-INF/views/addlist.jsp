<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<form action="${pageContext.request.contextPath }/gbc/add" method="post">

		<table border="1">

			<tr>
				<td>이름</td>
				<td><input type="text" name="name"></td>
				<td>비밀번호</td>
				<td><input type="password" name="password"></td>
			</tr>

			<tr>
				<td colspan="4"><textarea rows="10" cols="50" name="content"></textarea></td>



			</tr>

			<tr>
				<td colspan="4"><button type="submit">확인</button></td>



			</tr>

		</table>

	</form>

	<c:forEach items="${requestScope.GuestList }" var="gVo">
		<table border="1">

			<tr>
				<td>${gVo.no }</td>
				<td>${gVo.name }</td>
				<td>${gVo.reg_date }</td>
				<td><a href="${pageContext.request.contextPath }/gbc/dForm?no=${gVo.no }">삭제</a></td>
				<%-- <td><a href="/guestbook3/gbc/dForm/${gVo.no }/${gVo.password}">삭제</a></td> --%>
			</tr>

			<tr>
				<td colspan="4">${gVo.content }</td>



			</tr>

		</table>

		<br>
	</c:forEach>

</body>
</html>