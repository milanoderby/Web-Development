<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" 
		contentType="text/html; charset=UTF-8"
		pageEncoding="UTF-8"
		session="false" %>

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
				<h1>Board</h1>
				<div class="container">
					<table class="table table-hover table-bordered text-center">
						<thead class="btn-info">
							<tr>
								<td>번호</td>
								<td>제목</td>
								<td>작성자</td>
								<td>게시날짜</td>
								<td>수정날짜</td> 
								
							</tr>
						</thead>
						<tbody>
							<c:forEach var="board" items="${boardList}">
								<tr id="${board.id}">
									<td>${board.id}</td>
									<td>${board.title}</td>
									<td>${board.email}</td>
									<td>${board.cre_date}</td>
									 <td>${board.mod_date}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>

					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
					<script
						src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

					<a class="btn btn-info pull-right" id="write">글쓰기</a>
				</div>
				<hr>
				
				<!-- Paging
				<div class="text-center">
					<ul class="pagination">
						<li><a href="#">1</a></li>
						<li><a href="#">2</a></li>
						<li><a href="#">3</a></li>
						<li><a href="#">4</a></li>
						<li><a href="#">5</a></li>
					</ul>
				</div>
				 -->
			</div>
			
		</div>
	</div>

	<footer>
		<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<script>
		$("#write").click(function() {
			location = "write";
			return false;
		});

		$("tbody tr").click(function(){
			var id = $(this).attr("id");
			location = id;
			return false;
		});
	</script>
</body>
</html>