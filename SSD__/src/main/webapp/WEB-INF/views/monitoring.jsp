<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<title>SSA_monitoring</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport">
<meta content="" name="keywords">
<meta content="" name="description">

<!-- Favicon -->
<link href="resources/img/favicon.ico" rel="icon">


<!-- Google Web Fonts -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@600&family=IBM+Plex+Sans+KR:wght@500&display=swap"
	rel="stylesheet">

<!-- Icon Font Stylesheet -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css"
	rel="stylesheet">
<script src="https://kit.fontawesome.com/b269e2b2e2.js"
	crossorigin="anonymous"></script>

<!-- Libraries Stylesheet -->
<link href="resources/lib/animate/animate.min.css" rel="stylesheet">
<link href="resources/lib/owlcarousel/assets/owl.carousel.min.css"
	rel="stylesheet">

<!-- Customized Bootstrap Stylesheet -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

<!-- Template Stylesheet -->
<link href="resources/css/style.css" rel="stylesheet">

<style>
.veritical-layout {
	display: flex;
	justify-content: space-around;
	align-items: center;
}

.options {
	list-style: none;
	padding-left: 0px;
	text-align: center;
}

.options li {
	height: 4rem;
	display: flex;
	flex-direction: column;
	justify-content: space-between;
	align-items: center;
}

.options li>* {
	height: 1.5rem;
	display: flex;
	justify-content: center;
	align-items: center;
}

.video-play-area {
	position: relative;
	height: 480px;
	width: 640px;
}

.video-play-area img {
	position: absolute;
	width: 100%;
	height: 100%;
}
</style>
</head>

