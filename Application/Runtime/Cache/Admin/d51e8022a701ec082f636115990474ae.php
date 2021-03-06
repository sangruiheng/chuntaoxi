<?php if (!defined('THINK_PATH')) exit();?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>后台管理</title>

    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/css/style.css" />

    <link href="/Public/admin/css/main.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="/Public/admin/js/jquery1.8.js"></script>
    <script type="text/javascript" src="/Public/admin/js/action.js"></script>
    <script src="/Public/admin/js/jquery.flot.js"></script>
    <script type="text/javascript" src="/Public/admin/js/jCalendar.js"></script>
    <script type="text/javascript" src="/Public/admin/js/jquery.XYTipsWindow.min.2.8.js"></script>
    <script type="text/javascript" src="/Public/admin/js/mydate.js"></script>
    <link href="/Public/admin/css/order.css" rel="stylesheet" type="text/css" />
    <!--[if IE]>
    <script src="/Public/admin/js/excanvas.min.js"></script>
    <![endif]-->

    <style type="text/css">
        .breadcrumb {
            border-bottom: 1px solid #e5e5e5;
            line-height: 39px;
            height: 39px;
            overflow: hidden;
        }

        .btn {
            display: inline-block;
            box-sizing: border-box;
            cursor: pointer;
            text-align: center;
            font-weight: 400;
            white-space: nowrap;
            vertical-align: middle;
            -moz-padding-start: npx;
            -moz-padding-end: npx;
            border: solid 1px #ddd;
            background-color: #fff;
            width: auto;
            -webkit-transition: background-color .1s linear;
            -moz-transition: background-color .1s linear;
            -o-transition: background-color .1s linear;
            transition: background-color .1s linear;
        }
        .btn, .btn.size-M {
            padding: 4px 12px;
            font-size: 14px;
            height: 31px;
        }

        .btn-success {
            color: #fff;
            background-color: #5eb95e;
            border-color: #5eb95e;
        }
        .radius {
            border-radius: 4px;
        }
        .r, .f-r {
            float: right!important;
            _display: inline;
        }
    </style>
</head>
<body>

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 数据统计 <span class="c-gray en">&gt;</span> 用户数据趋势 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>

<div class="page-container">

    <div class="aaa_pts_show_2">
        <div class="">

            <input class="btn btn-success" type="button" value="日统计" style="margin-left: 20px;" onclick="location='<?php echo U('user_count');?>?shop_id=<?php echo $shop_id ?>&type=d'">
            <input class="btn btn-success" type="button" value="月统计" style="margin-left: 20px;" onclick="location='<?php echo U('user_count');?>?shop_id=<?php echo $shop_id ?>&type=m'">

            </br></br>
            <!--
            <form name='form' action="<?php echo U('user_count');?>" method='get'>
            <div class="pro_5">
                时间：
                <input class="inp_1 inp_6" id="start_time" name="start_time" value="<?php echo $start_time ?>" onfocus="MyCalendar.SetDate(this)">
                <input class="inp_1 inp_6" id="end_time" name="end_time" value="<?php echo $end_time ?>" onfocus="MyCalendar.SetDate(this)">
                <input class="btn btn-success" type="button"  value="搜 索" style="margin-left: 20px;" onclick="user_option();">
            </div>
            </form>
            -->
            </br></br>
           <div id="tongji" style="width:100%; height:250px; overflow:visible;"></div>
        </div>

    </div>




</div>
<script>
    //搜索按钮点击事件
    function user_option(){
        $('form').submit();
    }

var data = [],data_2=[];
data.push(
	{
		"label":"新增用户数",
		"data": [<?php echo trim($data1,','); ?>],
		points: { show: true },
		color: '#f3bd18'
	}
);

function tongji_view(){
    var options = {
        lines: { show: true },
        points: { show: true },
		grid: {backgroundColor: { colors: ['#fff', '#eee'] },hoverable: true},
		yaxis: {ticks: 3,min: 0},
        xaxis: { tickDecimals: 0, tickSize: 1}
    };
	
    $.plot($("#tongji"), data, options);
}
tongji_view();
$(window).on('resize',function(){
	tongji_view();
	request_data();
	});

var bool = true;

var previousPoint=null;
$('#tongji').on('plothover', function (event, pos, item) {
  
  if(!bool){return;}
  bool=false;
  setTimeout(function(){bool=true},1000);
  
  if (item) {
    if(previousPoint != item.datapoint){
      previousPoint = item.datapoint;
      $('#tooltip').remove();
	  item.datapoint[0]>=data[0].data.length-2 ? item.pageX-=80 : null;
      showTooltip(item.pageX, item.pageY ,'新增用户数: '+data[0].data[item.datapoint[0]][1]);
	}
  } else {
    $('#tooltip').remove();
    previousPoint = null;
  }
});

var inter = setInterval(function(){
  if(!$('.tickLabel').length>0){
	  return;
	  }
  clearInterval(inter);
  request_data();
	},50);

function request_data(){
  var $day_String=[<?php echo trim($day_String,','); ?>];
    $('.tickLabel').each(function(index, element) {
        $(this).html($day_String[index]);
    });
}

function showTooltip(x, y, contents) {
  if($('#tooltip').length>0){return;}
  $('<div id="tooltip">' + contents + '</div>').css( {
    position: 'absolute',
    display: 'none',
    top: y + 5,
    left: x + 5,
    border: '1px solid #fdd',
    padding: '2px',
    backgroundColor: '#fee',
    opacity: 0.80
  }).appendTo('body').fadeIn(200);
}



</script>
</body>
</html>