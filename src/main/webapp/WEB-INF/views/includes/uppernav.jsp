<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Navbar -->
<nav
  class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl"
  id="navbarBlur"
  data-scroll="true"
>
  <div class="container-fluid py-1 px-3">
    <nav aria-label="breadcrumb">
      <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
        <li class="breadcrumb-item text-sm">
          <i class="fa fa-cloud" style="color: #0000ff"></i>
          <a class="opacity-5 text-dark" href="javascript:;"> Howair </a>
          <i class="fa fa-cloud" style="color: #0000ff"></i>
        </li>
      </ol>
      <h6 class="font-weight-bolder mb-0"></h6>
    </nav>
    <div
      class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4"
      id="navbar"
    >
      <div class="ms-md-auto pe-md-3 d-flex align-items-center">
        <div class="input-group input-group-outline">
          <label class="form-label">검색</label>
          <input type="text" class="form-control" />
        </div>
      </div>
      <ul class="navbar-nav justify-content-end">
        <!-- 세션 정보가 비어있다면. 즉, 로그인을 하지 않았다면. -->
        <c:choose>
          <c:when test="${empty sessionScope.sMember}">
            <li class="nav-item d-flex align-items-center">
              <a
                href="../member/login"
                class="nav-link text-body font-weight-bold px-0"
              >
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none"> 로그인 </span>
              </a>
            </li>
          </c:when>
          <c:otherwise>
            <li class="nav-item d-flex align-items-center">
              <a
                href="../member/logout"
                class="nav-link text-body font-weight-bold px-0"
              >
                <i class="fa fa-user me-sm-1"></i>
                <span class="d-sm-inline d-none">
                  로그아웃(${sMember.id})
                </span>
              </a>
            </li>
          </c:otherwise>
        </c:choose>
        <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
          <a
            href="javascript:;"
            class="nav-link text-body p-0"
            id="iconNavbarSidenav"
          >
            <div class="sidenav-toggler-inner">
              <i class="sidenav-toggler-line"></i>
              <i class="sidenav-toggler-line"></i>
              <i class="sidenav-toggler-line"></i>
            </div>
          </a>
        </li>
        <li class="nav-item px-3 d-flex align-items-center">
          <a href="javascript:;" class="nav-link text-body p-0">
            <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<!-- End Navbar -->
