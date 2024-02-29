<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<%@ include file="../common/_head.jspf"%>
<style>
td, th {
	text-align: center;
}
</style>
<script>
	function search() {
		const field = $('#field').val();
		const query = $('#query').val();
		location.href = '/mp/mini/boardAdvice/listAdvice?p=${currentBoardPage}';
	}
</script>
</head>
<body>
	<%@ include file="../common/_top.jspf"%>

	<div class="container" style="margin-top: 150px">
		<div class="row">

			<div class="col-9">
				<table class="table table-sm table-borderless">
					<tr>
						<td style="width: 52%; text-align: left">
							<h3>
								<strong class="me-5">QnA</strong> <span
									style="font-size: 16px"><a href="/mp/mini/board/insertAdvice"><i
										class="fa-solid fa-pen-to-square"></i> 글 쓰기</a></span>
							</h3>
						</td>
					</tr>
				</table>
				<hr>

				<table class="table">
					<tr>
						<th style="width: 10%">순번</th>
						<th style="width: 20%">아이디</th>
						<th style="width: 40%">문의 사항</th>
						<th style="width: 10%">조회수</th>
						<th style="width: 20%">문의 시간</th>
					</tr>
					<c:forEach var="board" items="${boardList}">
						<tr>
							<td>${board.bid}</td>
							<td>${board.uid}</td>
							<td>${board.title}</td>
							<td>${board.viewCount}</td>
							<td>${fn:substring(fn:replace(board.modTime,"T"," "), 2, 16)}</td>
						</tr>
					</c:forEach>
				</table>
				<%-- pagination --%>
				<ul class="pagination justify-content-center mt-4">
					<li class="page-item"><a class="page-link" href="#"><i
							class="fa-solid fa-less-than"></i></a></li>
					<c:forEach var="page" items="${pageList}">
						<li class="page-item ${currentBoardPage eq page ? 'active' : ''}">
							<a class="page-link"
							href="/mp/mini/board/listBoardAdvice?p=${page}&f=${field}&q=${query}">${page}</a>
						</li>
					</c:forEach>
					<li class="page-item"><a class="page-link" href="#"><i
							class="fa-solid fa-greater-than"></i></a></li>
				</ul>

			</div>
		</div>
	</div>

	<%@ include file="../common/_bottom.jspf"%>

</body>
</html>