<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.104.2">
    <title>Checkout example · Bootstrap v5.2</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.2/examples/checkout/">

    

    

<link href="${pageContext.request.contextPath}/resources/static/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }

      .b-example-divider {
        height: 3rem;
        background-color: rgba(0, 0, 0, .1);
        border: solid rgba(0, 0, 0, .15);
        border-width: 1px 0;
        box-shadow: inset 0 .5em 1.5em rgba(0, 0, 0, .1), inset 0 .125em .5em rgba(0, 0, 0, .15);
      }

      .b-example-vr {
        flex-shrink: 0;
        width: 1.5rem;
        height: 100vh;
      }

      .bi {
        vertical-align: -.125em;
        fill: currentColor;
      }

      .nav-scroller {
        position: relative;
        z-index: 2;
        height: 2.75rem;
        overflow-y: hidden;
      }

      .nav-scroller .nav {
        display: flex;
        flex-wrap: nowrap;
        padding-bottom: 1rem;
        margin-top: -1px;
        overflow-x: auto;
        text-align: center;
        white-space: nowrap;
        -webkit-overflow-scrolling: touch;
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="${pageContext.request.contextPath}/resources/static/css/form-validation.css" rel="stylesheet">
  </head>
  <body class="bg-light">
    
<div class="container">
  <main>
    <div class="py-5 text-center">
      <h2>회원 가입 페이지</h2>
      <p class="lead">필수 입력 사항은 반드시 입력해주시기 바랍니다.</p>
    </div>

    <div class="py-5 text-left" >
    
      <div class="col-md-15">
        <h4 class="mb-3 ">회원 가입 정보</h4><br>
        <form class="needs-validation" novalidate>
          <div class="row g-3">
            <div class="col-sm-15">
              <label for="firstName" class="form-label">이름</label>
              <input type="text" class="form-control" id="userName" placeholder="" value="" required>
              <div class="invalid-feedback">
                반드시 이름을 입력해주세요.
              </div>
            </div>


            <div class="col-12">
              <label for="username" class="form-label">닉네임</label>
              <div class="input-group has-validation">
                <input type="text" class="form-control" id="username" placeholder="Username" required>
              <div class="invalid-feedback">
                  닉네임은 필수입력 사항입니다.
                </div>
              </div>
            </div>

            <div class="col-12">
              <label for="email" class="form-label">Email <span class="text-muted">(필수 입력)</span></label>
              <input type="email" class="form-control" id="email" placeholder="올바른 이메일 형식을 입력하세요" required>
              <div class="invalid-feedback">
               이메일 주소가 올바른지 확인해주세요
              </div>
            </div>

            <div class="col-12">
              <label for="address" class="form-label">주소</label>
              <input type="text" class="form-control" id="address" placeholder="무슨 동" required>
              <div class="invalid-feedback">
                현재 주소와 맞는지 다시 한번 확인해주세요
              </div>
            </div>

            <div class="col-12">
              <label for="address2" class="form-label">상세 주소 <span class="text-muted">(Optional)</span></label>
              <input type="text" class="form-control" id="address2" placeholder="아파트 동수 혹은 빌라 이름">
            </div>

            <div class="col-md-5">
              <label for="country" class="form-label">Country</label>
              <select class="form-select" id="country" required>
                <option value="">지역</option>
                <option>지역</option>
              </select>
              <div class="invalid-feedback">
                올바른 지역을 입력해주세요
              </div>
            </div>

            <div class="col-md-4">
              <label for="state" class="form-label">State</label>
              <select class="form-select" id="state" required>
                <option value="">구</option>
                <option>어디구</option>
              </select>
              <div class="invalid-feedback">
                올바른 주소를 입력해주세요
              </div>
            </div>

            <div class="col-md-3">
              <label for="zip" class="form-label">우편번호</label>
              <input type="text" class="form-control" id="zip" placeholder="" required>
              <div class="invalid-feedback">
                우편번호는 필수입니다.
              </div>
            </div>
          </div>

          <hr class="my-4">

          <button style="margin-bottom:5px" class="w-100 btn btn-primary btn-lg" type="submit">회원가입</button>
          <button class="w-100 btn btn-primary btn-lg" type="submit">가입취소</button>
        </form>
      </div>
    </div>
  </main>

  <footer class="my-5 pt-5 text-muted text-center text-small">
    <p class="mb-1">&copy; 2023 namsu </p>
    <ul class="list-inline">
      <li class="list-inline-item"><a href="#">Privacy</a></li>
      <li class="list-inline-item"><a href="#">Terms</a></li>
      <li class="list-inline-item"><a href="#">Support</a></li>
    </ul>
  </footer>
</div>


    <script src="${pageContext.request.contextPath}/resources/static/js/bootstrap.bundle.min.js"></script>

      <script src="${pageContext.request.contextPath}/resources/static/js/form-validation.js"></script>
  </body>
</html>