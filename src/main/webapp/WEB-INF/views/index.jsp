<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Developer Profile</title>
        <!-- Favicon-->
        <link rel="icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/static/assets/favicon.ico" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="${pageContext.request.contextPath}/resources/static/css/styles.css" rel="stylesheet" />
    </head>
    <body>
        <!-- Responsive navbar-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
            <div class="container">
                <a class="navbar-brand" href="#!">김남수님의 프로필</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/">Home</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">포트폴리오</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">로그인</a></li>
                        <li class="nav-item"><a class="nav-link" href="#!">회원가입</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Header - set the background image for the header in the line below-->
        <header class="py-5 bg-image-full" style="background-image: url('https://source.unsplash.com/wfh8dDlNFOk/1600x900')">
            <div class="text-center my-5">
                <img class="img-fluid rounded-circle mb-4" src="https://dummyimage.com/150x150/6c757d/dee2e6.jpg" alt="..." />
                <h1 class="text-white fs-3 fw-bolder">김남수님의 대표 이미지</h1>
                <p class="text-white-50 mb-0">대표 포트폴리오 제목 설정</p>
            </div>
        </header>
        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>팀프로젝트 = mo_od</h2>
                        <p class="lead">1인가구를 위한 인테리어 결제 판매 웹 사이트 제작</p>
                        <p class="mb-0">대표 스킬 : Spring,Java,JavaScript,MariaDB,Apache Tomcat,AWS</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Image element - set the background image for the header in the line below-->
        <div class="py-5 bg-image-full" style="background-image: url('https://source.unsplash.com/4ulffa6qoKA/1200x800')">
            <!-- Put anything you want here! The spacer below with inline CSS is just for demo purposes!-->
            <div style="height: 20rem"></div>
        </div>
        <!-- Content section-->
        <section class="py-5">
            <div class="container my-5">
                <div class="row justify-content-center">
                    <div class="col-lg-6">
                        <h2>첫번째 개인 프로젝트</h2>
                        <p class="lead"> 개인 포트폴리오 저장 사이트 </p>
                        <p class="mb-0"> 대표 스킬 : Spring boot + React + MongoDB </p>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer-->
        <footer class="py-5 bg-dark">
            <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Namsu 2023</p></div>
        </footer>
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="${pageContext.request.contextPath}/resources/static/js/scripts.js"></script>
    </body>
</html>
