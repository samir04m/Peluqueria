google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawColColors);

function drawColColors() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Ingresos diarios');
    data.addColumn('number', 'Ingresos');

      data.addRows([
            ['1', 120000],
            ['2', 140000],
            ['3', 160000],
            ['4', 180000],
            ['5', 150000],
            ['6', 170000],
            ['7', 210000],
            ['8', 240000],
            ['9', 280000],

      ]);

      var options = {
        title: 'Reporte diario mes Septiembre',
        colors: ['#42a5f5'],
        width: 900,
        height: 400,
        hAxis: {
          title: 'Dias',
        },
        vAxis: {
          title: 'Ingresos COP'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
}
