<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script
	src="${pageContext.request.contextPath }/resources/js/ckeditor/ckeditor.js"></script>
	
<form:form modelAttribute="noticeboard" method="post"
	enctype="multipart/form-data" style="margin-top:75px;">
	<form:hidden path="noticeCode" />
	
	<h4>
		<a class="fw-bold" href="<%=request.getContextPath()%>/notice/noticeList.do">공지게시판 수정&nbsp;
		<i class="bi bi-pencil-square fs-4 fw-bold" style="color: #6aab9c;"></i>
		</a>
	</h4>
	<table class="table table-bordered">
		<tbody style="height: 650px;">
		<tr>
			<th>제목</th>
			<td><form:input path="noticeTitle" class="form-control" /> <form:errors
					path="noticeTitle" class="error" /></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><form:textarea path="noticeContent" class="form-control" />
				<form:errors path="noticeContent" class="error" /></td>
		</tr>
		<tr>
			<th>기존 첨부파일</th>
			<td><c:if
					test="${not empty noticeboard.fileGroup and not empty noticeboard.fileGroup.detailList }">
					<c:forEach items="${noticeboard.fileGroup.detailList }"
						var="fileDetail">
						<span data-atch-file-id="${fileDetail.atchFileId }"
							data-file-sn="${fileDetail.fileSn }">
							${fileDetail.orignlFileNm } <!-- 						<span class="btn btn-danger fileDelBtn">삭제</span> -->
						</span>
					</c:forEach>
				</c:if></td>
		</tr>
		<tr>
			<th>첨부파일</th>
			<td><input type="file" name="boFiles" multiple /></td>
		</tr>
		<tr>
			<td colspan="2" style="text-align: center;">
                <button id="submitBtn" type="button" class="btn btn-success">수정</button>
<%--                 <input type="reset" value="취소" class="btn btn-danger" href="<%=request.getContextPath()%>/notice/noticeList.do"/> --%>
<a href="<%=request.getContextPath()%>/notice/noticeList.do" class="btn btn-danger">취소</a>
            </td>
		</tr>
		</tbody>
	</table>
</form:form>
<%-- <script src="<c:url value='/resources/js/app/board/boardEdit.js'/>"></script> --%>
<script>
	CKEDITOR
			.replace(
					'noticeContent',
					{
						filebrowserImageUploadUrl : '${pageContext.request.contextPath }/board/uploadImage.do',
					});
	
	
document.getElementById('submitBtn').addEventListener('click', function() {
    Swal.fire({
        title: '수정하시겠습니까?',
        icon: 'question',
        showCancelButton: true,
        confirmButtonText: '수정',
        cancelButtonText: '취소'
    }).then((result) => {
        if (result.isConfirmed) {
            // 폼을 서버로 제출
            document.querySelector('form').submit();
        }
    });
});
</script>
