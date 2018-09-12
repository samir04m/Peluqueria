google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawColColors);

function drawColColors() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Ingresos semanales');
    data.addColumn('number', 'Ingresos');

      data.addRows([
            ['1ra Jul', 120000*7],
            ['2da Jul', 140000*7],
            ['3ra Jul', 160000*7],
            ['4ta Jul', 210000*7],
            ['1ra Ago', 150000*7],
            ['2da Ago', 170000*7],
            ['3ra Ago', 210000*7],
            ['4ta Ago', 240000*7],
            ['1ra Sep', 280000*7],

      ]);

      var options = {
        title: 'Reporte Semanal',
        colors: ['#ff5722'],
        width: 900,
        height: 400,
        hAxis: {
          title: 'Semanas',
        },
        vAxis: {
          title: 'Ingresos COP'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
}
