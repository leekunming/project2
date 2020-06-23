<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- saved from url=(0064)https://www.xiabingbao.com/demo/css3-infinite-scroll/simple.html -->
<html lang="en"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css"  media="all">
    <script type="text/javascript" src="js/jquery-2.2.1.min.js"></script>
    <script src="https://cdn.staticfile.org/echarts/4.3.0/echarts.min.js"></script>
    <title>左右滚动</title>

    <style type="text/css">






        .wrap {
            overflow:hidden;
            width:600px;
            height:400px;
            text-align: center;

            margin:0 auto;
        }
        .list {
            position:relative;
            top:0px;
            left:0px;




            list-style:none;
            animation:mymove 10s infinite linear;
        }

        @-webkit-keyframes mymove {
            from {
                left:0px;
            }
            to {
                left: -600px;
            }
        }


    </style>

</head>
<body>

<div class="content" >
    <h3 style="text-align: center;">采购订单完成率</h3>
</div>
<div class="wrap">
    <ul class="list">


        <!-- 为ECharts准备一个具备大小（宽高）的Dom -->
        <li>  <div id="main" style="width: 1200px;height:400px;"></div></li>




    </ul>
</div>

<script type="text/javascript">
    // 基于准备好的dom，初始化echarts实例

    var myChart = echarts.init(document.getElementById('main'));

    // 指定图表的配置项和数据
    var  option = {
        color: ['#3398DB'],
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            data:['完成率']
        },
        grid: {
            left: '3%',
            right: '4%',
            bottom: '3%',
            height:'50%',


            containLabel: true


        },
        xAxis: [
            {   axisLabel:{interval: 0,
                    rotate:45},

                type: 'category',
                data: ['创库1', '创库2', '创库3', '创库4', '创库5', '创库6', '创库7','创库8','创库9','创库10','创库11','创库12','创库13','创库14','创库15','创库16','创库17','创库18','创库19','创库20','创库21','创库22','创库23','创库24','创库25','创库26'],
                axisTick: {
                    alignWithLabel: false
                }
            }
        ],
        yAxis:
            {
                splitLine:{show: false},
                //下面是显示格式化，一般来说还是用的上的

                axisLabel: {

                    formatter: '{value} %'

                }

            },

        series: [
            {

                type: 'bar',
                barWidth: '80%',
                itemStyle: {

                    normal: {

                        //定义一个list，然后根据所以取得不同的值

                        color: function(params) {

                            // build a color map as your need.

                            var colorList = [

                                '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',

                                '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',

                                '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0',
                                '#C1232B','#B5C334','#FCCE10','#E87C25','#27727B',

                                '#FE8463','#9BCA63','#FAD860','#F3A43B','#60C0DD',

                                '#D7504B','#C6E579','#F4E001','#F0805A','#26C0C0'


                            ];

                            return colorList[params.dataIndex]

                        },  label: {

                            show: true,

                            position: 'top',

//                             formatter: '{c}'

                            formatter: '{b}\n{c}%'

                        }

                    }

                },

                data: ['20', '30', '50', '20', '70', '60', '91','20', '30', '50', '20', '70', '60', '80','20', '30', '50', '20', '70', '60', '80','20', '30', '50', '20', '70']
            }
        ]
    };

    // 使用刚指定的配置项和数据显示图表。
    myChart.setOption(option);
</script>




<script src="js/bootstrap.min.js" charset="utf-8"></script>
<script type="text/javascript">
    $(function() {
        var num = 0;
        function goLeft() {
            //750是根据你给的尺寸，可变的
            if (num == -600) {
                num = 0;
            }
            num -= 1;
            $(".scroll").css({
                left: num
            })
        }
        //设置滚动速度
        var timer = setInterval(goLeft, 20);
        //设置鼠标经过时滚动停止
        $(".box").hover(function() {
                clearInterval(timer);
            },
            function() {
                timer = setInterval(goLeft, 20);
            })
    })


</script>

</body>
</html>