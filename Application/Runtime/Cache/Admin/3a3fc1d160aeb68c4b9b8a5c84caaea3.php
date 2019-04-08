<?php if (!defined('THINK_PATH')) exit();?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>后台管理</title>
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
    <link href="/Public/admin/css/main.css" rel="stylesheet" type="text/css" />
<style>
.dx1{float:left; margin-left: 17px; margin-bottom:10px; }
.dx2{ font-size:16px;  border-bottom:1px solid #CCC; width:100% !important; padding-bottom:8px;}
.dx3{width:120px; margin:5px auto; border-radius: 2px; border: 1px solid #b9c9d6; display:block;}
.dx4{border-bottom:1px solid #eee; padding-top:5px; width:100%;}
</style>
<script type="text/javascript" src="/Public/ht/js/jquery-1.8.3.min.js"></script>
</head>
<body>

<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 产品管理 <span class="c-gray en">&gt;</span> 属性规格管理 <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px" href="javascript:location.replace(location.href);" title="刷新" ><i class="Hui-iconfont">&#xe68f;</i></a></nav>


<div class="page-container">

    <div>
        <span style="color:red"><a href="<?php echo U('set_attr');?>?pid=<?php echo ($pro_id); ?>">设置规格</a></span> &nbsp;&nbsp;&nbsp;&nbsp;
        <span style="color:red"><a href="<?php echo U('pro_guige');?>?pid=<?php echo ($pro_id); ?>">规格管理</a></span>
        <!-- <div class="aaa_pts_4"><a href="<?php echo U('pro_attr');?>?pid=<?php echo ($pro_id); ?>">属性组合管理</a></div> -->
    </div>
    <br>

    <div class="aaa_pts_3">
        <form action="<?php echo U('save_guide');?>" method="post" onsubmit="return ac_from();">
            <ul id="ul" class="aaa_pts_5">
                <li class="product"><div class="d1 dx2">产品信息</div></li>
                <li class="product">
                    <div class="d1">产品名称:</div>
                    <div>
                        <span style="font-weight:bold;"><?php echo ($pro_info["name"]); ?></span>
                    </div>
                </li>
                <li class="product">
                    <div class="d1">产品价格:</div>
                    <div>
                        <span style="font-weight:bold; color:red;">¥<?php echo ($pro_info["price_yh"]); ?>元</span>
                    </div>
                </li>
                <li class="product">
                    <div class="d1">库&nbsp;&nbsp;存:</div>
                    <div>
                        <span style="font-weight:bold; color:red;"><?php echo ($pro_info["num"]); ?></span>
                    </div>
                </li>
                <li class="product"><div class="d1 dx2">属性规格信息</div></li>
                <li class="product"><div style="color:red;font-size:12px;">注：如果已经添加好规格，请不要随意修改，以免已经下单购买的用户所买规格与商品实际规格描述不一致</div></li>
                <li class="product">
                    <button type="button"  id="button5" onclick="chk_info();">＋添加规格</button>
                </li>
                <li id="guige" class="product">
                    <!-- <div class="gg">
                      <div class="d1">规格名：</div>
                      <div>
                        <input class="inp_1" style="width:170px;" name="attr_name" id="attr_name" value="<?php echo ($pro_allinfo["name"]); ?>"/><label style="color:gray;">(比如：颜色)</label>
                      </div>
                      <ul style="clear:both;padding-top:10px;">
                        <li>
                          <div class="d1">规格项：</div>
                          <div id="divs">
                            <div>
                            <input class="inp_1" style="width:80px;" placeholder="规格名称" name="gg_name[]" value="" />
                            <input class="inp_1" style="width:60px;" placeholder="价格" name="gg_price[]" value="" />
                            <input class="inp_1" style="width:60px;" placeholder="库存" name="gg_stock[]" value="" />
                            </div>
                          </div>&nbsp;&nbsp;
                          <div class="img-jian" id="jiangg" onclick="jian(this);">－</div>
                          <div class="img-add" onclick="upadd(this);">＋</div>
                        </li>
                        <li>
                          <button type="button" id="button2" onclick="del_info(this);">－删除规格</button>
                        </li>
                      </ul>
                    </div> -->
                    <!-- <div class="d1">规  格:</div>
                    <div id="divs">
                      <input class="inp_1" style="width:100px;" name="gg_name[]" value="" />
                    </div>&nbsp;&nbsp;
                    <div class="img-jian" id="jiangg" onclick="jian(this);">－</div>
                    <div class="img-add" onclick="upadd(this);">＋</div> -->
                </li>
                <li><input type="submit" name="submit" value="提交" class="aaa_pts_web_3" style="width: 100px;height: 35px;" border="0">
                    <input type="hidden" name="pro_id" value="<?php echo $pro_id; ?>">
                    <input type="hidden" name="set_attrid" id="set_attrid" value="">
                </li>
            </ul>
        </form>

    </div>
</div>


<script>
function chk_info(){
  var checkbox = $("#guige").children().length;
  if (checkbox>=4) {
    alert('每个产品只能添加4种规格属性');
    return false;
  };

  var info = '<div class="gg"><div class="d1">规格名：</div><div><input class="inp_1" style="width:170px;" name="attr_name[]" id="attr_name" value="<?php echo ($pro_allinfo["name"]); ?>"/><label style="color:gray;">(比如：颜色，尺寸。规格项按照‘名称、价格，库存’顺序填写)</label></div><ul style="clear:both;padding-top:10px;"><li><div class="d1">规格项：</div><div id="divs"><div><input class="inp_1" style="width:80px;" placeholder="规格名称" name="gg_name['+checkbox+'][]" value="" /><input class="inp_1" style="width:60px;" placeholder="价格" name="gg_price['+checkbox+'][]" value="<?php echo $pro_info["price_yh"]; ?>" /><input class="inp_1" style="width:60px;" placeholder="库存" name="gg_stock['+checkbox+'][]" value="<?php echo $pro_info["num"]; ?>" /></div></div>&nbsp;&nbsp;<div class="img-jian" id="jiangg" onclick="jian(this);">－</div><div class="img-add" onclick="upadd(this,'+checkbox+');">＋</div></li><li><button type="button" id="button6" onclick="del_info(this);">－删除规格</button></li></ul></div>';
  $('#guige').append(info);
}

function upadd(obj,nums){
  var info = '<label style="float: left;margin-left: 4px;">|</label><div><input class="inp_1" style="width:80px;margin-left:3px;" placeholder="规格名称" name="gg_name['+nums+'][]" value="" /><input class="inp_1" style="width:60px;" placeholder="价格" name="gg_price['+nums+'][]" value="<?php echo $pro_info["price_yh"]; ?>" /><input class="inp_1" style="width:60px;" placeholder="库存" name="gg_stock['+nums+'][]" value="<?php echo $pro_info["num"]; ?>" /></div>';
  $(obj).siblings('#divs').append(info);
}

function jian(obj){
  $(obj).siblings('#divs').children('div:last-child').remove();
}

function del_info(obj){
  $(obj).parents('.gg').remove();
}

function ac_from(){
  //判断栏目名称
  /*var attr_name=document.getElementById('attr_name').value;
  if(attr_name.length<1){
	  alert('请输入属性名称.');
	  return false;
	  }*/

  return true;
}
</script>
</body>
</html>