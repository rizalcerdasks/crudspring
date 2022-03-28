<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8" />
	<title>Todo List</title>
</head>
<body>
	<table>
		<tr>
			<th>ID</th>
			<th>User</th>
			<th>Description</th>
			<th>Target Date</th>
			<th>Star Meter</th>
			<th>&nbsp;</th>
			<c:forEach items="${todos}" var="todo">
			<tr>
				<td>${todo.id}</td>
				<td>${todo.user}</td>
				<td>${todo.description}</td>
				<td>${todo.targetDate}</td>
				<td>${todo.starMeter}</td>
				<td><a href="edit/${todo.id}">Edit</a></td>
                <td><a href="delete/${todo.id}">Delete</a></td>
				<td>&nbsp;</td>
			</tr>
			</c:forEach>
		</tr>
	</table>
</body>
</html>