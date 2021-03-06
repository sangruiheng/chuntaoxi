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

    <title>产品管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 全部产品 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c">
        <input type="text" class="input-text" style="width:250px" placeholder="专题名称" id="theme_name" value="<?php echo ($theme_name); ?>">
        <button type="button" class="btn btn-success" id="" name="" onclick="product_option(0);"><i class="Hui-iconfont">&#xe665;</i> 搜索</button>
    </div>
    <br>
    <table class="table table-border table-bordered table-bg">
        <thead>

        <tr class="text-c">
            <th width="20">ID</th>
            <th width="100">专题名称</th>
            <th width="80">专题图片</th>
            <th width="80">类型</th>
            <th width="180">添加时间</th>
            <th width="80">操作</th>
        </tr>
        </thead>


        <tbody id="news_option">
        <!-- 遍历 -->
        <?php if(is_array($theme)): $i = 0; $__LIST__ = $theme;if( count($__LIST__)==0 ) : echo "暂时没有数据" ;else: foreach($__LIST__ as $key=>$v): $mod = ($i % 2 );++$i;?><tr class="text-c">
                <td><?php echo ($v["id"]); ?></td>
                <td><?php echo ($v["theme_name"]); ?></td>
                <td style="padding:3px 0;"><img src="/Data/<?php echo ($v["theme_img"]); ?>" width="80px" height="80px"/></td>
                <td><?php echo $v['theme_position'] == 1 ? 顶部 : 底部 ?></td>
                <td><?php echo (date('Y-m-d H:i:s',$v["theme_addtime"])); ?></td>
                <td>
                    <a href="<?php echo U('Theme/add');?>?id=<?php echo ($v["id"]); ?>&page=<?php echo ($page); ?>&theme_name=<?php echo ($theme_name); ?>">修改</a> |
                    <a onclick="del_id_urls(<?php echo ($v["id"]); ?>)">删除</a>
                </td>
            </tr><?php endforeach; endif; else: echo "暂时没有数据" ;endif; ?>
        <!-- 遍历 -->
        </tbody>
        <tr>
            <td colspan="10" class="td_2">
                <?php echo ($page_index); ?>
            </td>
        </tr>
    </table>
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


<script>
    function product_option(page){
        var obj={
            "name":$("#name").val(),
            "tuijian":$("#tuijian").val()
        }
        //alert(obj);exit();
        var url='?page='+page;
        $.each(obj,function(a,b){
            url+='&'+a+'='+b;
        });
        location=url;
    }

    function del_id_urls (theme_id) {
        if (confirm('您确定要删除吗？')) {
            location.href="<?php echo U('del');?>?id="+theme_id;
        };
    }

    //新品设置
    function pro_new(pro_id,type){
        if (!pro_id) {
            return;
        }
        $.post("<?php echo U('Product/set_new');?>",{pro_id:pro_id},function(data){
            if (data.status==1) {
                if (type==1) {
                    document.getElementById('new_'+pro_id).innerHTML='<a class="label err" onclick="pro_new('+pro_id+',0);">非新品</if></a>';
                }else{
                    document.getElementById('new_'+pro_id).innerHTML='<a class="label blue" onclick="pro_new('+pro_id+',1);">新品上市</if></a>';
                }
            }else{
                alert('操作失败，请稍后再试！');
                return false;
            }
        },'json');
    }

    //热销设置
    function pro_hot(pro_id,type){
        if (!pro_id) {
            return;
        }
        $.post("<?php echo U('Product/set_hot');?>",{pro_id:pro_id},function(data){
            if (data.status==1) {
                if (type==1) {
                    document.getElementById('hot_'+pro_id).innerHTML='<a class="label err" onclick="pro_hot('+pro_id+',0);">非热卖</if></a>';
                }else{
                    document.getElementById('hot_'+pro_id).innerHTML='<a class="label succ" onclick="pro_hot('+pro_id+',1);">热卖商品</if></a>';
                }
            }else{
                alert('操作失败，请稍后再试！');
                return false;
            }
        },'json');
    }
</script>

</body>
</html>