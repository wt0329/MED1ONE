<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<link rel="icon" href="favicon.ico" type="image/x-icon">
<!-- Favicon-->
<!-- project css file  -->

	
<style type="text/css">
  .sidebar a {
  color: white;
}

.sidebar i {
  color: white;
}
	
.sidebar{
	margin-top :80px;
	height: 82%;
	width: 150px;
	background-color: #6aab9c;
	
	}

</style>

                                  
	
                                 
<div id="ihealth-layout" class="theme-tradewind">
     
    <!-- sidebar -->
    <div class="sidebar px-4 py-4 py-md-5 me-0">
        <div class="d-flex flex-column h-100">
        
           <!--행정부  -->
           
            <a href="index.html" class="mb-0 brand-icon" style="font-size: 17px; font-weight: bold;">
                <span class="logo-icon"> <i class="icofont-id-card fs-3" style="margin-right: 5px"></i></span>
                <span class="m-link">행정부</span>
            </a>
            
            <!-- Menu: main ul -->
            <ul class="menu-list flex-grow-1 mt-3">
            
                <li>
	              <a class="m-link" href="<%=request.getContextPath() %>/nurse/docScheduleList.do"><i class="icofont-ui-calendar"></i><span>근무일정</span></a>
                </li>
                         
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-reception" href="#">
                    <i class="icofont-ui-clip-board" style="margin-right: 0px"></i> <span>접수</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-reception">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/administ/patientReceiptView.do"><span>외래접수</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/patient/examinatReception.do"><span>검진접수</span></a></li>
                    	</ul>
                </li>
                
                <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-hospitalization" href="#">
                    <i class="icofont-ui-home" style="margin-right: 0px"></i> <span>병동</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>                   	
               <!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-hospitalization">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }/hospital/hospitalSearch.do"><span>병동조회</span></a></li>
                    	</ul>
                </li>
                
                
              	<li>
	                <a class="m-link" href="${pageContext.request.contextPath }"><i class="icofont-credit-card"></i><span>수납-보류</span></a>
                </li>
                
                 <li class="collapsed">
                    <a class="m-link" data-bs-toggle="collapse" data-bs-target="#menu-order" href="#">
                    <i class="icofont-shopping-cart" style="margin-right: 0px"></i> <span>구매관리</span> <span class="arrow icofont-dotted-down ms-auto text-end fs-5"></span></a>
                    	<!-- Menu: Sub menu ul -->
                    	<ul class="sub-menu collapse" id="menu-order">
                        	<li><a class="ms-link" href="${pageContext.request.contextPath }"><span>약품관리 - 보류</span></a></li>
                       		<li><a class="ms-link" href="${pageContext.request.contextPath }/fixtures/fixturesOrder.do"><span>비품관리</span></a></li>
                    	</ul>
                </li>
                
                 
             <li>
	                <a class="m-link" href="${pageContext.request.contextPath }/message/messageSend.do"><i class="icofont-ui-message"></i><span>SMS</span></a>
                </li>
                
                
            </ul>
           
           <!--행정부 메뉴종료  -->
           
           
           
            <!-- Menu: menu collepce btn -->
            <button type="button" class="btn btn-link sidebar-mini-btn text-light">
                <span class="ms-2"><i class="icofont-bubble-right"></i></span>
            </button>
    	 </div>
    </div>
</div>
	
	