<body>
	<div class="container-xxl bg-white p-0">
		<!-- Spinner Start -->
		<div id="spinner"
			class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
			<div class="spinner-border text-primary"
				style="width: 3rem; height: 3rem;" role="status">
				<span class="sr-only">Loading...</span>
			</div>
		</div>
		<!-- Spinner End -->


		<!-- Navbar Start -->
		<div class="container-fluid nav-bar bg-transparent">
			<nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
				<a href="/main"
					class="navbar-brand d-flex align-items-center text-center">
					<div class="icon p-2 me-2">
						<i class="fa-solid fa-fire-extinguisher"></i>

					</div>
					<h1 class="m-0 text-primary">SSA</h1>
				</a>
				<button type="button" class="navbar-toggler"
					data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
					<span class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navbarCollapse">

					<div class="navbar-nav ms-auto">
						<a href="/main" class="nav-item nav-link  active">메인</a> <a
							href="/map" class="nav-item nav-link ">지도</a> <a href="/team"
							class="nav-item nav-link ">팀</a>
						<%-- <c:if test="${LoginVo.user_admin eq 'Y'}">
              <a href="/team_member" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
              </c:if> --%>
						<!-- 모니터링 페이지 이동 예정 -->
						<!-- <a href="/monitoring" class="nav-item nav-link active">모니터링</a> -->
						<a href="/mypage" class="nav-item nav-link">마이페이지</a> <a
							href="/change_info" class="nav-item nav-link">회원정보수정</a> <a
							href="/boardList" class="nav-item nav-link">공지사항</a>
					</div>
					<div style="margin-top: 6px; margin-right: 20px;">
						<h6>${LoginVo.user_name }대원님 환영합니다</h6>
					</div>
					<a href="/logout.do" class="btn btn-primary px-3 d-none d-lg-flex">Logout</a>
				</div>
			</nav>
		</div>
		<!-- Navbar End -->


		<!-- Header Start -->
		<div class="container-fluid header bg-white p-0">
			<div
				class="row g-0 align-items-center flex-column-reverse flex-md-row">
				<div class="col-md-6 p-5 mt-lg-5">
					<!-- 소방서 이름-백앤드 -->
					<h1 class="display-10 animated fadeIn mb-4">필요한 순간,</h1>
					<h1 class="display-10 animated fadeIn mb-4">소방이 함께합니다.</h1>
					<nav aria-label="breadcrumb animated fadeIn"></nav>
				</div>
				<div class="col-md-6 animated fadeIn">
					<img class="img-fluid" src="resources/img/SSA_main1.png" alt="">
				</div>
			</div>
		</div>
		<!-- Header End -->


		<!-- Search Start -->
		<div class="container-fluid wow fadeIn bg-dark" data-wow-delay="0.1s"
			style="padding: 25px;">
			<div class="container bg-primary"
				style="display: flex; justify-content: center;"></div>
		</div>
		<!-- Search End -->


		<!-- Property List Start -->
		<div class="container-xxl py-5">
			<div class="container">
				<div class="veritical-layout">
					<div>
						<div data-wow-delay="0.1s">
							<!-- 모니터링 대상 사진(백) -->
							<img src="resources/img/team-1.jpg" alt=""
								style="width: 200px; height: 200px;">
						</div>
					</div>
					<div>
						<div class="text-start mx-auto mb-5">
							<!-- 모니터링 대상  받아오기(백) -->
							<h1 class="mb-3">${UserListIdCheck.user_name}</h1>
							<span>${UserListIdCheck.user_birthdate}</span> <span>${UserListIdCheck.user_bloodtype}형</span>

						</div>
					</div>

					<div data-wow-delay="0.1s">
						<ul class="veritical-layout options">
							<li class="nav-item me-2">
								<div class="">
									<i class="fa-solid fa-heart fa-beat "></i>
								</div> <!-- 심장박동수(하) -->
								<h5 class="m-0 text-uppercase" id="heartbeat">90</h5>
							</li>
							<li class="nav-item me-2">
								<h5 class="m-0 text-uppercase">SPO2</h5> <!-- 산소포화(하) -->
								<h5 class="m-0 text-uppercase" id="SPO2">90%</h5>

							</li>
							<li class="nav-item me-2">
								<div class="">
									<i class="fa fa-light fa-temperature-half"></i>
								</div> <!-- 현장온도 -->
								<div id = "temp_spot">
								<h5 class="m-0 text-uppercase" id = "temp">0C°</h5>
								</div>
							</li>
							<!-- 비콘(하) -->
							<li class="nav-item me-0"><i
								class="fa fa-solid fa-bluetooth fa-lg"></i>
								<div class="form-check form-switch">
								<c:if test="${UserListIdCheck.beacon eq 0}">
									<input class="form-check-input" type="checkbox"
										style="width: 40px" role="switch" id="bcon"> <label
										class="form-check-label" for="bcon"></label>
								</c:if>
								<c:if test="${UserListIdCheck.beacon eq 1}">
									<input class="form-check-input" type="checkbox"
										style="width: 40px" role="switch" id="bcon" checked> <label
										class="form-check-label" for="bcon"></label>
								</c:if>
								</div>
							</li>

						</ul>
					</div>



				</div>

				<div class="tab-content" style="margin-top: 50px;">
					<div id="tab-1" class="tab-pane fade show p-0 active">

						<div class="row">
							<div class="col fadeInUp" style="margin: 0 13rem;"
								data-wow-delay="0.1s">
								<div class="property-item rounded overflow-hidden">
									<div class="position-relative overflow-hidden">

										<!-- 동영상 -->
										<div class="video">
											<div class="video-container"
												style="display: flex; justify-content: center; align-items: center; height: 542px;">
												<div class="video-play-area">
													<img src="http://172.30.1.47:5000/stream.mjpg" />
												</div>
											</div>
										</div>
										<!-- 동영상 -->
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
		<!-- Property List End -->
		


		<!-- Testimonial Start -->
		<div class="container-xxl py-5">
			<div class="container">
				<div class="text-center mx-auto mb-5 wow fadeInUp"
					data-wow-delay="0.4s" style="max-width: 600px;">
					<!-- 팀이름(백) -->
					<!-- <h1 class="mb-3">유재열 팀</h1> -->
				</div>
				<div class="owl-carousel testimonial-carousel wow fadeInUp"
					data-wow-delay="0.4s">

					<div class="testimonial-item bg-light rounded p-3">
						<!-- 클릭시 해당 대원 모니터링 페이지로 넘어가야함(백) -->
						<div class="bg-white border rounded p-4">
							<div class="d-flex align-items-center">
								<!-- 팀원 사진(백) -->
								<img class="img-fluid flex-shrink-0 rounded"
									src="resources/img/testimonial-1.jpg"
									style="width: 45px; height: 45px;">
								<div class="ps-3">
									<!-- 팀원 이름(백) -->
									<h6 class="fw-bold mb-1">영수진</h6>
									<!-- 촐동현황(?) -->
									<small>대기</small>
								</div>
							</div>
						</div>
					</div>

					<div class="testimonial-item bg-light rounded p-3">
						<div class="bg-white border rounded p-4">
							<!-- <p>Tempor stet labore dolor clita stet diam amet ipsum dolor duo ipsum rebum stet dolor amet diam stet. Est stet ea lorem amet est kasd kasd erat eos</p> -->
							<div class="d-flex align-items-center">
								<img class="img-fluid flex-shrink-0 rounded"
									src="resources/img/testimonial-2.jpg"
									style="width: 45px; height: 45px;">
								<div class="ps-3">
									<h6 class="fw-bold mb-1">두수진</h6>
									<small>Profession</small>
								</div>
							</div>
						</div>
					</div>

					<div class="testimonial-item bg-light rounded p-3">
						<div class="bg-white border rounded p-4">
							<!-- <p>Tempor stet labore dolor clita stet diam amet ipsum dolor duo ipsum rebum stet dolor amet diam stet. Est stet ea lorem amet est kasd kasd erat eos</p> -->
							<div class="d-flex align-items-center">
								<img class="img-fluid flex-shrink-0 rounded"
									src="resources/img/testimonial-3.jpg"
									style="width: 45px; height: 45px;">
								<div class="ps-3">
									<h6 class="fw-bold mb-1">삼수진</h6>
									<small>Profession</small>
								</div>
							</div>
						</div>
					</div>

				</div>
			</div>
		</div>
		<!-- Testimonial End -->


		<!-- Footer Start -->
		<div
			class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn"
			data-wow-delay="0.1s">
			<div class="container py-5">
				<div class="row g-5">
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Contact</h5>
						<!--주소 넣기(백)-->
						<p class="mb-2">
							<i class="fa fa-map-marker-alt me-3"></i>주소 넣어주세요
						</p>
						<p class="mb-2">
							<i class="fa fa-phone-alt me-3"></i>+119
						</p>
						<div class="d-flex pt-2">
							<a class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-twitter"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-facebook-f"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-youtube"></i></a> <a
								class="btn btn-outline-light btn-social" href=""><i
								class="fab fa-linkedin-in"></i></a>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Quick Links</h5>
						<a class="btn btn-link text-white-50" href="/main">메인</a> <a
							class="btn btn-link text-white-50" href="/map">지도</a> <a
							class="btn btn-link text-white-50" href="/team">팀</a> <a
							class="btn btn-link text-white-50" href="/mypage">마이페이지</a> <a
							class="btn btn-link text-white-50" href="/boardList">공지사항</a>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Photo Gallery</h5>
						<div class="row g-2 pt-2">
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_fire.png" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_fire2.png" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_fire3.png" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_main4.png" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_main2.png" alt="">
							</div>
							<div class="col-4">
								<img class="img-fluid rounded bg-light p-1"
									src="resources/img/SSA_main3.png" alt="">
							</div>
						</div>
					</div>
					<div class="col-lg-3 col-md-6">
						<h5 class="text-white mb-4">Newsletter</h5>
						<p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
						<div class="position-relative mx-auto" style="max-width: 400px;">
							<input class="form-control bg-transparent w-100 py-3 ps-4 pe-5"
								type="text" placeholder="Your email">
							<button type="button"
								class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- Footer End -->

		<!-- Back to Top -->
		<a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i
			class="bi bi-arrow-up"></i></a>
	</div>

	<!-- JavaScript Libraries -->
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
	<script src="resources/lib/wow/wow.min.js"></script>
	<script src="resources/lib/easing/easing.min.js"></script>
	<script src="resources/lib/waypoints/waypoints.min.js"></script>
	<script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

	<!-- Template Javascript -->
	<script src="resources/js/main.js"></script>
	
	<!-- 자동 갱신 스크립트 include -->
	
	<!-- 온도 실시간 -->
