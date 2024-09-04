<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DoctorTreat</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/static/css/clinic/doctorDetail.css">
</head>
<body>
	<jsp:include page="${pageContext.request.contextPath}/header.jsp" />
	<main>
		<div class="doctorDetail-skinny">의사 상세정보</div>
		<div class="doctorDetail-container">
			<div class="doctorDetail-Info">
				<div id="doctorDetail-uiwon">
					강남정내과의원 <span id="doctorDetail-uiwon-span">전문의 : 정승환</span>
				</div>
				<div class="doctorDetail-medicine">내과</div>
			</div>
			<div id="doctorDetail-clinic-time">진료시간</div>
			<div class="doctorDetail-hours">
				<div class="doctorDetail-clinics-main">
					<div class="doctorDetail-hours-day-top">
						<div>평일</div>
						<div>08:30 ~ 18:00</div>
					</div>
					<div class="doctorDetail-hours-day-bottom">
						<div>휴진</div>
						<div>주말, 공휴일</div>
					</div>
				</div>
				<div class="doctorDetail-clinics">
					<div class="doctorDetail-closed-top">
						<div>점심시간</div>
						<div>13:00 ~ 14:00</div>
					</div>
					<div class="doctorDetail-closed-bottom">
						<div>야간진료</div>
						<div>없음</div>
					</div>
				</div>
			</div>
			<div class="hospital-phoneNumber">
				<div id="doctorDetail-number">병원 번호</div>
				<div id="doctorDetail-hospital-num">0508-0321-3678</div>
			</div>
			<div class="hospital-address">병원위치</div>
			<div class="hospital-location">
				<div>
					<img src="${pageContext.request.contextPath}/static/image/hospitalMap.png">
				</div>
			</div>
			<form action="" method="" class="hospital-goWrite">
				<button href="./chatList.html">비대면 진료 신청</button>
			</form>
		</div>
	</main>
	<jsp:include page="${pageContext.request.contextPath}/footer.jsp" />
</body>
</html>