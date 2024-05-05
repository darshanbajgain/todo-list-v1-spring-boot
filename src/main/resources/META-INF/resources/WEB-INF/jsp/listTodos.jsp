
<%@include file="common/header.jspf"%>
<%@include file="common/nav.jspf"%>
<div class="container">
	<h2>Your Todos are:</h2>
	<table class="table">
		<thead>
			<th>Description</th>
			<th>Target Date</th>
			<th>Is Done?</th>
			<th></th>
			<th></th>
		</thead>
		<tbody>
			<c:forEach items="${todos}" var="todo">
				<tr>
					<td>${todo.description}</td>
					<td>${todo.targetDate}</td>
					<td>${todo.done}</td>
					<td><a href="delete-todos?id=${todo.id}"
						class="btn btn-warning">DELETE</a></td>
					<td><a href="update-todos?id=${todo.id}"
						class="btn btn-success">UPDATE</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<a href="add-todo" class="btn btn-success">Add Todo</a>
</div>

<%@include file="common/footer.jspf"%>
