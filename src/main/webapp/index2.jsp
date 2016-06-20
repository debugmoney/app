<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>
        Live Data Example - HTML5 jQuery Chart Plugin by jqChart
    </title>
    <link rel="stylesheet" type="text/css" href="jquery/jqchart/css/jquery.jqChart.css" />
    <link rel="stylesheet" type="text/css" href="jquery/jqchart/css/jquery.jqRangeSlider.css" />
    <link rel="stylesheet" type="text/css" href="jquery/jqchart/themes/smoothness/jquery-ui-1.10.4.css" />
    <script src="jquery/jqchart/js/jquery-1.11.1.min.js" type="text/javascript"></script>
    <script src="jquery/jqchart/js/jquery.mousewheel.js" type="text/javascript"></script>
    <script src="jquery/jqchart/js/jquery.jqChart.min.js" type="text/javascript"></script>
    <script src="jquery/jqchart/js/jquery.jqRangeSlider.min.js" type="text/javascript"></script>
    <!--[if IE]><script lang="javascript" type="text/javascript" src="jquery/jqchart/js/excanvas.js"></script><![endif]-->

    <script lang="javascript" type="text/javascript">
        var model = [
            { date: "12/20/2012", value: 30 },
            { date: "12/21/2012", value: 50 },
            { date: "12/22/2012", value: 45 },
            { date: "12/23/2012", value: 40 },
            { date: "12/24/2012", value: 35 },
            { date: "12/25/2012", value: 30 },
            { date: "12/26/2012", value: 42 },
            { date: "12/27/2012", value: 40 },
            { date: "12/28/2012", value: 35 },
            { date: "12/29/2012", value: 43 },
            { date: "12/30/2012", value: 58 },
            { date: "12/31/2012", value: 60 }
        ];

        $(document).ready(function () {
            $('#jqChart').jqChart({
                title: { text: 'Binding to Data Source' },
                animation: { duration: 1 },
                shadows: {
                    enabled: true
                },
                dataSource: model,
                series: [
                    {
                        type: 'column',
                        xValuesField: {
                            name: 'date',
                            type: 'dateTime' // string, numeric, dateTime
                        },
                        yValuesField: 'value'
                    }
                ]
            });
        });
    </script>

</head>
<body>
<div>
    <div id="jqChart" style="width: 500px; height: 300px;">
    </div>
</div>
</body>
</html>

