<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div class="container position-sticky z-index-sticky top-0">
  <div class="row">
    <div class="col-12"><%@ include file="../includes/memberheader.jsp"%></div>
  </div>
</div>
<main class="main-content mt-0">
  <section>
    <div class="page-header min-vh-100">
      <div class="container">
        <div class="row">
          <div
            class="col-6 d-lg-flex d-none h-100 my-auto pe-0 position-absolute top-0 start-0 text-center justify-content-center flex-column"
          >
            <div
              class="position-relative bg-gradient-primary h-100 m-3 px-7 border-radius-lg d-flex flex-column justify-content-center"
              style="
                background-image: url('../assets/img/illustrations/illustration-signup.jpg');
                background-size: cover;
              "
            ></div>
          </div>
          <div
            class="col-xl-4 col-lg-5 col-md-7 d-flex flex-column ms-auto me-auto ms-lg-auto me-lg-5"
          >
            <div class="card card-plain">
              <div class="card-header">
                <h4 class="font-weight-bolder">회원가입</h4>
                <p class="mb-0">
                  회원님의 이름, 이메일, 비밀번호를 입력해주세요
                </p>
              </div>
              <div class="card-body">
                <form role="form">
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label"></label>
                    <input
                      type="text"
                      id="name"
                      class="form-control"
                      placeholder="name"
                    />
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label"></label>
                    <input
                      type="text"
                      id="id"
                      class="form-control"
                      placeholder="id"
                    />
                  </div>
                  <div class="input-group input-group-outline mb-3">
                    <label class="form-label"></label>
                    <input
                      placeholder="Password"
                      type="password"
                      class="form-control"
                      id="pass"
                    />
                  </div>
                  <div class="form-check form-check-info text-start ps-0">
                    <input
                      class="form-check-input"
                      type="checkbox"
                      value=""
                      id="flexCheckDefault"
                      checked
                    />
                    <label class="form-check-label" for="flexCheckDefault">
                      개인정보 제공에
                      <a
                        href="javascript:;"
                        class="text-dark font-weight-bolder"
                        >동의합니다</a
                      >
                    </label>
                  </div>
                  <div class="text-center">
                    <button
                      type="button"
                      id="btnJoin"
                      class="btn btn-lg bg-gradient-primary btn-lg w-100 mt-4 mb-0"
                    >
                      가입하기
                    </button>
                  </div>
                </form>
              </div>
              <div class="card-footer text-center pt-0 px-lg-2 px-1">
                <p class="mb-2 text-sm mx-auto">
                  이미 회원이신가요?
                  <a
                    href="/member/login"
                    class="text-primary text-gradient font-weight-bold"
                    >로그인</a
                  >
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</main>
<!--   Core JS Files   -->
<script type="text/javascript" src="../assets/js/member.js"></script>
<script src="../assets/js/core/popper.min.js"></script>
<script src="../assets/js/core/bootstrap.min.js"></script>
<script src="../assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="../assets/js/plugins/smooth-scrollbar.min.js"></script>
<script>
  var win = navigator.platform.indexOf("Win") > -1;
  if (win && document.querySelector("#sidenav-scrollbar")) {
    var options = {
      damping: "0.5",
    };
    Scrollbar.init(document.querySelector("#sidenav-scrollbar"), options);
  }
</script>
<!-- Github buttons -->
<script async defer src="https://buttons.github.io/buttons.js"></script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="../assets/js/material-dashboard.min.js?v=3.0.4"></script>
