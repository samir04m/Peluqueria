google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawColColors);

function drawColColors() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Ingresos Mensuales');
    data.addColumn('number', 'Ingresos');

      data.addRows([
            ['Enero', 120000*30],
            ['Febrero', 140000*30],
            ['Marzo', 160000*30],
            ['Abril', 180000*30],
            ['Mayo', 150000*30],
            ['Junio', 170000*30],
            ['Julio', 210000*30],
            ['Agosto', 240000*30],
            ['Septiembre', 280000*30],

      ]);

      var options = {
        title: 'Reporte mensual año 2018',
        colors: ['#00c853'],
        width: 900,
        height: 300,
        hAxis: {
          title: 'Meses',
        },
        vAxis: {
          title: 'Ingresos COP'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
}
