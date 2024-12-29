$("#btn-dark-region").click(function () {
  $.ajax({
    type: "post", //전송 방식
    url: "/chart",
    data: {
      region: $("#darkregion option:checked").text(),
    },
  }).done(function (res) {
    var datetime = new Map();
    var option = "";

    console.log(res);

    for (let i = 0; i < res.length; i++) {
      datetime.set(res[i].datetime, res[i].datetime);
    }
    for (let key of datetime.keys()) {
      option += "<option>" + datetime.get(key) + "</option>";
      console.log(key + " => " + datetime.get(key));
      document.getElementById("darktime").innerHTML = option;
    }
  });
});

$("#btn-dark").click(function () {
  $.ajax({
    type: "post", //전송 방식
    url: "/chart",
    data: {
      region: $("#darkregion option:checked").text(),
    },
  }).done(function (res) {
    var figure = new Map();
    var idx = new Map();
    var datetime = new Map();

    var darklabel = "";

    var regiontext = $("#darkregion option:checked").text();
    var timetext = $("#darktime option:checked").text();

    //지역을 선택하지 않았으면
    if (timetext == "지역을 선택해주세요") {
      regiontext = "";
      figure = "";
      idx = "";
      datetime = "";
    }

    //DataController에서 데이터를 받아와서 Map에 저장
    for (i in res) {
      figure.set(res[i].datetime, res[i].pm_figure);
      idx.set(res[i].datetime, res[i].pm_idx);
      datetime.set(res[i].datetime, res[i].datetime);
    }

    //기존 캔버스를 지움
    $("#chart-dark").remove();
    //새로운 캔버스 생성
    $(".chartdark").append('<canvas id="chart-dark"><canvas>');

    console.log(regiontext);
    console.log(datetime);
    console.log(figure);

    console.log(datetime.get(timetext));
    console.log(figure.get(timetext));
    console.log(idx.get(timetext));

    darklabel += regiontext + " " + timetext + " " + idx.get(timetext);
    document.getElementById("darklabel").innerHTML = darklabel;

    var ctxdark = document.getElementById("chart-dark").getContext("2d");
    ctxdark.canvas.height = 170; // 차트가 그려질 캔버스의 높이 지정
    new Chart(ctxdark, {
      type: "bar",
      data: {
        labels: [datetime.get(timetext)],
        datasets: [
          {
            label: [idx.get(timetext)],
            tension: 0,
            barThickness: 100,
            borderWidth: 0,
            pointRadius: 4,
            pointBackgroundColor: "rgba(255, 255, 255, .8)",
            pointBorderColor: "transparent",
            borderColor: "rgba(255, 255, 255, .8)",
            borderColor: "rgba(255, 255, 255, .8)",
            borderWidth: 4,
            backgroundColor: "transparent",
            fill: true,
            data: [figure.get(timetext)],
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
            max: 1,
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
                family: "Roboto",
                style: "normal",
                lineHeight: 2,
              },
            },
          },
          x: {
            barPercentage: 0.5,
            grid: {
              drawBorder: false,
              display: false,
              drawOnChartArea: false,
              drawTicks: false,
              borderDash: [5, 5],
            },
            ticks: {
              autoSkip: false,
              maxRotation: 0,
              minRotation: 0,
              display: true,
              color: "#f8f9fa",
              padding: 10,
              font: {
                maxRotation: 90,
                minRotation: 90,
                size: 10,
                weight: 300,
                family: "Roboto",
                style: "normal",
                lineHeight: 1,
              },
            },
          },
        },
      },
    });
  });
});
