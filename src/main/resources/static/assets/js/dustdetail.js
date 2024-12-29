$("#btn-year").click(function () {
  $.ajax({
    type: "post", //전송 방식
    url: "/dustdetailList",
    data: {
      year: $("#year option:checked").text(),
    },
  }).done(function (res) {
    var address = new Map();
    var option = "";

    console.log(res);

    for (let i = 0; i < res.length; i++) {
      address.set(res[i].address, res[i].address);
    }
    for (let key of address.keys()) {
      option += "<option>" + address.get(key) + "</option>";
      console.log(key + " => " + address.get(key));
      document.getElementById("selectRegion").innerHTML = option;
    }
  });
});

$("#btn").click(function () {
  $.ajax({
    type: "post", //전송 방식
    url: "/dustdetailList",
    data: {
      year: $("#year option:checked").text(),
    },
  }).done(function (res) {
    var Label = "";
    var dataimg = "";
    var datalabel = "";
    var yeartext = $("#year option:checked").text();
    var selectregiontext = $("#selectRegion option:checked").text();

    if (selectregiontext != "연도를 선택해주세요") {
      var selectRegion = document.getElementsByName("selectRegion");
      var indexNo = selectRegion[0].selectedIndex;
      Label += yeartext + " " + selectregiontext;
      datalabel += yeartext + " " + "전국 미세먼지 연평균";
      dataimg +=
        "<img src=/assets/img/dataimg/blockMap_year_avg" + yeartext + ".png/>";
      document.getElementById("detailLabel").innerHTML = Label;
      document.getElementById("datalabel").innerHTML = datalabel;
      document.getElementById("dataimg").innerHTML = dataimg;
    }

    console.log(indexNo);
    console.log(res[indexNo].address);
    //기존 캔버스를 지움
    $("#chart-line").remove();
    //새로운 캔버스 생성
    $(".chart").append('<canvas id="chart-line"><canvas>');
    var ctx = document.getElementById("chart-line").getContext("2d");
    ctx.canvas.height = 300; // 차트가 그려질 캔버스의 높이 지정
    new Chart(ctx, {
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
            label: res[indexNo].address,
            tension: 0,
            borderWidth: 0,
            pointRadius: 4,
            pointBackgroundColor: "rgba(255, 255, 255, .8)",
            pointBorderColor: "transparent",
            borderColor: "rgba(255, 255, 255, .8)",
            borderColor: "rgba(255, 255, 255, .8)",
            borderWidth: 4,
            backgroundColor: "transparent",
            fill: true,
            data: [
              res[indexNo].m01avg,
              res[indexNo].m02avg,
              res[indexNo].m03avg,
              res[indexNo].m04avg,
              res[indexNo].m05avg,
              res[indexNo].m06avg,
              res[indexNo].m07avg,
              res[indexNo].m08avg,
              res[indexNo].m09avg,
              res[indexNo].m10avg,
              res[indexNo].m11avg,
              res[indexNo].m12avg,
            ],
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
  });
});
