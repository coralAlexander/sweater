<#import "parts/common.ftl" as c>
<@c.page>




<h5>Hello, guest</h5>


    <div class="left-column">
    </div>

    <div class="right-column">
        <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
        <div id="piechart"></div>
        <script type="text/javascript">
            // Load google charts
            google.charts.load('current', {'packages':['corechart']});
            google.charts.setOnLoadCallback(drawChart);

            // Draw the chart and set the chart values
            function drawChart() {
                var data = google.visualization.arrayToDataTable([
                    ['Task', 'Hours per Day'],
                    ['Work', 8],
                    ['Eat', 2],
                    ['TV', 4],
                    ['Gym', 2],
                    ['Sleep', 8]
                ]);

                // Optional; add a title and set the width and height of the chart
                var options = {'title':'My Average Day', 'width':700, 'height':700};

                // Display the chart inside the <div> element with id="piechart"
                var chart = new google.visualization.PieChart(document.getElementById('piechart'));
                chart.draw(data, options);
            }
        </script>
    </div>

</@c.page>

<style>
    .left-column{
        width: 25%;
    }

    .right-column{
        width: 75%;
    }





</style>
