<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<div class="fixed-plugin">
  <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
    <i class="material-icons py-2">settings</i>
  </a>
  <div class="card shadow-lg">
    <div class="card-header pb-0 pt-3">
      <div class="float-start">
        <h5 class="mt-3 mb-0">화면 설정</h5>
        <p>설정을 선택하세요.</p>
      </div>
      <div class="float-end mt-4">
        <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
          <i class="material-icons">clear</i>
        </button>
      </div>
      <!-- End Toggle Button -->
    </div>
    <hr class="horizontal dark my-1" />
    <div class="card-body pt-sm-3 pt-0">
      <!-- Sidenav Type -->
      <div class="d-flex">
        <button
          class="btn bg-gradient-dark px-3 mb-2 active"
          data-class="bg-gradient-dark"
          onclick="sidebarType(this)"
        >
          🌙
        </button>
        <button
          class="btn bg-gradient-dark px-3 mb-2 ms-2"
          data-class="bg-transparent"
          onclick="sidebarType(this)"
        >
          배경색
        </button>
        <button
          class="btn bg-gradient-dark px-3 mb-2 ms-2"
          data-class="bg-white"
          onclick="sidebarType(this)"
        >
          🌞
        </button>
      </div>
      <!-- Navbar Fixed -->
      <div class="mt-3 d-flex">
        <h6 class="mb-0">상단 메뉴 고정</h6>
        <div class="form-check form-switch ps-0 ms-auto my-auto">
          <input
            class="form-check-input mt-1 ms-auto"
            type="checkbox"
            id="navbarFixed"
            onclick="navbarFixed(this)"
          />
        </div>
      </div>
      <hr class="horizontal dark my-3" />
      <div class="mt-2 d-flex">
        <h6 class="mb-0">밝음 / 어두움</h6>
        <div class="form-check form-switch ps-0 ms-auto my-auto">
          <input
            class="form-check-input mt-1 ms-auto"
            type="checkbox"
            id="dark-version"
            onclick="darkMode(this)"
          />
        </div>
      </div>
      <hr class="horizontal dark my-sm-4" />
      <div class="w-100 text-center"></div>
    </div>
  </div>
</div>
<!--   Core JS Files   -->
<script src="/assets/js/core/popper.min.js"></script>
<script src="/assets/js/core/bootstrap.min.js"></script>
<script src="/assets/js/plugins/perfect-scrollbar.min.js"></script>
<script src="/assets/js/plugins/smooth-scrollbar.min.js"></script>
<script>
  var win = navigator.platform.indexOf("Win") > -1;
  if (win && document.querySelector("#sidenav-scrollbar")) {
    var options = {
      damping: "0.5",
    };
    Scrollbar.init(document.querySelector("#sidenav-scrollbar"), options);
  }
</script>
<!-- Control Center for Material Dashboard: parallax effects, scripts for the example pages etc -->
<script src="/assets/js/material-dashboard.min.js?v=3.0.4"></script>
