<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="header.jsp"></jsp:include>
</head>
<body>
	<jsp:include page="nav.jsp"></jsp:include>

	<div class="container-fluid text-center">
		<div class="row content">
			<div class="col-sm-1 sidenav">
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
				<p>
					<a href="#">Link</a>
				</p>
			</div>
			<div class="col-sm-8 text-left">
				<div class="jumbotron">
					<div class="container text-center">
						<form method="post" action="/board/${board.id}">
							<div class="form-group">
								<label for="title">Title:</label> <input type="text"
									class="form-control" name="title"
									id="title" value="${board.title}">
							</div>
							<div class="form-group">
								<label for="content">Content:</label>
								<textarea class="form-control" rows="5" name="content"
									id="content"> ${board.content} </textarea>
							</div>
							
							<div class="form-group">
								<label for="email">Email:</label> <input type="text"
									class="form-control" name="email"
									id="email" value="${board.email}" readonly="readonly" disabled>
							</div>
							
							<div class="form-group">
								<label for="password">Password:</label> <input type="text"
									class="form-control" name="password" id="password">
							</div>
							<button type="button" id="complete"
								class="btn btn-primary btn-block" id="complete">글 수정하기</button>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

	<script>
		$("#complete").click(function() {
			$("form").submit();
			return false;
		});
	</script>
</body>
</html>