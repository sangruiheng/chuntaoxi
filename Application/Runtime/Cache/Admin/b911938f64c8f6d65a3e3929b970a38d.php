<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
    <meta http-equiv="Cache-Control" content="no-siteapp" />
    <link rel="Bookmark" href="/favicon.ico" >
    <link rel="Shortcut Icon" href="/favicon.ico" />
    <link href="/Public/admin/css/main.css" rel="stylesheet" type="text/css" />

    <!--[if lt IE 9]>
    <script type="text/javascript" src="/Public/admin/lib/html5shiv.js"></script>
    <script type="text/javascript" src="/Public/admin/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui/css/H-ui.min.css" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/css/H-ui.admin.css" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/lib/Hui-iconfont/1.0.8/iconfont.css" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/skin/default/skin.css" id="skin" />
    <link rel="stylesheet" type="text/css" href="/Public/admin/static/h-ui.admin/css/style.css" />
    <!--[if IE 6]>
    <script type="text/javascript" src="/Public/admin/lib/DD_belatedPNG_0.0.8a-min.js" ></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <script type="text/javascript" src="/Public/admin/js/jquery.js"></script>
    <script type="text/javascript" src="/Public/admin/js/action.js"></script>
    <script type="text/javascript" src="/Public/admin/js/mydate.js"></script>

    <title>新增优惠券</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 优惠券管理 <span class="c-gray en">&gt;</span> 新增优惠券 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <form class="form form-horizontal" action="<?php echo U('save');?>" method="post" onsubmit="return ac_from();" enctype="multipart/form-data">

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>优惠券名称：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="优惠券名称" name="title" id="title" value="<?php echo ($voucher["title"]); ?>">
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>开始时间：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="开始时间" name="start_time" id="start_time" value="<?php echo $voucher['start_time']=='' ? date('Y-m-d') : $voucher['start_time']; ?>" onfocus="MyCalendar.SetDate(this)">
                <span class="tipText">优惠券的生效时间</span>
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>失效时间：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="失效时间" name="end_time" id="end_time" value="<?php echo $voucher['end_time']=='' ? date('Y-m-d',strtotime('+1 day')) : $voucher['end_time']; ?>" onfocus="MyCalendar.SetDate(this)" >
                <span class="tipText">失效时间必须大于生效时间（当天晚上12点失效）</span>
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>满减金额：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="满减金额" name="full_money" id="full_money" value="<?php echo ($voucher["full_money"]); ?>" >
                <span class="tipText">使用时减免的金额</span>
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>优惠金额：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="优惠金额"  name="amount" id="amount" value="<?php echo ($voucher["amount"]); ?>" >
                <span class="tipText">使用时减免的金额</span>
            </div>
        </div>



        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>发行数量：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input type="text" class="input-text" placeholder="发行数量"  name="count" id="count" value="<?php echo ($voucher["count"]); ?>" >
                <span class="tipText">开团所需要达到的人数</span>
            </div>
        </div>

        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>使用范围：</label>
            <div class="formControls col-xs-8 col-sm-3">
                <input class="input-text" id="proid" name="proid" value="<?php echo $voucher['proid']==''?'all':$voucher['proid']; ?>" readonly="readonly"/>
                <input type="button" value="选择商品" class="btn btn-primary"  onclick="win_open('<?php echo U('get_pro');?>',1280,800)">
                <br>
                <span class="tipText">默认店铺内所有商品通用</span>
            </div>
        </div>

        <?php if ($voucher['proid']!='all' && $voucher['proid']!='' && $voucher['pro_list']) { ?>
        <li>
            <div class="d1">已选产品:</div>
            <div>
                <?php if(is_array($voucher['pro_list'])): $i = 0; $__LIST__ = $voucher['pro_list'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><img src="/Data/<?php echo ($v); ?>" width="100px" height="100px" /><?php endforeach; endif; else: echo "" ;endif; ?>
            </div>
        </li>
        <?php } ?>

        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
                <input class="btn btn-primary radius" type="submit" name="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;" id="aaa_pts_web_s">
                <input type="hidden" name="id" id='id' value="<?php echo ($voucher["id"]); ?>">
            </div>
        </div>
    </form>
</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="/Public/admin/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="/Public/admin/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="/Public/admin/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript" src="/Public/admin/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="/Public/admin/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<script type="text/javascript" src="/Public/admin/lib/datatables/1.10.0/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="/Public/admin/lib/laypage/1.2/laypage.js"></script>

<script type="text/javascript" src="/Public/admin/js/product.js"></script>
<script>
    function ac_from(){

        var full_money = document.getElementById("full_money").value;
        var amount = document.getElementById("amount").value;
        var count=document.getElementById("count").value;

        if(/^\d+$/.test(count)==false) {
            alert('请输入数字格式的发行数量！');
            return false;
        }

        var fix_amountTest=/^(([1-9]\d*)|\d)(\.\d{1,2})?$/;
        if(fix_amountTest.test(full_money)==false){
            alert("请输入有效格式的满减金额！");
            return false;
        }

        if(fix_amountTest.test(amount)==false){
            alert("请输入有效格式的优惠金额！");
            return false;
        }

    }

</script>


</body>
</html>