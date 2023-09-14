<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- plugin css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/responsive.dataTables.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/datatables/dataTables.bootstrap5.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.css">
<!-- project css file  -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/dist/assets/css/ihealth.style.min.css">
<script type="text/javascript" src="<%=request.getContextPath()%>/resources/js/loadingoverlay.min.js"></script>

<style>

.evenTd{
	background-color: rgba(106, 171, 156, 0.1);
}



.nameTd{
	text-align: left;
	width: 30% !important;
}

.valueTd{
	text-align: left;
	width: 65% !important;
}

.top-color {
	border-top: 3px solid #6aab9c;
}

.card-body {
	height: 100px;
}

tr, td, th.sorting {
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

a.page-link {
	font-size: xx-small;
}

li.pagelink {
	width: 50px;
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

label {
	font-size: 14px; /* 텍스트 크기 설정 */
}

input[type="search"] {
	width: 100px !important; /* 입력칸의 길이 설정 */
}

ui {
	width: 50px;
	font-size: xx-small;;
	text-align: center; /* 텍스트 정렬을 가운데로 설정 */
}

/* 민트색 버튼 스타일 */
.mint-btn {
	margin-left: 10px;
	display: inline-block;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
	background-color: #6aab9c; /* 배경색 */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.2em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

.btn-secondary{
margin-left: 10px;
	display: inline-block;
	font-weight: 500;
	line-height: 1.5;
	text-align: center;
	vertical-align: middle;
	cursor: pointer;
	color: #fff; /* 텍스트 색상 */
/* 	background-color: #6aab9c; /* 배경색 */ */
	border-color: #6aab9c; /* 테두리 색상 */
	user-select: none;
	padding: 0.375rem 0.75rem;
	font-size: 1.2em;
	border-radius: 0.25rem;
	float: right; /* 버튼을 오른쪽으로 부유(floating)시킴 */
}

/* 민트색 버튼 호버 효과 */
.mint-btn:hover {
	background-color: #5fa192; /* 호버시 배경색 변경 */
	border-color: #5fa192; /* 호버시 테두리 색상 변경 */
	/* 다른 호버 효과 (예: 텍스트 색상 변경) 추가 가능 */
}

/* 민트색 버튼 클릭 효과 */
.mint-btn:active {
	background-color: #5fa192; /* 클릭시 배경색 변경 */
	border-color: #5fa192; /* 클릭시 테두리 색상 변경 */
}

/* 움직이는 텍스트 */
.animated-title {
	color: black;
	font-size: 14px;
	font-family: serif;
	font-weight: 400;
	position: relative;
	width: 100%;
	max-width: 100%;
	height: 50px; /* 높이를 고정으로 설정, 원하는 크기로 조절 */
	overflow: hidden;
}

.animated-title .track {
	position: absolute;
	white-space: nowrap;
	will-change: transform;
	animation: marquee 17s linear forwards;
	/*forwards; 대신 infinite; 사용하면 반복, 애니메이션 시간을 조절 */
}

@
keyframes marquee {from { transform:translateX(0);
	
}

to {
	transform: translateX(-100%);
}

}
.content {
	margin-left: 500px;
}

.custom-input {
	width: 500px;
}

.item {
	width: 100px;
}

.link {
	width: 90px;
	color: #008C8C;
}

.active {
	color: #008C8C;
}

.nav-tabs {
	color: black;
}

.labelText {
	display: block;
	text-align: left;
}

.labelInput {
	height: 30px;
}

.scroll::-webkit-scrollbar {
  display: none;
}
</style>
<!-- Body: Body -->
<div class="body d-flex py-3" style="margin-top: -30px;">
	<div class="container-xxl">
		<!-- 1행 3열 카드 시작 -->
		<div class="row g-3 mb-3"
			style="height: 88vh; margin-left: -150px; margin-right: -330px">
			<!-- 세로로 길게 배치된 card1 -->
			<div class="col-md-4 col-lg-4"
				style="width: 20%; height: 100%; margin-right: 1%;">
				<div class="card top-color" style="height: 95%;">
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c;">환자 정보</h6>
					</div>
					<div class="card-body">
						<div style="height: 90%;">
							<table class="table">
								<tr>
									<th colspan="2" style="border-bottom: 2px solid #6aab9c;" ><h5 id="patName"></h5></th>
									<!-- 이름영역 -->
								</tr>
								<tr>
									<td><label class="labelText">접수코드</label><br> <input
										class="labelInput" type="text" id="recCode" name="inputLeft"
										readonly="readonly"></td>
									<td><label class="labelText">식별코드</label><br> <input
										class="labelInput" type="text" id="patntCode"
										name="inputRight" readonly="readonly"></td>
								</tr>
								<tr>
									<td><label class="labelText">주민번호</label><br> <input
										class="labelInput" type="text" id="patIdenti" name="inputLeft"
										readonly="readonly"></td>
									<td><label class="labelText">진료실</label><br> <input
										class="labelInput" type="text" id="fcltyName"
										name="inputRight" readonly="readonly"></td>
								</tr>
								<tr>
									<td class="nameTd" >처방상병</td>
									<td id="dssArea"></td>
								</tr>
								<tr>
									
								</tr>
								<tr>
									<td style="text-align: left">처방약품</td>
									<td id="mediArea"></td>
								</tr>
								<tr>
										
								</tr>
								<tr>
									<td style="text-align: left">검사내역</td>
									<td id="inspArea"></td>
								</tr>
								<tr>
									
								</tr>
								<tr>
									<td style="text-align: left">입원정보</td>
									<td id="hospiArea"></td>
								</tr>
								<tr>
									<td style="text-align: left">검진정보</td>
									<td id="mdexInfo"></td>
								</tr>
							</table>
						</div>
						<div style="margin-right: 30%;">
						<button type="button" id="receiveBtn" class="mint-btn mt-1 fw-bold">수납</button>
						<button type="button" id="docuBtn" class="btn btn-secondary" style="margin-top: 4px;">제증명</button>
						</div>
					</div>
				</div>
			</div>
			<!-- 수납대기목록 start -->
			<div class="col-md-8 col-lg-8"
				style="display: flex; flex-direction: column; width: 70%; height:95%">
				<div class="card h-100 top-color" style="height: 100%;">
					<div
						class="card-header py-3 d-flex justify-content-between bg-transparent border-bottom-0">
						<h6 class="bi bi-chevron-right" style="font-weight: 700; font-size: 16px; color: #173b6c; margin-bottom: -10px;">수납 대기 목록</h6>
						
					</div>
					<div class="card-body">
						<ul class="nav nav-tabs mb-3" id="myTab1" role="tablist">
							<li class="nav-item item" role="presentation" style="width: 100px;"><a
								class="nav-link link active" id="tab1-tab" data-bs-toggle="tab"
								href="#tab1" role="tab" aria-controls="tab1"
								aria-selected="true" style="width: 100px; text-align: center;">외래진료</a></li>
							<li class="nav-item item" role="presentation" style="width: 100px;"><a
								class="nav-link link" id="tab3-tab" data-bs-toggle="tab" href="#tab3"
								role="tab" aria-controls="tab3" aria-selected="false"
								style="width: 100px; text-align: center;">병동</a></li>
							<li class="nav-item item" role="presentation"
								style="width: 100px; margin-right: 755px"><a
								class="nav-link link" id="tab4-tab" data-bs-toggle="tab" href="#tab4"
								role="tab" aria-controls="tab4" aria-selected="false"
								style="width: 100px; text-align: center;">검진</a></li>
							<li class="nav-item item" role="presentation" style="width: 136px; margin-left: 0px;">
								<input type="date" id="dateSelect">
							</li>
							<li class="nav-item item" role="presentation" style="width: 200px; margin-left: 0px;">
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
												aria-describedby="basic-addon1" autocomplete="off" />
								</div>
							</li>
						</ul>
						<div class="tab-content" id="myTabContent">
							<!-- 외래진료 -->
							<div class="tab-pane fade show active" id="tab1" role="tabpanel"
								aria-labelledby="tab1-tab">
								<div class="scroll" style="overflow: auto; width: 1400px; height: 652px;">
									<table class="table table-hover align-middle mb-0" >
										<thead>
											<tr>
												<th>접수코드</th>
												<th>성명</th>
												<th>생년월일</th>
												<th>처방일자</th>
												<th>진료비 총액</th>
												<th>청구액</th>
												<th>수납여부</th>
												<th>비고</th>
											</tr>
										</thead>
										<tbody id="patientArea">
	
										</tbody>
									</table>
								</div>
							</div>
							<!-- 외래진료 end -->

							<!-- 병동 -->
							<div class="tab-pane fade" id="tab3" role="tabpanel"
								aria-labelledby="tab3-tab">
								<div class="scroll" style="overflow: auto; width: 1400px; height: 652px;">
								<table class="table table-hover align-middle mb-0">
									<thead>
										<tr>
											<th>접수코드</th>
											<th>성명</th>
											<th>생년월일</th>
											<th>입원일자</th>
											<th>퇴원일자</th>
											<th>재원일자</th>
											<th>병실</th>
											<th>총금액</th>
											<th>청구액</th>
											<th>수납여부</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody id="hospitalArea">

									</tbody>
								</table>
								</div>
							</div>
							<!-- 병동 end -->
							<!-- 검진 -->
							<div class="tab-pane fade" id="tab4" role="tabpanel"
								aria-labelledby="tab4-tab">
								<div class="scroll" style="overflow: auto; width: 1400px; height: 652px;">
								<table class="table table-hover align-middle mb-0">
									<thead>
										<tr>
											<th>접수코드</th>
											<th>성명</th>
											<th>생년월일</th>
											<th>검진일자</th>
											<th>검진항목</th>
											<th>총금액</th>
											<th>청구액</th>
											<th>수납여부</th>
											<th>비고</th>
										</tr>
									</thead>
									<tbody id="mdexArea">

									</tbody>
								</table>
								</div>
							</div>
							<!-- 검진 end -->

						</div>
						<!-- 수납대기목록 li탭 end -->
					</div>
				</div>
			</div>
			<!-- 수납대기목록 end -->
		</div>
	</div>
</div>

<script
	src="<%=request.getContextPath()%>/resources/dist/assets/plugin/fullcalendar/main.min.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/apexcharts.bundle.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/dist/assets/bundles/dataTables.bundle.js"></script>

<!-- Jquery Page Js -->
<script src="<%=request.getContextPath()%>/resources/js/template.js"></script>
<script
	src="<%=request.getContextPath()%>/resources/js/page/doctor-profile.js"></script>
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
<script>

const Toast = Swal.mixin({
    toast: true,
    position: 'center-center',
    showConfirmButton: false,
    timer: 1000,
    timerProgressBar: true,
    didOpen: (toast) => {
        toast.addEventListener('mouseenter', Swal.stopTimer)
        toast.addEventListener('mouseleave', Swal.resumeTimer)
    }
});	

$(document).ready(function() {
    $('.myProjectTable')
    .addClass( 'nowrap' )
    .dataTable( {
        responsive: true,
        columnDefs: [
            { targets: [-1, -3], className: 'dt-body-right' }
        ]
    });
    $('.deleterow').on('click',function(){
    var tablename = $(this).closest('table').DataTable();  
    tablename
        .row( $(this)
        .parents('tr') )
        .remove()
        .draw();

    } );
});

//화폐단위 바꿔주는 함수
function formatMoney(amount) {
    return amount.toLocaleString('ko-KR', { style: 'currency', currency: 'KRW' });
}

//인원수


	// 외래진료 수납대기 조회
	$.getJSON("<c:url value='/receive/receivePatientView.do' />").done(function(resp) {
				let tbody = $("#patientArea");
				tbody.empty();
				
				if (resp.length > 0) {
					let processedRecCode = []; //처리한 recCode 넣을 배열
					$(resp).each(function(idx, patient) {
						let recCode = patient.recCode;
						
						if (processedRecCode.includes(recCode)) {
				            return;
				        }
						processedRecCode.push(recCode); //중복처리
						let inspCost = patient.pre.clinic.ins.insp.inspCost;
						let presdocAmt = patient.presdocAmt;
						let totalAmount =  formatMoney(10000 + presdocAmt + inspCost);
						let patAmount = formatMoney(5000 + presdocAmt + (inspCost/2));
						
						let inspYn;
				        if (inspCost > 0) {
				        	inspYn = $("<td>").append(
				                $("<span>").addClass("badge bg-danger")
				                           .text("검사환자")
				            );
				        } else {
				        	inspYn = $("<td>").html("");
				        }
						
						
						let tr = $("<tr>").append(
								$("<td>").html(patient.recCode), //접수코드
								$("<td>").html(patient.rec.patnt.patntNm).css({
									  "text-decoration": "underline",
									  "font-weight": "bold",
									  "font-size": "14px",
									  "cursor": "pointer"
									}), //환자명
								$("<td>").html(patient.rec.patnt.patntIdentino), //생년월일
								$("<td>").html(patient.presDate), //처방날짜
								$("<td>").css("text-align","right").html(totalAmount), //진료비 총액
								$("<td>").css("text-align","right").html(patAmount), //청구액
								$("<td>").append(
										$("<span>").addClass("badge bg-primary")
													.text("수납대기"))
								,inspYn
						);
						
						if (processedRecCode.length % 2 === 0) {
					        tr.addClass("evenTd");
					    }
						
						tbody.append(tr);
						
						
						//이름 클릭이벤트
						tr.find("td:nth-child(2)").click(function() {
			                let recCode =  $(this).closest("tr").find("td:first-child").text();
			                let patName = $(this).text();
			                $.getJSON("<c:url value='/receive/patientOrderView.do' />",{recCode: recCode}).done(function(resp){
			                	let patntCode = resp[0].rec.patnt.patntCode;
			                	let patIdenti = resp[0].rec.patnt.patntIdentino;
			                	let fcltyName = resp[0].rec.patStat.fcInfo.fcltyNm;
			                	$("#patName").text(patName+"님");
			                	$("#recCode").val(recCode);
			                	$("#patntCode").val(patntCode);
			                	$("#patIdenti").val(patIdenti);
			                	$("#fcltyName").val(fcltyName);
			                	
			                	let preDssCode = [];
			                	let preMediCode = [];
			                	let preInspCode = [];
			                	
			                	$("#dssArea").empty();
		                		$("#mediArea").empty();
		                		$("#inspArea").empty();
		                		$("#hospiArea").empty();
		                		$("#mdexInfo").empty();
			                	
			                	$(resp).each(function(idx, pat){
			                		let insYn = pat.pre.clinic.insYn;
			                		//중복처리
			                		let dssCode = pat.pre.clinic.dssCode;
			                		let mediCode = pat.mediCode;
			                		let inspCode = null;
			                		
			                		if (insYn !== null) {
			                		    inspCode = pat.pre.clinic.ins.inspCode;
			                		}
			                		
			                		if (preDssCode.includes(dssCode) || preMediCode.includes(mediCode) || (inspCode !== null && preInspCode.includes(inspCode))) {
			                		    return;
			                		}
			                		preDssCode.push(dssCode);
			                		preMediCode.push(mediCode);
			                		if (inspCode !== null) {
			                		    preInspCode.push(inspCode);
			                		}
			                		
			                		let tr1 = $("<tr>").append(
			                				$("<td>").html(pat.pre.clinic.disease.dssNm)		
			                		);
			                		
			                		let tr2 = $("<tr>").append(
			                				$("<td>").html(pat.medi.mediNm)		
			                		);
			                		
			                		
			                		let tr3;

			                		if (insYn === null) {
			                		    tr3 = $("<tr>").append(
			                		        $("<td>").html("검사결과가 없습니다.")
			                		    );
			                		} else {
			                		    tr3 = $("<tr>").append(
			                		        $("<td>").html(pat.pre.clinic.ins.insp.inspNm)
			                		    );
			                		}
				                	
			                	    
				                	$("#dssArea").append(tr1);
			                		$("#mediArea").append(tr2);
			                		$("#inspArea").append(tr3);
			                		$("#hospiArea").text("ㅡ");
			                		$("#mdexInfo").text("ㅡ");
			                	});
			                	
			                });
			            });
						
						
						
					});
				} else {
					tbody.append($("<tr>").html(
							$("<td colspan='8'>").html(
								"해당 환자가 존재하지 않습니다.")));
				}
				
	});
	
	
	// 검진 수납대기 조회
	$.getJSON("<c:url value='/receive/mdexPatientView.do' />").done(function(resp) {
				let tbody = $("#mdexArea");
				tbody.empty();
				console.log(resp)
				
				if (resp.length > 0) {
					let processedRecCode = []; //처리한 recCode 넣을 배열
					$(resp).each(function(idx, patient) {
						
						let recCode = patient.recCode;
						if (processedRecCode.includes(recCode)) {
				            return;
				        }
						processedRecCode.push(recCode); //중복처리
						
						
						let codeVal = patient.mdexmnRsVO.com.codeVal;
						let patAmount = formatMoney(5000 + codeVal);
						let totalAmount = formatMoney(10000 + codeVal);
						
						let inspNm = patient.mdexmnRsVO.inspNm;
						let inspValue;
						if (inspNm === "F_BASIC" || inspNm === "M_BASIC") {
							inspValue =  $("<td>").append(
					                $("<span>").addClass("badge bg-info")
			                           .text("basic")
			            		);
						} else if (inspNm === "F_PLUS" || inspNm === "M_PLUS"){
							inspValue =  $("<td>").append(
					                $("<span>").addClass("badge bg-warning")
			                           .text("plus")
			            		);
						}
						
						let tr = $("<tr>").append(
								$("<td>").html(patient.recCode), //접수코드
								$("<td>").html(patient.recep.patnt.patntNm).css({
									  "text-decoration": "underline",
									  "font-weight": "bold",
									  "font-size": "14px",
									  "cursor": "pointer"
									}), //환자명 @
								$("<td>").html(patient.recep.patnt.patntIdentino), //생년월일 @
								$("<td>").html(patient.mdexmnDate), //검진날짜
								inspValue, //검진항목 
								$("<td>").css("text-align","right").html(totalAmount), //총금액
								$("<td>").css("text-align","right").html(patAmount), //청구액
								$("<td>").append(
										$("<span>").addClass("badge bg-primary")
													.text("수납대기"))
								,$("<td>").html("")
						);
						
						if (processedRecCode.length % 2 === 0) {
					        tr.addClass("evenTd");
					    }
						tbody.append(tr);
						tr.find("td:nth-child(2)").click(function() {
							let recCode =  $(this).closest("tr").find("td:first-child").text();
			                let patName = $(this).text();
			                $.getJSON("<c:url value='/receive/mdexOrderView.do' />",{recCode: recCode}).done(function(resp){
			                	$("#dssArea").empty();
		                		$("#mediArea").empty();
		                		$("#inspArea").empty();
		                		$("#hospiArea").empty();
		                		$("#mdexInfo").empty();
		                		
			                	let patntCode = resp[0].recep.patnt.patntCode;
			                	let patIdenti = resp[0].recep.patnt.patntIdentino;
			                	$("#patName").text(patName+"님");
			                	$("#recCode").val(recCode);
			                	$("#patntCode").val(patntCode);
			                	$("#patIdenti").val(patIdenti);
			                	$("#fcltyName").val("종합검진센터");
			                	
			                	let codeNm = resp[0].mdexmnRsVO.com.codeNm;
			                	
			                	
			                	$("#dssArea").text("ㅡ");
		                		$("#mediArea").text("ㅡ");
		                		$("#inspArea").text("ㅡ");
		                		$("#hospiArea").text("ㅡ");
		                		$("#mdexInfo").append(codeNm+" 패키지");
			                	
			                });
						});
						
					});
				} else {
					tbody.append($("<tr>").html(
							$("<td colspan='9'>").html(
								"해당 환자가 존재하지 않습니다.")));
				}
	});
	
	// 병동 수납대기 조회
	$.getJSON("<c:url value='/receive/hospitalPatientView.do' />").done(function(resp) {
				let tbody = $("#hospitalArea");
				tbody.empty();
				if (resp.length > 0) {
					let processedRecCode = []; //처리한 recCode 넣을 배열
					$(resp).each(function(idx, patient) {
						
						
						let recCode = patient.recCode;
						if (processedRecCode.includes(recCode)) {
				            return;
				        }
						processedRecCode.push(recCode); //중복처리
						
						let codeVal = patient.com.codeVal;
						let presdocAmt = patient.clinic.pres.presd.presdocAmt;
						let inspCost = patient.clinic.ins.insp.inspCost;
						let hsptlzTotal = patient.hsptlzTotal;
						
						let TotalAmount;
						let patAmount;
						
						if(codeVal=='100000'){
							TotalAmount = formatMoney(Math.floor(100000*hsptlzTotal + 10000 + presdocAmt + inspCost));							
							patAmount = formatMoney(Math.floor((100000*hsptlzTotal) *0.6 + 5000 + (presdocAmt/2) + (inspCost/2)));
						} else if(codeVal =='150000'){
							TotalAmount = formatMoney(Math.floor(150000*hsptlzTotal + 10000 + presdocAmt + inspCost));
							patAmount = formatMoney(Math.floor((150000*hsptlzTotal) *0.7 + 5000 + (presdocAmt/2) + (inspCost/2)));
						} else if(codeVal =='200000'){
							TotalAmount = formatMoney(Math.floor(200000*hsptlzTotal + 10000 + presdocAmt + inspCost));
							patAmount = formatMoney(Math.floor((200000*hsptlzTotal) *0.8 + 5000 + (presdocAmt/2) + (inspCost/2)));
						}
						 $("<td>").append(
					                $("<span>").addClass("badge bg-info")
			                           .text("basic")
			            		);
						
						let tr = $("<tr>").append(
								$("<td>").html(patient.recCode), //접수코드
								$("<td>").html(patient.patnt.patntNm).css({
									  "text-decoration": "underline",
									  "font-weight": "bold",
									  "font-size": "14px",
									  "cursor": "pointer"
									}), //환자명 
								$("<td>").html(patient.patnt.patntIdentino), //생년월일 
								$("<td>").html(patient.hsptlzIn), //입원날짜
								$("<td>").html(patient.hsptlzOutDate), //퇴원날짜
								$("<td>").html(patient.hsptlzTotal+"일"), //재원날짜
								$("<td>").append($("<span>").addClass("badge bg-info").text(patient.sckbdRo)),  //병실
								$("<td>").css("text-align","right").html(TotalAmount), //진료비총액
								$("<td>").css("text-align","right").html(patAmount), //청구액
								$("<td>").append(
										$("<span>").addClass("badge bg-primary")
													.text("수납대기"))
								,$("<td>").html("")
						);
						if (processedRecCode.length % 2 === 0) {
					        tr.addClass("evenTd");
					    }
						tbody.append(tr);
						
						tr.find("td:nth-child(2)").click(function() {
							let recCode =  $(this).closest("tr").find("td:first-child").text();
			                let patName = $(this).text();
			                $.getJSON("<c:url value='/receive/hospitalOrderView.do' />",{recCode: recCode}).done(function(resp){
			                	let patntCode = resp[0].patntCode;
			                	let patIdenti = resp[0].patnt.patntIdentino;
			                	let fcltyName = resp[0].re.patStat.fcInfo.fcltyNm;
			                	$("#patName").text(patName+"님");
			                	$("#recCode").val(recCode);
			                	$("#patntCode").val(patntCode);
			                	$("#patIdenti").val(patIdenti);
			                	$("#fcltyName").val(fcltyName);
			                	
			                	let preDssCode = [];
			                	let preMediCode = [];
			                	let preInspCode = [];
			                	
			                	$("#dssArea").empty();
		                		$("#mediArea").empty();
		                		$("#inspArea").empty();
		                		$("#hospiArea").empty();
		                		$("#mdexInfo").empty();
		                		
		                		$(resp).each(function(idx, pat){
			                		let insYn = pat.clinic.insYn;
			                		//중복처리
			                		let dssCode = pat.clinic.disease.dssCode; 
			                		let mediCode = pat.clinic.pres.presd.medi.mediCode;
			                		let inspCode = null;
			                		
			                		if (insYn !== null) {
			                		    inspCode = pat.clinic.ins.inspCode;
			                		}
			                		
			                		if (preDssCode.includes(dssCode) || preMediCode.includes(mediCode) || (inspCode !== null && preInspCode.includes(inspCode))) {
			                		    return;
			                		}
			                		preDssCode.push(dssCode);
			                		preMediCode.push(mediCode);
			                		if (inspCode !== null) {
			                		    preInspCode.push(inspCode);
			                		}
			                		
			                		let tr1 = $("<tr>").append(
			                				$("<td>").html(pat.dss.dssNm)		
			                		);
			                		
			                		let tr2 = $("<tr>").append(
			                				$("<td>").html(pat.clinic.pres.presd.medi.mediNm)		
			                		);
			                		
			                		
			                		let tr3;

			                		if (insYn === null) {
			                		    tr3 = $("<tr>").append(
			                		        $("<td>").html("검사결과가 없습니다.")
			                		    );
			                		} else {
			                		    tr3 = $("<tr>").append(
			                		        $("<td>").html(pat.clinic.ins.insp.inspNm)
			                		    );
			                		}
				                	
			                	    let tr4 = $("<tr>").append(
			                	    		$("<td>").html(pat.com.codeNm+", "+String(pat.hsptlzTotal)+"일")		
			                	    );
			                		
				                	$("#dssArea").append(tr1);
			                		$("#mediArea").append(tr2);
			                		$("#inspArea").append(tr3);
			                		$("#hospiArea").append(tr4);
			                		$("#mdexInfo").text("ㅡ");
			                	});
			                });
							
						});
					});
				} else {
					tbody.append($("<tr>").html(
							$("<td colspan='11'>").html(
								"해당 환자가 존재하지 않습니다.")));
				}
	});
	
	
	let popup;
	let popup2;
	//수납 영수증 창 띄우기
	$("#receiveBtn").on("click", function() {
	    let recCode = $("#recCode").val();
	
	    let option = "width=1150px, height=850px, top=100px, left=300px, scrollbars=no";
	    let url = "<%= request.getContextPath() %>/receive/receiveBillView.do?recCode=" + recCode;
	    popup = window.open(url, 'pop', option);
		
	});
	
	
	$("#docuBtn").on("click", function() {
	    let recCode = $("#recCode").val();
	
	    let option = "width=850px, height=885px, top=70px, left=440px, scrollbars=no, location=no";
	    let url = "<%= request.getContextPath() %>/receive/receiveDocumentView.do?recCode=" + recCode;
	    popup2 = window.open(url, 'pop', option);
		
	});
	
	$("#searchForm").on("keyup",function(){
		let what = $(this).val();
		
		$.getJSON("<c:url value='/receive/receivePatientSearch.do' />",{what:what}).done(function(resp){
			let tbody = $("#patientArea");
			tbody.empty();
		
			if (resp.length > 0) {
				let processedRecCode = []; //처리한 recCode 넣을 배열
				$(resp).each(function(idx, patient) {
					let recCode = patient.recCode;
					
					if (processedRecCode.includes(recCode)) {
			            return;
			        }
					processedRecCode.push(recCode); //중복처리
					let inspCost = patient.pre.clinic.ins.insp.inspCost;
					let presdocAmt = patient.presdocAmt;
					let totalAmount =  formatMoney(10000 + presdocAmt + inspCost);
					let patAmount = formatMoney(5000 + presdocAmt + (inspCost/2));
					
					let inspYn;
			        if (inspCost > 0) {
			        	inspYn = $("<td>").append(
			                $("<span>").addClass("badge bg-danger")
			                           .text("검사환자")
			            );
			        } else {
			        	inspYn = $("<td>").html("");
			        }
					
					
					let tr = $("<tr>").append(
							$("<td>").html(patient.recCode), //접수코드
							$("<td>").html(patient.rec.patnt.patntNm), //환자명
							$("<td>").html(patient.rec.patnt.patntIdentino), //생년월일
							$("<td>").html(patient.presDate), //처방날짜
							$("<td>").css("text-align","right").html(totalAmount), //진료비 총액
							$("<td>").css("text-align","right").html(patAmount), //청구액
							$("<td>").append(
									$("<span>").addClass("badge bg-primary")
												.text("수납대기"))
							,inspYn
					);
					
					if (processedRecCode.length % 2 === 0) {
				        tr.addClass("evenTd");
				    }
					
					tbody.append(tr);
					
					
					//이름 클릭이벤트
					tr.find("td:nth-child(2)").click(function() {
		                let recCode =  $(this).closest("tr").find("td:first-child").text();
		                let patName = $(this).text();
		                $.getJSON("<c:url value='/receive/patientOrderView.do' />",{recCode: recCode}).done(function(resp){
		                	let patntCode = resp[0].rec.patnt.patntCode;
		                	let patIdenti = resp[0].rec.patnt.patntIdentino;
		                	let fcltyName = resp[0].rec.patStat.fcInfo.fcltyNm;
		                	$("#patName").text(patName+"님");
		                	$("#recCode").val(recCode);
		                	$("#patntCode").val(patntCode);
		                	$("#patIdenti").val(patIdenti);
		                	$("#fcltyName").val(fcltyName);
		                	
		                	let preDssCode = [];
		                	let preMediCode = [];
		                	let preInspCode = [];
		                	
		                	$("#dssArea").empty();
	                		$("#mediArea").empty();
	                		$("#inspArea").empty();
	                		$("#hospiArea").empty();
	                		$("#mdexInfo").empty();
		                	
		                	$(resp).each(function(idx, pat){
		                		let insYn = pat.pre.clinic.insYn;
		                		//중복처리
		                		let dssCode = pat.pre.clinic.dssCode;
		                		let mediCode = pat.mediCode;
		                		let inspCode = null;
		                		
		                		if (insYn !== null) {
		                		    inspCode = pat.pre.clinic.ins.inspCode;
		                		}
		                		
		                		if (preDssCode.includes(dssCode) || preMediCode.includes(mediCode) || (inspCode !== null && preInspCode.includes(inspCode))) {
		                		    return;
		                		}
		                		preDssCode.push(dssCode);
		                		preMediCode.push(mediCode);
		                		if (inspCode !== null) {
		                		    preInspCode.push(inspCode);
		                		}
		                		
		                		let tr1 = $("<tr>").append(
		                				$("<td>").html(pat.pre.clinic.disease.dssNm)		
		                		);
		                		
		                		let tr2 = $("<tr>").append(
		                				$("<td>").html(pat.medi.mediNm)		
		                		);
		                		
		                		
		                		let tr3;

		                		if (insYn === null) {
		                		    tr3 = $("<tr>").append(
		                		        $("<td>").html("검사결과가 없습니다.")
		                		    );
		                		} else {
		                		    tr3 = $("<tr>").append(
		                		        $("<td>").html(pat.pre.clinic.ins.insp.inspNm)
		                		    );
		                		}
			                	
		                	    
			                	$("#dssArea").append(tr1);
		                		$("#mediArea").append(tr2);
		                		$("#inspArea").append(tr3);
		                		$("#hospiArea").text("ㅡ");
		                		$("#mdexInfo").text("ㅡ");
		                	});
		                	
		                });
		            });
					
					
					
				});
			} else {
				tbody.append($("<tr>").html(
						$("<td colspan='8'>").html(
							"해당 환자가 존재하지 않습니다.")));
			}
			
		});
	});
	
	$("#dateSelect").on("change",function(){
		let recDateType = new Date($(this).val());
		let recDate = recDateType.toISOString();
		
		$.getJSON("<c:url value='/receive/receiveDateSearch.do' />",{recDate:recDate}).done(function(resp){
			consoel.log(resp);
		});
	});

	
</script>