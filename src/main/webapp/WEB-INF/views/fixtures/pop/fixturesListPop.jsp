<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>
<script src="<%=request.getContextPath() %>/resources/js/jquery-3.7.0.min.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/customLibs.js"></script>
<script src="<%=request.getContextPath() %>/resources/js/popper.min.js"></script>	
<script src="<%=request.getContextPath() %>/resources/js/bootstrap5/js/bootstrap.bundle.min.js"></script>

<link href="<%=request.getContextPath()%>/resources/css/dashboard.css" rel="stylesheet">

<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
    
<!-- Plugin css file  -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/dist/assets/plugin/owlcarousel/owl.carousel.min.css">

<style type="text/css">
.custom-input {
	width: 100px; /* 원하는 길이로 설정 */
}

.top-color {
	border-top: 3px solid #6aab9c;
}

#overflow::-webkit-scrollbar {
	display: none; /* 크롬, 사파리, 오페라, 엣지 */
}
</style>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>
<security:authorize access="isAuthenticated()">
	<security:authentication property="principal.realUser" var="authMember" />
	<div id="empNo" style="display: none;">${authMember.empNo}</div>
</security:authorize>

<!-- main body area -->
<div class="main px-lg-4 px-md-4" style="margin-top: 20px">
	<!-- Body: Body -->
	<div class="body d-flex py-lg-3 py-md-2">

		<div class="container-xxl">
			<!-- 컨테이너 -->

			<!--Row start  -->
			<div class="border-0 mb-4">
				<div
					class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0"
					style="margin-top: -30px">
					<h3 class="fw-bold mb-0">비품 목록</h3>
				</div>

			</div>


			<!--Row start  -->
			<div class="row clearfix g-3" style="margin-top: -30px">
				<div class="col-sm-12">
					<div class="card mb-3 top-color">
						<div class="card-body">
							<div class="card-header py-3 d-flex justify-content-between"
								style="margin-top: -20px">
								 <select id="fixtureDtl" class="form-select form-select-sm"
									style="width: 13%;">
									<option label="분류 전체" />
									<c:forEach items="${fixDtlList }" var="fixClass">
										<option value="${fixClass.fxtrsSeCode }"
											label="${fixClass.fxtrsSe }" />
									</c:forEach>
								</select> 
								<div class="input-group mb-3" style="width: 180px;">
									<!-- mb-4 -->
									<span class="input-group-text" id="basic-addon1"> <svg
											xmlns="http://www.w3.org/2000/svg" width="16" height="16"
											fill="currentColor" class="bi bi-search-heart"
											viewBox="0 0 16 16">
														  <path
												d="M6.5 4.482c1.664-1.673 5.825 1.254 0 5.018-5.825-3.764-1.664-6.69 0-5.018Z" />
														  <path
												d="M13 6.5a6.471 6.471 0 0 1-1.258 3.844c.04.03.078.062.115.098l3.85 3.85a1 1 0 0 1-1.414 1.415l-3.85-3.85a1.007 1.007 0 0 1-.1-.115h.002A6.5 6.5 0 1 1 13 6.5ZM6.5 12a5.5 5.5 0 1 0 0-11 5.5 5.5 0 0 0 0 11Z" />
														</svg>
									</span> <input type="search" class="form-control" id="searchForm"
										aria-controls="myDataTable" aria-label="Input group example"
										aria-describedby="basic-addon1" />
								</div>
							</div>
							<table id="myProjectTable"
								class="table table-hover align-middle mb-0"
								style="width: 100%; margin-top: -16px">
								<thead>
									<tr style="border-bottom: 1px solid black;">
										<th style="width: 50px">NO.</th>
										<th style="width: 130px">비품코드</th>
										<th style="width: 200px">비품분류</th>
										<th style="width: 350px">비품명</th>
										<th style="width: 80px">재고</th>
										<th style="width: 160px">단가</th>
										<th style="width: 185px">제조사</th>
									</tr>
								</thead>

							</table>

							<div id="overflow"
								style="overflow: auto; width: 100%; height: 450px;">
								<table class="table table-hover align-middle mb-0"
									style="width: 100%">
									<tbody class="fixList">
										<c:forEach items="${fixList }" var="fix" varStatus="i">
											<tr>
												<td style="width: 50px"><span class="fw-bold">${i.count}</span></td>
												<td style="width: 130px">${fix.fxtrsCode }</td>
												<td style="width: 200px">${fix.fxtrsSe }</td>
												<td style="width: 350px">${fix.fxtrsNm }</td>
												<td style="width: 60px">${fix.fxtrsInv }</td>
												<td style="width: 160; text-align: right;"><span id="fxtrsUntpc" style="margin-right: 50px;">${fix.fxtrsUntpc } 원</span></td>
												<td style="width: 185px">${fix.fxtrsMfbiz }</td>
												<td style="display: none;">${fix.fxtrsSeCode }</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							

						</div>
					</div>
				</div>
			</div>
			<!-- 조회창 Row End -->
			<div style="padding-top: 10px; padding-right: 20px;">
				<button style="float: right; width: 100px; height: 40px;" class="btn btn-user btn-set-task w-sm-100"
					onclick="closeWindow()">닫기
				</button>
<!-- 				<button style="float: right;" type="button" class="btn btn-user btn-set-task w-sm-100" -->
<!-- 					onclick="closeWindow()">닫기  -->
<!-- 					<i class="icofont-close me-2 fs-1" style="text-align: right;"></i> -->
<!-- 				</button> -->
			</div>
		</div>
	</div>

	<!--비품발주하기 end  -->
</div>
<!--메인바디  -->



<!-- Plugin Js-->
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<!-- 알림창 라이브러리 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>

<script type="text/javascript">

$('#fixtureDtl').on('change',function() {
	const selectedValue = $(this).val();
	$('.fixList tr').each(function() {
		const categoryValue = $(this).find('td:last-child').text();
		if (selectedValue === ''|| selectedValue === categoryValue) {
			$(this).show();
		} else {
			$(this).hide();
		}
	});
});

//검색창에 keyup 이벤트
$("#searchForm").on("keyup",function() {
let what = $(this).val();
$.getJSON("<c:url value='/fixtures/searchFixtures.do' />",{what : what}).done(function(resp) {
	let tbody = $(".fixList");
	tbody.empty();
	if (resp.length > 0) {
		$(resp).each(function(idx,fix) {
			let tr = $("<tr>").append(
					$("<td>").html(idx),
					$("<td>").html(fix.fxtrsCode),
					$("<td>").html(fix.fxtrsSe),
					$("<td>").html(fix.fxtrsNm),
					$("<td>").html(fix.fxtrsInv),
					$("<td>").html(fix.fxtrsUntpc),
					$("<td>").html(fix.fxtrsMfbiz),
					$("<td>").html(
							$("<div>").addClass("btn-group").attr("role","group")
										.attr("aria-label","Basic outlined example")
										.append($("<button>").attr("type",	"button")
										.addClass("btn btn-outline-secondary")
										.attr("id","fixOrder")
										.attr("data-bs-toggle","modal")
										.attr("data-bs-target","#depadd2")
										.append($("<i>").addClass("icofont-ui-cart text-success")))),
					$("<td>").css("display","none").html(fix.fxtrsSeCode)
			);
			tbody.append(tr);
		});
		} else {
			tbody.append($("<tr>")
						.html($("<td colspan='5'>").html("해당 비품이 존재하지 않습니다.")));
									}
	});
});

	function closeWindow() {
		window.close('/fixtures/fixturesListPop.do');
	}
	
</script>
