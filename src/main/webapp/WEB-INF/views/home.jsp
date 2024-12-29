<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ include file="includes/header.jsp"%>
<main
  class="main-content position-relative max-height-vh-100 h-100 border-radius-lg"
>
  <%@ include file="includes/uppernav.jsp"%>
  <div class="container-fluid py-4">
    <h4 class="mb-5">부산광역시의 미세먼지 현황을 안내해드립니다.</h4>
    <div class="row">
      <h5 class="mb-3">지역과 시간을 선택해주세요.</h5>
      <div class="col-xl-4 col-sm-7 mb-xl-0 mb-4">
        <h6>지역 #1</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="redregion" class="form-label" name="search_option">
            <option>부산광역시 강서구</option>
            <option>부산광역시 금정구</option>
            <option>부산광역시 기장군</option>
            <option>부산광역시 남구</option>
            <option>부산광역시 동구</option>
            <option>부산광역시 동래구</option>
            <option>부산광역시 부산진구</option>
            <option>부산광역시 북구</option>
            <option>부산광역시 사상구</option>
            <option>부산광역시 사하구</option>
            <option>부산광역시 서구</option>
            <option>부산광역시 수영구</option>
            <option>부산광역시 연제구</option>
            <option>부산광역시 영도구</option>
            <option>부산광역시 중구</option>
            <option>부산광역시 해운대구</option>
          </select>
        </div>
        <button
          class="btn bg-gradient-primary w-30 my-4 mb-4"
          id="btn-red-region"
        >
          선택
        </button>
        <h6>시간 #1</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="redtime" class="form-label" name="search_option">
            <option selected>지역을 선택해주세요</option>
          </select>
        </div>
        <button class="btn bg-gradient-primary w-30 my-4 mb-2" id="btn-red">
          검색
        </button>
      </div>
      <div class="col-xl-4 col-sm-7 mb-xl-0 mb-4">
        <h6>지역 #2</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="greenregion" class="form-label" name="search_option">
            <option>부산광역시 강서구</option>
            <option>부산광역시 금정구</option>
            <option>부산광역시 기장군</option>
            <option>부산광역시 남구</option>
            <option>부산광역시 동구</option>
            <option>부산광역시 동래구</option>
            <option>부산광역시 부산진구</option>
            <option>부산광역시 북구</option>
            <option>부산광역시 사상구</option>
            <option>부산광역시 사하구</option>
            <option>부산광역시 서구</option>
            <option>부산광역시 수영구</option>
            <option>부산광역시 연제구</option>
            <option>부산광역시 영도구</option>
            <option>부산광역시 중구</option>
            <option>부산광역시 해운대구</option>
          </select>
        </div>
        <button
          class="btn bg-gradient-success w-30 my-4 mb-4"
          id="btn-green-region"
        >
          선택
        </button>
        <h6>시간 #2</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="greentime" class="form-label" name="search_option">
            <option selected>지역을 선택해주세요</option>
          </select>
        </div>
        <button class="btn bg-gradient-success w-30 my-4 mb-2" id="btn-green">
          검색
        </button>
      </div>
      <div class="col-xl-4 col-sm-7 mb-xl-0 mb-4">
        <h6>지역 #3</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="darkregion" class="form-label" name="search_option">
            <option>부산광역시 강서구</option>
            <option>부산광역시 금정구</option>
            <option>부산광역시 기장군</option>
            <option>부산광역시 남구</option>
            <option>부산광역시 동구</option>
            <option>부산광역시 동래구</option>
            <option>부산광역시 부산진구</option>
            <option>부산광역시 북구</option>
            <option>부산광역시 사상구</option>
            <option>부산광역시 사하구</option>
            <option>부산광역시 서구</option>
            <option>부산광역시 수영구</option>
            <option>부산광역시 연제구</option>
            <option>부산광역시 영도구</option>
            <option>부산광역시 중구</option>
            <option>부산광역시 해운대구</option>
          </select>
        </div>
        <button
          class="btn bg-gradient-dark w-30 my-4 mb-4"
          id="btn-dark-region"
        >
          선택
        </button>
        <h6>시간 #3</h6>
        <div class="input-group input-group-outline">
          <!-- selectbox로 선택하게 -->
          <select id="darktime" class="form-label" name="search_option">
            <option selected>지역을 선택해주세요</option>
          </select>
        </div>
        <button class="btn bg-gradient-dark w-30 my-4 mb-2" id="btn-dark">
          검색
        </button>
      </div>
    </div>
    <div class="row mt-4">
      <div class="col-lg-4 col-md-6 mt-4 mb-4">
        <div class="card z-index-2">
          <div
            class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent"
          >
            <div
              class="bg-gradient-primary shadow-primary border-radius-lg py-3 pe-1"
            >
              <div class="chartred">
                <canvas
                  id="chart-red"
                  class="chart-canvas"
                  height="170"
                ></canvas>
              </div>
            </div>
          </div>
          <div class="card-body" style="height: 70px">
            <h6 id="redlabel" class="mb-0"></h6>
          </div>
        </div>
      </div>
      <div class="col-lg-4 col-md-6 mt-4 mb-4">
        <div class="card z-index-2">
          <div
            class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent"
          >
            <div
              class="bg-gradient-success shadow-success border-radius-lg py-3 pe-1"
            >
              <div class="chartgreen">
                <canvas
                  id="chart-green"
                  class="chart-canvas"
                  height="170"
                ></canvas>
              </div>
            </div>
          </div>
          <div class="card-body" style="height: 70px">
            <h6 id="greenlabel" class="mb-0"></h6>
          </div>
        </div>
      </div>
      <div class="col-lg-4 mt-4 mb-3">
        <div class="card z-index-2">
          <div
            class="card-header p-0 position-relative mt-n4 mx-3 z-index-2 bg-transparent"
          >
            <div
              class="bg-gradient-dark shadow-dark border-radius-lg py-3 pe-1"
            >
              <div class="chartdark">
                <canvas
                  id="chart-dark"
                  class="chart-canvas"
                  height="170"
                ></canvas>
              </div>
            </div>
          </div>
          <div class="card-body" style="height: 70px">
            <h6 id="darklabel" class="mb-0"></h6>
          </div>
        </div>
      </div>
    </div>
    <div class="row mb-4"></div>
    <%@ include file="includes/footer.jsp"%>
  </div>
