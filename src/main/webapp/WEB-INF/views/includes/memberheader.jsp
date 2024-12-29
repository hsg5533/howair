<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />
    <link
      rel="apple-touch-icon"
      sizes="76x76"
      href="/assets/img/apple-icon.png"
    />
    <link rel="icon" type="image/png" href="/assets/img/favicon1.png" />
    <title>대기어때</title>
    <!--     Fonts and icons     -->
    <link
      rel="stylesheet"
      type="text/css"
      href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700,900|Roboto+Slab:400,700"
    />
    <!-- Nucleo Icons -->
    <link href="/assets/css/nucleo-icons.css" rel="stylesheet" />
    <link href="/assets/css/nucleo-svg.css" rel="stylesheet" />
    <!-- Font Awesome Icons -->
    <script
      src="https://kit.fontawesome.com/42d5adcbca.js"
      crossorigin="anonymous"
    ></script>
    <!-- Material Icons -->
    <link
      href="https://fonts.googleapis.com/icon?family=Material+Icons+Round"
      rel="stylesheet"
    />
    <!-- CSS Files -->
    <link
      id="pagestyle"
      href="/assets/css/material-dashboard.css?v=3.0.4"
      rel="stylesheet"
    />
    <!-- jQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>
  <body>
    <!-- Navbar -->
    <nav
      class="navbar navbar-expand-lg blur border-radius-xl top-0 z-index-3 shadow position-absolute my-3 py-2 start-0 end-0 mx-4"
    >
      <div class="container-fluid ps-2 pe-0">
        <a class="navbar-brand font-weight-bolder ms-lg-0 ms-3" href="/">
          대기어때
        </a>
        <button
          class="navbar-toggler shadow-none ms-2"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navigation"
          aria-controls="navigation"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon mt-2">
            <span class="navbar-toggler-bar bar1"></span>
            <span class="navbar-toggler-bar bar2"></span>
            <span class="navbar-toggler-bar bar3"></span>
          </span>
        </button>
        <div class="collapse navbar-collapse" id="navigation">
          <ul class="navbar-nav mx-auto">
            <li class="nav-item">
              <a
                class="nav-link d-flex align-items-center me-2 active"
                aria-current="page"
                href="/"
              >
                <i class="fa fa-chart-pie opacity-6 text-dark me-1"></i>메인화면
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link me-2" href="/member/userinfo">
                <i class="fa fa-user opacity-6 text-dark me-1"></i>내정보
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link me-2" href="/member/login">
                <i class="fas fa-user-circle opacity-6 text-dark me-1"></i
                >로그인
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link me-2" href="/member/join">
                <i class="fas fa-key opacity-6 text-dark me-1"></i>회원가입
              </a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- End Navbar -->
  </body>
</html>
