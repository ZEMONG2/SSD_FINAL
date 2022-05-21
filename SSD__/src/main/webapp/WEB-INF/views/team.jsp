<%@page import="com.ssa.domain.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>SSA_team</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">

    <!-- Favicon -->
    <link href="resources/img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
 <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Hahmlet:wght@600&family=IBM+Plex+Sans+KR:wght@500&display=swap" rel="stylesheet">
    
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
    <script src="https://kit.fontawesome.com/b269e2b2e2.js" crossorigin="anonymous"></script>

    <!-- Libraries Stylesheet -->
    <link href="resources/lib/animate/animate.min.css" rel="stylesheet">
    <link href="resources/lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">

    <!-- Customized Bootstrap Stylesheet -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Template Stylesheet -->
    <link href="resources/css/style.css" rel="stylesheet">
</head>

<body>
    <div class="container-xxl bg-white p-0">
        <!-- Spinner Start -->
        <div id="spinner" class="show bg-white position-fixed translate-middle w-100 vh-100 top-50 start-50 d-flex align-items-center justify-content-center">
            <div class="spinner-border text-primary" style="width: 3rem; height: 3rem;" role="status">
                <span class="sr-only">Loading...</span>
            </div>
        </div>
        <!-- Spinner End -->


   <!-- Navbar Start -->
      <div class="container-fluid nav-bar bg-transparent">
        <nav class="navbar navbar-expand-lg bg-white navbar-light py-0 px-4">
            <a href="/main" class="navbar-brand d-flex align-items-center text-center">
                <div class="icon p-2 me-2">
                    <i class="fa-solid fa-fire-extinguisher"></i>
                    
                </div>
                <h1 class="m-0 text-primary">SSA</h1>
            </a>
            <button type="button" class="navbar-toggler" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">

                <div class="navbar-nav ms-auto">
                    <a href="/main" class="nav-item nav-link ">메인</a>
                    <a href="/map" class="nav-item nav-link ">지도</a>
                    <a href="/team" class="nav-item nav-link active">팀</a>
                    <%-- <c:if test="${LoginVo.user_admin eq 'Y'}">
              <a href="/team_member" class="nav-item nav-link">대원관리</a>
              <!-- 관리자의 경우 끝 -->
              </c:if> --%>
                    <!-- 모니터링 페이지 이동 예정 -->
                  <!--   <a href="/monitoring" class="nav-item nav-link ">모니터링</a> -->
                    <a href="/mypage" class="nav-item nav-link">마이페이지</a>
                    <c:if test="${LoginVo.user_admin eq 'Y'}">
                    <a href="/change_info" class="nav-item nav-link">회원정보수정</a>
                    </c:if>
                    <a href="/boardList" class="nav-item nav-link">공지사항</a>
                </div>
                <div style="margin-top:6px; margin-right:20px;">
                <h6>${LoginVo.user_name } 대원님 환영합니다</h6>
                </div>
                <a href="/logout.do" class="btn btn-primary px-3 d-none d-lg-flex">Logout</a>
            </div>
        </nav>
    </div>
    <!-- Navbar End -->


        <!-- Header Start -->
        <div class="container-fluid header bg-white p-0">
            <div class="row g-0 align-items-center flex-column-reverse flex-md-row">
                <div class="col-md-6 p-5 mt-lg-5">
                    <!-- 소방서 이름(백) -->
                    <h1 class="display-5 animated fadeIn mb-4">${LoginVo.user_fs }</h1> 
                        <nav aria-label="breadcrumb animated fadeIn">
                    </nav>
                </div>
                <div class="col-md-6 animated fadeIn">
                    <img class="img-fluid" src="resources/img/SSA_main3.png" alt="">
                </div>
            </div>
        </div>
        <!-- Header End -->


    <!-- Search Start -->
    <div class="container-fluid wow fadeIn bg-dark" data-wow-delay="0.1s" style="padding: 25px; ">
        <div class="container bg-primary"  style="display: flex; justify-content: center;">
        
        </div>
    </div>
    <!-- Search End -->


        <!-- Category Start -->
        <div class="container-xxl py-5">
            <div class="container">
                <div class="text-center mx-auto mb-5 wow fadeInUp" data-wow-delay="0.1s" style="max-width: 600px;">
                    <h1 class="mb-3">팀선택<i class="fa-solid fa-light-emergency-on"></i></h1>
                </div>
                <div class="row g-4">
                    <!-- 팀 나오는 부분(백) -->
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block text-center rounded p-3" href="/team_member?user_team=1">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                	<span>구조1팀</span>
                                </div>
                                <!-- 팀장 이름(백) -->
                                <h6>강예진</h6>
                                <!-- 팀 인원 수 -->
                                <span>${TeamCnt1}명</span>
                            </div>
                        </a>
                    </div>
                    
                    <!-- 팀 나오는 부분(백) -->
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block text-center rounded p-3" href="/team_member?user_team=2">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                	<span>구조2팀</span>
                                </div>
                                <!-- 팀장 이름(백) -->
                                <h6>유재열</h6>
                                <!-- 팀 인원 수 -->
                                <span>${TeamCnt2}명</span>
                            </div>
                        </a>
                    </div>
                    
                    <!-- 팀 나오는 부분(백) -->
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block text-center rounded p-3" href="/team_member?user_team=3">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                	<span>구조3팀</span>
                                </div>
                                <!-- 팀장 이름(백) -->
                                <h6>한수진</h6>
                                <!-- 팀 인원 수 -->
                                <span>${TeamCnt3}명</span>
                            </div>
                        </a>
                    </div>
                    <div class="col-lg-3 col-sm-6 wow fadeInUp" data-wow-delay="0.1s">
                        <a class="cat-item d-block text-center rounded p-3" href="/team_member?user_team=4">
                            <div class="rounded p-4">
                                <div class="icon mb-3">
                                	<span>응급 구조</span>
                                </div>
                                <!-- 팀장 이름(백) -->
                                <h6>양대성</h6>
                                <!-- 팀 인원 수 -->
                                <span>${TeamCnt4}명</span>
                            </div>
                        </a>
                    </div>
                    
                </div>
            </div>
        </div>
        <!-- Category End -->
        

         <!-- Footer Start -->
        <div class="container-fluid bg-dark text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Contact</h5>
                        <!--주소 넣기(백)-->
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>주소 넣어주세요</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+119</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-youtube"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="fab fa-linkedin-in"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
 						<a class="btn btn-link text-white-50" href="/main">메인</a>
                        <a class="btn btn-link text-white-50" href="/map">지도</a>
                        <a class="btn btn-link text-white-50" href="/team">팀</a>
                        <a class="btn btn-link text-white-50" href="/mypage">마이페이지</a>
                        <a class="btn btn-link text-white-50" href="/boardList">공지사항</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Photo Gallery</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire2.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_fire3.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main4.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main2.png" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="resources/img/SSA_main3.png" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>Dolor amet sit justo amet elitr clita ipsum elitr est.</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer End -->


        <!-- Back to Top -->
        <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="bi bi-arrow-up"></i></a>
    </div>

    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="resources/lib/wow/wow.min.js"></script>
    <script src="resources/lib/easing/easing.min.js"></script>
    <script src="resources/lib/waypoints/waypoints.min.js"></script>
    <script src="resources/lib/owlcarousel/owl.carousel.min.js"></script>

    <!-- Template Javascript -->
    <script src="resources/js/main.js"></script>
</body>

</html>