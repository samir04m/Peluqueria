google.charts.load('current', {packages: ['corechart', 'bar']});
google.charts.setOnLoadCallback(drawColColors);

function drawColColors() {
    var data = new google.visualization.DataTable();
    data.addColumn('string', 'Ingresos diarios');
    data.addColumn('number', 'Ingresos');

      data.addRows([
            ['Corte Cabello Tipo 1', 120000],
            ['Corte Cabello Tipo 2', 140000],
            ['Corte Cabello Tipo 3', 160000],
            ['Tinturado Cabello Nivel A', 180000],
            ['Tinturado Cabello Nivel A', 150000],
            ['Peinado Sencillo', 170000],
            ['Peinado Extenso', 210000],
            ['Corte Manos', 240000],
            ['Pintura Manos', 280000],
            ['Corte Pies', 240000],
            ['Pintura Pies', 280000],

      ]);

      var options = {
        title: 'Reporte Ingresos por Servicios (Septiembre)',
        colors: ['#3949ab'],
        fontSize: 10,
        width: 1000,
        height: 400,
        hAxis: {
          title: 'Servicio',
        },
        vAxis: {
          title: 'Ingresos COP'
        }
      };

      var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
      chart.draw(data, options);
}
