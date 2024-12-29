<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core"%> <%@ include
file="../includes/header.jsp"%>
<main
  class="main-content position-relative max-height-vh-100 h-100 border-radius-lg"
>
  <%@ include file="../includes/uppernav.jsp"%>
  <div class="container-fluid py-4">
    <h5 class="mb-5">연도와 지역을 선택해주세요</h5>
    <div class="row">
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4">
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="year" class="form-label" name="search_option">
            <option>2010년</option>
            <option>2011년</option>
            <option>2012년</option>
            <option>2013년</option>
            <option>2014년</option>
            <option>2015년</option>
            <option>2016년</option>
            <option>2017년</option>
            <option>2018년</option>
            <option>2019년</option>
            <option>2020년</option>
          </select>
        </div>
        <button class="btn bg-gradient-success w-30 my-4 mb-4" id="btn-year">
          선택
        </button>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select
            id="selectRegion"
            name="selectRegion"
            class="form-label"
            name="search_option"
          >
            <option>연도를 선택해주세요</option>
          </select>
        </div>
        <button class="btn bg-gradient-success w-30 my-4 mb-2" id="btn">
          검색
        </button>
      </div>
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4"></div>
      <div class="col-xl-3 col-sm-6 mb-xl-0 mb-4"></div>
      <div class="col-xl-3 col-sm-6"></div>
    </div>
    <div class="row mt-4">
      <div class="col-lg col-md-6 mt-4 mb-4">
        <div class="card z-index-2">
          <div
            class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent"
          >
            <div
              class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1"
            >
              <div class="chart">
                <canvas
                  id="chart-line"
                  class="chart-canvas"
                  height="300"
                ></canvas>
              </div>
            </div>
          </div>
          <div style="height: 70px" class="card-body">
            <h6 id="detailLabel" class="mb-0"></h6>
          </div>
        </div>
      </div>
      <div>
        <input
          id="detailbtn"
          class="btn bg-gradient-primary w-7 my-4 mb-2"
          value="상세보기"
          onclick="if(this.parentNode.getElementsByTagName('div')[0].style.display != ''){this.parentNode.getElementsByTagName('div')[0].style.display = '';this.value = '숨기기';}else{this.parentNode.getElementsByTagName('div')[0].style.display = 'none'; this.value = '다시보기';}"
          type="button"
        />
        <div>
          <div id="datalabel" class="my-4"></div>
          <div id="dataimg" class="dataimg row mt-4"></div>
        </div>
      </div>
    </div>
  </div>
  <%@ include file="../includes/footer.jsp"%>
</main>
<%@ include file="../includes/fixedsetting.jsp"%>
<script src="/assets/js/plugins/chartjs.min.js"></script>
<script src="/assets/js/dustdetail.js"></script>
<script>
  var defaultctx = document.getElementById("chart-line").getContext("2d");
  defaultctx.canvas.height = 300; // 차트가 그려질 캔버스의 높이 지정
  new Chart(defaultctx, {
    type: "line",
    data: {
      labels: [
        "1월",
        "2월",
        "3월",
        "4월",
        "5월",
        "6월",
        "7월",
        "8월",
        "9월",
        "10월",
        "11월",
        "12월",
      ],
      datasets: [
        {
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
          borderColor: "rgba(255, 255, 255, .8)",
          borderColor: "rgba(255, 255, 255, .8)",
          borderWidth: 4,
          backgroundColor: "transparent",
          fill: true,
          data: [],
          maxBarThickness: 6,
        },
      ],
    },
    options: {
      responsive: true,
      maintainAspectRatio: false,
      plugins: {
        legend: {
          display: false,
        },
      },
      interaction: {
        intersect: false,
        mode: "index",
      },
      scales: {
        y: {
          grid: {
            drawBorder: false,
            display: true,
            drawOnChartArea: true,
            drawTicks: false,
            borderDash: [5, 5],
            color: "rgba(255, 255, 255, .2)",
          },
          ticks: {
            display: true,
            color: "#f8f9fa",
            padding: 10,
            font: {
              size: 14,
              weight: 300,
              family: "Roboto",
              style: "normal",
              lineHeight: 2,
            },
          },
        },
        x: {
          grid: {
            drawBorder: false,
            display: false,
            drawOnChartArea: false,
            drawTicks: false,
            borderDash: [5, 5],
          },
          ticks: {
            display: true,
            color: "#f8f9fa",
            padding: 10,
            font: {
              size: 14,
              weight: 300,
              family: "Roboto",
              style: "normal",
              lineHeight: 2,
            },
          },
        },
      },
    },
  });
</script>
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
