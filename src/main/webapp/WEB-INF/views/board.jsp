<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
								<td>날짜</td>
								<td>조회수</td>
								<td>댓글수</td>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>게시판 실습1</td>
								<td>최용화</td>
								<td>2019.12.18</td>
								<td>13</td>
								<td>1</td>
							</tr>
							<tr>
								<td>2</td>
								<td>게시판 실습2</td>
								<td>최효민</td>
								<td>2019.12.18</td>
								<td>10</td>
								<td>2</td>
							</tr>
						</tbody>
					</table>

					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
					<script
						src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

					<a class="btn btn-info pull-right" onclick="location.href='/board/write'">글쓰기</a>
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

</body>
</html>