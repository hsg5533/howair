<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  </head>

  <body class="g-sidenav-show bg-gray-200">
    <aside
      class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 bg-gradient-dark"
      id="sidenav-main"
    >
      <div class="sidenav-header">
        <i
          class="fas fa-times p-3 cursor-pointer text-white opacity-5 position-absolute end-0 top-0 d-none d-xl-none"
          aria-hidden="true"
          id="iconSidenav"
        ></i>
        <a class="navbar-brand m-0" href="#" target="_blank">
          <!-- <img src="../assets/img/logo-ct.png" class="navbar-brand-img h-100" alt="main_logo"> -->
          <i class="fa fa-cloud" style="color: #ffffff"></i>
          <span class="ms-1 font-weight-bold text-white"> 대기어때 </span>
          <i class="fa fa-cloud opacity-10" style="color: #ffffff"></i>
        </a>
      </div>
      <hr class="horizontal light mt-0 mb-2" />
      <div class="collapse navbar-collapse w-auto" id="sidenav-collapse-main">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link text-white" href="/">
              <div
                class="text-white text-center me-2 d-flex align-items-center justify-content-center"
              >
                <i class="material-icons opacity-10">dashboard</i>
              </div>
              <span class="nav-link-text ms-1"> 메인화면 </span>
            </a>
          </li>
          <c:if test="${empty sessionScope.sMember=='False'}">
            <li class="nav-item">
              <a class="nav-link text-white" href="/dustdetail">
                <div
                  class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                >
                  <i class="material-icons opacity-10">table_view</i>
                </div>
                <span class="nav-link-text ms-1"> 상세 대기 정보 </span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link text-white" href="/qna/list">
                <div
                  class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                >
                  <i class="material-icons opacity-10">table_view</i>
                </div>
                <span class="nav-link-text ms-1"> 문의 게시판 </span>
              </a>
            </li>
            <li class="nav-item mt-3">
              <h6
                class="ps-4 ms-2 text-uppercase text-xs text-white font-weight-bolder opacity-8"
              >
                계정 관리
              </h6>
            </li>
          </c:if>
          <c:if test="${sMember.id  == 'admin' }">
            <a class="nav-link text-white" class="join" href="/member/userlist"
              ><div
                class="text-white text-center me-2 d-flex align-items-center justify-content-center"
              >
                <i class="material-icons opacity-10">person</i>
              </div>
              유저 리스트</a
            ></c:if
          >
          <!-- 세션 정보가 비어있다면. 즉, 로그인을 하지 않았다면. -->
          <c:choose>
            <c:when test="${empty sessionScope.sMember}">
              <li class="nav-item">
                <a class="nav-link text-white" href="../member/login">
                  <div
                    class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                  >
                    <i class="material-icons opacity-10">login</i>
                  </div>
                  <span class="nav-link-text ms-1"> 로그인 </span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="../member/join">
                  <div
                    class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                  >
                    <i class="material-icons opacity-10">assignment</i>
                  </div>
                  <span class="nav-link-text ms-1"> 가입 </span>
                </a>
              </li>
            </c:when>
            <c:otherwise>
              <li class="nav-item">
                <a
                  class="nav-link text-white"
                  href="/member/modify/${sMember.id}"
                >
                  <div
                    class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                  >
                    <i class="material-icons opacity-10">person</i>
                  </div>
                  <span class="nav-link-text ms-1"> 내정보(${sMember.id})</span>
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link text-white" href="/member/logout">
                  <div
                    class="text-white text-center me-2 d-flex align-items-center justify-content-center"
                  >
                    <i class="material-icons opacity-10">login</i>
                  </div>
                  <span class="nav-link-text ms-1">
                    로그아웃(${sMember.id})</span
                  >
                </a>
              </li>
            </c:otherwise>
          </c:choose>
        </ul>
      </div>
    </aside>
  </body>
</html>