<script type="text/javascript">
function getData(){
$.ajax({
	type: "GET",
	url: "${pageContext.request.contextPath}/api/temp/${UserListIdCheck.user_id}",
	success: function(res){
		console.log(res)
		console.log(res[res.length-1].temp)
        var temp = res[res.length-1].temp
		var x = document.getElementById("temp_spot");
x.querySelector("#temp").innerHTML = temp+"C°";
		
		/* var state = document.querySelector('#temp')
		
		state.innerHTML = "350" */
			//"<h5 class='m-0 text-uppercase'>"+temp+"</h5>"
		}
	})
}
$(document).ready(function(){
    playTimer = setInterval(function() {
    	getData();
   }, 3000);
  });

	</script>
	
	
	<!-- 비콘 실시간 -->
	<script type="text/javascript">
	
	
	
	function beaconCheck(){
		var bconCheck = $('#bcon').is(':checked');
		console.log(bconCheck)
		if(bconCheck){
			
			updateBeacon1();
				
		}else if(!bconCheck) {
			updateBeacon0();
		}		
	}
	
	
	function updateBeacon1(){
		$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/api/beacon/${UserListIdCheck.user_id}/1",
			success: function(check){
				console.log(check)
				
				}
			})
		}
	
	function updateBeacon0(){
		$.ajax({
			type: "GET",
			url: "${pageContext.request.contextPath}/api/beacon/${UserListIdCheck.user_id}/0",
			success: function(check){
				console.log(check)
				
				}
			})
		}
	
	
	
		$(document).ready(function(){
		    playTimer = setInterval(function() {
		    	beaconCheck();
		   }, 3000);
		  });
	
	</script>
	<!-- 손목 실시간 -->
	<script type="text/javascript">
	
	function getSensorData(){
		$.ajax({
			type: "GET",
			url: "${pageContext.request.scheme}://172.30.1.33",
			success: function(data){
				console.log(data)/* 
				console.log(data[data.length-1].heart)
				console.log(data[data.length-1].spo2)
				console.log(data[data.length-1].user_id) */
		        //var heart = data[data.length-1].heart
				//var x = document.getElementById("temp_spot");
		//x.querySelector("#temp").innerHTML = temp+"C°";
				
				/* var state = document.querySelector('#temp')
				
				state.innerHTML = "350" */
					//"<h5 class='m-0 text-uppercase'>"+temp+"</h5>"
				}
			})
		}
		$(document).ready(function(){
		    playTimer = setInterval(function() {
		    	getSensorData();
		   }, 3000);
		  });
	
	</script>
	
	
</body>

</html>