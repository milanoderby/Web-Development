<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="false"%>

<!DOCTYPE html>
<html lang="en">
<head>
<jsp:include page="header.jsp"></jsp:include>
<meta charset = "UTF-8">
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
						<form method="post" action="write">
							<div class="form-group">
								<label for="title">Title:</label> <input type="text"
									class="form-control" name="title" id="title" maxlength="50"
									required>
							</div>
							
							<div class="form-group">
							<label for="content">Content:</label>
							<textarea class="form-control" rows="5" name="content"
								id="content" maxlength="100" required> </textarea>
							</div>

							<div class="form-group">
								<label for="email">Email:</label> <input type="text"
									class="form-control" name="email" id="email" maxlength="20"
									pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" required>
							</div>

							<div class="form-group">
								<label for="password">Password:</label> <input type="text"
									class="form-control" name="password" id="password"
									maxlength="20" required>
							</div>
							<div class="form-group">
								<input type="submit" id="complete"
									class="btn btn-primary btn-block" id="complete" value="글 게시하기">
							</div>
							<div class="form-group">
								<button type="button" id="cancel"
									class="btn btn-danger btn-block" id="complete">취소</button>
							</div>
						</form>
					</div>
				</div>
			</div>

		</div>
	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>

<!-- 
	<script>
		$("#complete").click(function() {
			var email = $("#email").val();
			if (!email_check(email)) {
				alert("Not Right Email Type! Refill the Email form")
				return false;
			}
			$("form").submit();
			return false;
		});
	</script>

	<script>
		function email_check(email) {
			var regex = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
			return (email != '' && email != 'undefined' && regex.test(email));
		}
	</script>
 -->

	<script>
		$("#cancel").click(function() {
			location = "../board";
			return false;
		});
	</script>
</body>
</html>