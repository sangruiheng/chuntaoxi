<?php

namespace Api\Controller;

use Think\Controller;

class IndexController extends PublicController
{
    
    //***************************
    //  首页数据接口
    //***************************
    public function index()
    {
        //如果缓存首页没有数据，那么就读取数据库
        /***********获取首页顶部轮播图************/
        $ggtop = M('guanggao')->order('sort desc,id asc')->field('id,name,photo,type,action')->limit(10)->select();
        foreach ($ggtop as $k => $v) {
            $ggtop[$k]['photo'] = __DATAURL__ . $v['photo'];
            $ggtop[$k]['name'] = urlencode($v['name']);
            $ggtop[$k]['action'] = urlencode($v['action']);
        }
        /***********获取首页顶部轮播图 end************/
        //======================
        //首页 获取logo
        //======================
        $logo = M('program')->where('id=1')->getField('logo');
        if ($logo) {
            $logo = __DATAURL__ . $logo;
        }

        //======================
        //首页 获取
        //======================
        $info = M('web')->where('id=3')->find();
        if ($info['photo']) {
            $info['photo'] = __DATAURL__ . $info['photo'];
        }

        if ($info['ename']) {
            $info['vedio'] = __DATAURL__ . $info['ename'];
        } else {
            $info['vedio'] = __DATAURL__ . $info['linkurl'];
        }


        //======================
        //首页 热推产品4个
        //======================
        $pro = M('indexpro')->where('state=1')->order('sort asc,addtime desc')->select();
        foreach ($pro as $k => $v) {
            $photo = M('product')->where('id=' . intval($v['pro_id']))->getField('photo_d');
            $pro[$k]['cid'] = intval(M('product')->where('id=' . intval($v['pro_id']))->getField('cid'));
            $pro[$k]['photo'] = __DATAURL__ . $photo;
        }

        //======================
        //首页 推荐产品8个
        //======================
        $prolist = M('product')->where('del=0 AND is_down=0 AND type=1')->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->limit(8)->select();

        foreach ($prolist as $k => $v) {
            $prolist[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }


        $uid = intval($_REQUEST['uid']);

        echo json_encode(array('ggtop' => $ggtop, 'logo' => $logo, 'info' => $info, 'pro' => $pro, 'prolist' => $prolist));
        exit();
    }

    //***************************
    //  首页产品 分页
    //***************************
    public function getlist()
    {
        $page = intval($_REQUEST['page']);
        if (!$page) {
            $page = 2;
        }
        $limit = intval($page * 8) - 8;

        $pro_list = M('product')->where('del=0 AND is_down=0 AND type=1')->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot')->limit($limit . ',8')->select();
        foreach ($pro_list as $k => $v) {
            $pro_list[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }

        echo json_encode(array('prolist' => $pro_list));
        exit();
    }

    public function getcode()
    {
        $str = null;
        $strPol = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz";
        $max = strlen($strPol) - 1;

        for ($i = 0; $i < 32; $i++) {
            $str .= $strPol[rand(0, $max)];//rand($min,$max)生成介于min和max两个数之间的一个随机整数
        }

        echo json_encode(array('status' => 'OK', 'code' => $str));
        exit();
    }

    public function test()
    {
        echo __DATA__;
    }

    //获取轮播图
    public function getBanner()
    {
        $ggtop = M('guanggao')->order('sort desc,id asc')->field('id,name,photo,type,action')->limit(10)->select();
        foreach ($ggtop as $k => $v) {
            $ggtop[$k]['photo'] = __DATAURL__ . $v['photo'];
            $ggtop[$k]['name'] = urlencode($v['name']);
            $ggtop[$k]['action'] = urlencode($v['action']);
        }
        echo json_encode(array('code' => 200, 'data' => $ggtop));
        exit();
    }

    //获取首页顶部主题
    public function getTopTheme()
    {
        $themeModel = D('theme');
        $map['theme_position'] = 1;
        $theme = $themeModel->where($map)->select();
        foreach ($theme as &$value) {
            $value['theme_img'] = __DATAURL__ . $value['theme_img'];
        }
        echo json_encode(array('code' => 200, 'data' => $theme));
        exit();
    }

    //根据顶部主题获取商品
    public function getTopThemeProduct()
    {
        $theme_id = intval($_POST['theme_id']);
        if (!$theme_id) {
            echo json_encode(array('status' => 400, 'err' => 'theme_id为空'));
            exit();
        }
        $themeModel = D('theme');
        $productModel = D('product');
        $map['theme_position'] = 1;
        $theme = $themeModel->where($map)->find($theme_id);
        $productIDS = explode(",", $theme['proid']);
        $where['id'] = array('in', $productIDS);
        $product = $productModel->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->select();
        foreach ($product as $k => $v) {
            $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }
        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }


    //获取首页底部主题及商品
    public function getBottomTheme()
    {
        $themeModel = D('theme');
        $productModel = D('product');
        $map['theme_position'] = 2;
        $theme = $themeModel->where($map)->select();
        foreach ($theme as &$value) {
            $value['theme_img'] = __DATAURL__ . $value['theme_img'];
            $productIDS = explode(",", $value['proid']);
            $where['id'] = array('in', $productIDS);
            $value['product'] = $productModel->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->select();
            foreach ($value['product'] as $k => $v) {
                $value['product'][$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
            }
        }
        echo json_encode(array('code' => 200, 'data' => $theme));
        exit();
    }

    //获取首页热门商品
    public function getPagesHotProduct()
    {
        $productModel = D('product');
        $where['is_hot'] = 1;
        $product = $productModel->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->select();
        foreach ($product as $k => $v) {
            $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }
        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }

    //获取热卖套装
    public function getPagesShowProduct()
    {
        $productModel = D('product');
        $where['is_show'] = 1;
        $product = $productModel->order('sort asc,addtime desc')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->select();
        foreach ($product as $k => $v) {
            $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }
        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }


    //猜你喜欢
    public function likeProduct(){
        $productModel = D('product');
        $where['del'] = 0;
        $product = $productModel->order('rand()')->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->page(0,10)->select();
        foreach ($product as $k => $v) {
            $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }
        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }


    //我的收藏
    public function userLikeProduct(){
        $uid = $_REQUEST['uid'];
        if(!$uid){
            echo json_encode(array('code' => 400, 'data' => 'uid为空'));
            exit();
        }
        $productscModel = D('product_sc');
        $productModel = D('product');
        $map['uid'] = $uid;
        $product = '';
        $product_sc = $productscModel->where($map)->getField('pid',true);
        if($product_sc){
            $where['id'] = array('in',$product_sc);
            $product = $productModel->field('id,name,price_yh,price,photo_x,num,is_show,is_hot,shiyong,brand_id,intro')->where($where)->select();
            foreach ($product as $k => $v) {
                $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
            }
        }

        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }

    //获取商品列表
    public function getProductList(){
        $page_id = $_POST['page_id'];
        if(!$page_id){
            $page_id = 1;
        }
        $statr_page = ($page_id-1)*10;
        $page = 10;
        $userKey = $_POST['key'];
        $key = '3er150re9er06tr28er887bg543k543g3y4';
        if (!$userKey || $key != $userKey) {
            echo json_encode(array('status'=>0,'err'=>'key为空或不正确'));
            exit();
        }
        $productModel = D('product');
        $where['del'] = 0;
        $product = $productModel->field('id,name,price,photo_x,intro')->where($where)->limit($statr_page, $page)->select();
        foreach ($product as $k => $v) {
            $product[$k]['photo_x'] = __DATAURL__ . $v['photo_x'];
        }
        echo json_encode(array('code' => 200, 'data' => $product));
        exit();
    }



}