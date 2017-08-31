<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
textarea {
	resize: none;
}
</style>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<c:import url="/WEB-INF/views/include/basicIncludeTop.jsp"></c:import>
</head>
<body>
	<c:import url="/WEB-INF/views/include/navBar.jsp"></c:import>
	<div>
		<table>
			<tr>
				<td>글번호</td>
				<td><c:out value="${detail.boardNo}" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><c:out value="${detail.title}" /></td>
				<td>날짜</td>
				<td><fmt:formatDate value="${detail.regDate}" /></td>
			</tr>
			<tr>
				<td>글쓴이</td>
				<td><c:out value="${detail.writer}" /></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><c:out value="${detail.viewCount}" /></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><c:out value="${detail.content}" /></td>
			</tr>

			<tr>
				<td><a href="updateForm?boardNo=${detail.boardNo}">수정</a></td>
				<td><a href="delete?boardNo=${detail.boardNo}">삭제</a></td>
			</tr>
			<tr>
				<td><a href="list">목록</a></td>
			</tr>
		</table>

		<table id="commentList">
		</table>

		<div id="comment">
			<form id="rForm" method="post" action="commentRegist.do">
				<table width="70%" class="table table-hover">
					<tr>
						<td><input class="form-control" type="text" id="commentId"
							name="commentId" /></td>
						<td><textarea class="form-control" name="content" rows="2"
								cols="60"></textarea></td>
						<td><button type="submit" class="btn btn-default">등록</button></td>
					</tr>
				</table>
			</form>
		</div>

		<script>
			function commentList() {
				$.ajax({
					url : "commentList.do",
					data : {
						boardNo : '${detail.boardNo}'
					},
					dataType : "json"

				}).done(makeCommentList);
			}

			// 댓글 등록, 수정, 삭제, 목록
			// 목록 데이터를 받아서 commentList에
			// 화면 출력
			function makeCommentList(result) {

				var html = "";
				html += "<div id='commentTable' class='table-responsive'>";
				html += "<table width='80%' class='table table-hover'>";
				for (var i = 0; i < result.length; i++) {
					var comment = result[i];
					html += "<tr id='row" + comment.commentNo + "'>";
					html += "<td>" + comment.commentId + "</td>"
					html += "<td>" + comment.commentContent + "</td>";
					var date = new Date(comment.commentDate);
					console.log(comment.commentDate);
					// 				var time = commentDate.getFullYear() + "-" + (date.getMonth() + 1);
					html += "<td>" + comment.commentDate + "</td>";
					html += "<td>";

					html += "<a href='javascript:commentDelete("
							+ comment.commentNo + ")'>삭제</a>";
					html += "<a href='javascript:commentUpdateForm("
							+ comment.commentNo + ")'>수정</a>";
					html += "</td>";
					html += "</tr>";

				}
				if (result.length == 0) {
					html += "<tr>";
					html += "<td colspan='4'>댓글이 존재하지 않습니다.</td>";
					html += "</tr>";
				}
				html += "</table>";
				html += "</div>";

				$("#commentList").html(html);
			}

			function commentDelete(commentNo) {
				$.ajax({
					url : "commentDelete.do",
					data : {
						boardNo : '${detail.boardNo}',
						commentNo : commentNo
					},
					dataType : "json"

				}).done(makeCommentList);
			}

			// 댓글 등록 처리
			$("#rForm")
					.submit(
							function() {
								$
										.ajax(
												{
													url : "commentRegist.do",
													type : "POST",
													data : {
														boardNo : '${detail.boardNo}',
														commentContent : $(
																"#rForm textarea[name='content']")
																.val(),
														commentId : $(
																"#commentId")
																.val()
													},
													dataType : "json"
												})
										.done(
												function(result) {
													console.log(result);
													// 입력폼 초기화 작업
													// 로그인 안한 상태인 경우
													//if (!'${user.id}') {
													// 				$("#rForm input[name='userId']").val("");
													//} 
													$(
															"#rForm textarea[name='content']")
															.val("");
													makeCommentList(result);
												});

								return false;
							});

			function commentUpdateForm(commentNo) {
				// id가 row로 시작하는 모든 엘리먼트...
				$("#commentList tr[id ^= 'row']").show();
				$("#commentList tr[id ^= 'mod']").hide();

				var modId = $("#row" + commentNo + " > td:eq(0)").text();
				var modContent = $("#row" + commentNo + " > td:eq(1)").text();

				var html = "";
				html += "<tr id='modRow"+commentNo+"'>";
				html += "<td>" + modId + "</td>";
				html += "<td><textarea class='form-control' name='content'>"
						+ modContent + "</textarea></td>";
				html += "<td colspan='2'>"
				html += "<a href='javascript:commentUpdate(" + commentNo
						+ ");'>수정</a>";
				html += "<a href='javascript:commentCancel(" + commentNo
						+ ")'>취소</a>";
				html += "</td>"
				html += "</tr>";

				// 해당 tr를 화면에서 숨긴다.
				$("#row" + commentNo).after(html);
				$("#row" + commentNo).hide();
			}

			function commentUpdate(commentNo) {
				$.ajax(
						{
							url : "commentUpdate.do",
							type : "POST",
							data : {
								boardNo : '${detail.boardNo}',
								commentNo : commentNo,
								commentContent : $(
										"#modRow" + commentNo
												+ " textarea[name='content']")
										.val()
							},
							dataType : "json"
						}).done(makeCommentList);
			}

			function commentCancel(commentNo) {
				$("#modRow" + commentNo).remove();
				$("#row" + commentNo).show();
			}

			// 페이지가 로딩되면...
			commentList();
		</script>
		<!-- start of footer -->
		<c:import url="/WEB-INF/views/include/footer.jsp"></c:import>
		<!-- end of footer -->
	</div>
	<!-- end main-wrapper -->
	<c:import url="/WEB-INF/views/include/basicIncludeBottom.jsp"></c:import>
</body>
</html>