</main>
<%@ include file="includes/fixedsetting.jsp"%>
<!--   Core JS Files   -->
<script src="/assets/js/plugins/chartjs.min.js"></script>
<script src="/assets/js/mainchartred.js"></script>
<script src="/assets/js/mainchartgreen.js"></script>
<script src="/assets/js/mainchartdark.js"></script>
<script>
  var ctx = document.getElementById("chart-red").getContext("2d");
  new Chart(ctx, {
    type: "bar",
    data: {
      labels: [],
      datasets: [
        {
          label: "미세먼지",
          tension: 0.4,
          borderWidth: 0,
          borderRadius: 4,
          borderSkipped: false,
          backgroundColor: "rgba(255, 255, 255, .8)",
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
            suggestedMin: 0,
            suggestedMax: 500,
            beginAtZero: true,
            padding: 10,
            font: {
              size: 10,
              weight: 300,
              family: "yg-jalnan",
              style: "normal",
              lineHeight: 2,
            },
            color: "#fff",
          },
        },
        x: {
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
              size: 10,
              weight: 300,
              family: "yg-jalnan",
              style: "normal",
              lineHeight: 2,
            },
          },
        },
      },
    },
  });
  var ctx2 = document.getElementById("chart-green").getContext("2d");
  new Chart(ctx2, {
    type: "bar",
    data: {
      labels: [],
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
              size: 10,
              weight: 300,
              family: "yg-jalnan",
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
              size: 10,
              weight: 300,
              family: "yg-jalnan",
              style: "normal",
              lineHeight: 2,
            },
          },
        },
      },
    },
  });
  var ctx3 = document.getElementById("chart-dark").getContext("2d");
  new Chart(ctx3, {
    type: "line",
    data: {
      labels: [],
      datasets: [
        {
          label: "Mobile apps",
          tension: 0,
          borderWidth: 0,
          pointRadius: 5,
          pointBackgroundColor: "rgba(255, 255, 255, .8)",
          pointBorderColor: "transparent",
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
            padding: 10,
            color: "#f8f9fa",
            font: {
              size: 10,
              weight: 300,
              family: "yg-jalnan",
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
              size: 10,
              weight: 300,
              family: "yg-jalnan",
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
