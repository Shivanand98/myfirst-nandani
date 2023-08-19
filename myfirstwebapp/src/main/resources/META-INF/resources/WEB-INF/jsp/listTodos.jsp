
<%@ include file="common/header.jsp" %>
<%@ include file="common/navigation.jsp" %>
<div class="cotainer">
<h1>Your Todos Are</h1>
<table class="table">
<thead>
<th>description</th>
<th>Targer Date</th>
<th>Is Done</th>
<th></th>
<th></th>
</thead>
<tbody>
<c:forEach items="${todos}" var="todo">
<tr>
<td>${todo.description }</td>
<td>${todo.targetDate }</td>
<td>${todo.done }</td>
<td> <a href="delete-todo?id=${todo.id}" class="btn btn-warning">Delete</a></td>
<td> <a href="update-todo?id=${todo.id}" class="btn btn-success">Update</a></td>
</tr>
</c:forEach>
</tbody>
</table>
<a href="add-todos" class="btn btn-success">Add Todo</a>
</div>
<%@ include file="common/footer.jsp" %>
