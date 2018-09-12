google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawColColors);

function drawColColors() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Ingresos');
    data.addColumn('number', 'Toral Ingresos Generados');

      data.addRows([
            ['Juan Martinez', 120000*8],
            ['Ana Lopez', 140000*8],
            ['Lorena Castillo', 160000*8],
            ['Maria Perez', 180000*8],
            ['Liliana Tovar', 150000*8],
      ]);

      var options = {
        title: 'Reporte por empleados',
        colors: ['#b71c1c'],
        width: 900,
        height: 400,
        hAxis: {
          title: 'Empleados',
        },
        vAxis: {
          title: 'Ingresos COP'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
}
