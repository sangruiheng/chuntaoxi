<?php

namespace Admin\Controller;

use Admin\Model\ThemeModel;
use Admin\Model\ThemerelationModel;
use Think\Controller;

class ThemeController extends PrivilegeController
{

    /*
    *
    * 构造函数，用于导入外部文件和公共方法
    */
    public function _initialize()
    {
        $this->category = M('news_cat');
    }

    /*
    *
    * 获取、查询栏目表新闻分类的数据
    */
    public function index()
    {

        $themeModel = new ThemeModel();

        $id = (int)$_GET['id'];

        //搜索变量
        $theme_name = $this->htmlentities_u8($_GET['theme_name']);
        //===============================
        // 产品列表信息 搜索
        //===============================
        //搜索
        $where = '';
        $theme_name != '' ? $where .= " AND theme_name like '%$theme_name%'" : null;

        define('rows', 20);
        $count = $themeModel->where($where)->count();
        $rows = ceil($count / rows);
        $page = (int)$_GET['page'];
        $page < 0 ? $page = 0 : '';
        $limit = $page * rows;
        $page_index = $this->page_index($count, $rows, $page);
        $theme = $themeModel->where($where)->order('id desc')->select();

        //==========================
        // 将GET到的数据再输出
        //==========================
        $this->assign('id', $id);
        $this->assign('theme_name', $theme_name);
        $this->assign('page', $page);
        //=============
        // 将变量输出
        //=============
        $this->assign('theme', $theme);
        $this->assign('page_index', $page_index);
        $this->display(); // 输出模板

    }

    //********************************
    //说明：优惠券 添加修改页面
    //********************************
    public function add()
    {

        $id = intval($_REQUEST['id']);
        if ($id > 0) {
            $themeModel = new ThemeModel();
            $theme = $themeModel->where('id=' . intval($id))->find();
            //获取限定产品
            if ($theme['proid'] != 'all' && $theme['proid'] != '') {
                $arr = explode(',', trim($theme['proid'], ','));
                foreach ($arr as $v) {
                    $theme['pro_list'][] = M('product')->where('id=' . intval($v))->getField('photo_x');
                }
            }

            $this->assign('voucher', $theme);
        }
        $this->display();
    }




    public function save()
    {
        $id = $_POST['id'];
        $themeModel = new ThemeModel();
        if ($themeModel->create()) {
            if (empty($id)) { //添加
                $themeModel->id = NULL;
                $themeModel->theme_addtime = time();
                $themeModel->proid = trim($_REQUEST['proid'], ',');
                $result = $themeModel->add();
                //上传图片
                if (!empty($_FILES["theme_img"]["tmp_name"])) {
                    //文件上传
                    $info = $this->upload_images($_FILES["theme_img"], array('jpg', 'png', 'jpeg'), 'theme/' . date(Ymd));
                    if (!is_array($info)) {// 上传错误提示错误信息
                        $this->error($info);
                    } else {// 上传成功 获取上传文件信息
                        $themeModel->theme_img = 'UploadFiles/' . $info['savepath'] . $info['savename'];
                        $map['id'] = $result;
                        $themeModel->where($map)->save();
                    }
                }

            } else {  //修改

                $themeModel->proid = trim($_REQUEST['proid'], ',');
                $themeModel->where("id=$id")->save();
                //上传图片
                if (!empty($_FILES["theme_img"]["tmp_name"])) {
                    //删除修改时的文件
                    $theme = $themeModel->where('id=' . $id)->find();
                    $url = "Data/" . $theme['theme_img'];
                    if (file_exists($url)) {
                        @unlink($url);
                    }
                    //文件上传
                    $info = $this->upload_images($_FILES["theme_img"], array('jpg', 'png', 'jpeg'), 'theme/' . date(Ymd));
                    if (!is_array($info)) {// 上传错误提示错误信息
                        $this->error($info);
                    } else {// 上传成功 获取上传文件信息
                        $themeModel->theme_img = 'UploadFiles/' . $info['savepath'] . $info['savename'];
                        $map['id'] = $id;
                        $themeModel->where("id=$id")->save();
                    }
                }
                $result = true;
            }
        }
        if ($result) {
            $this->success('操作成功！', 'index');
            exit();
        } else {
            $this->error('操作失败！');
            exit();
        }
    }


    /*
    *
    * 栏目删除
    */
    public function del()
    {
        //以后删除还要加权限登录判断
        $id = intval($_GET['id']);

        $themeModel = new ThemeModel();
        $theme = $themeModel->find($id);
        $url = "Data/" . $theme['theme_img'];
        if (file_exists($url)) {
            @unlink($url);
        }
        $res = $themeModel->delete($id);
        if ($res) {
            //把对应图片也一起删除
            $this->redirect('index');
        } else {
            $this->error('操作失败.');
        }
    }



    //********************************
    //说明：获取产品列表
    //********************************
    public function get_pro()
    {
        $id = (int)$_GET['id'];

        //搜索变量
        $type = $this->htmlentities_u8($_GET['type']);
        $tuijian = $this->htmlentities_u8($_GET['tuijian']);
        $name = $this->htmlentities_u8($_GET['name']);

        //===========================================
        // 产品列表信息 搜索
        //===========================================
        $where = "1=1 AND del<1";
//		if (intval($_SESSION['admininfo']['qx'])!=4) {
//			$shop_id = intval($_SESSION['admininfo']['shop_id']);
//			if (!$shop_id) {
//				echo "<script>alert('店铺状态异常！');</script>";
//				exit();
//			}
//			$where .=' AND shop_id='.$shop_id;
//		}

        $tuijian !== '' ? $where .= " AND type=$tuijian" : null;
        $name != '' ? $where .= " AND name like '%$name%'" : null;
        define('rows', 20);
        $count = M('product')->where($where)->count();
        $rows = ceil($count / rows);
        $page = (int)$_GET['page'];
        $page < 0 ? $page = 0 : '';
        $limit = $page * rows;
        $page_index = $this->page_index($count, $rows, $page);
        $productlist = M('product')->where($where)->order('addtime desc,id desc')->limit($limit, rows)->select();
        //dump($productlist);exit;
        foreach ($productlist as $k => $v) {
            $productlist[$k]['cat_name'] = M('category')->where('id=' . intval($v['cid']))->getField('name');
        }

        //==========================
        // 将GET到的数据再输出
        //==========================
        $this->assign('id', $id);
        $this->assign('tuijian', $tuijian);
        $this->assign('name', $name);
        $this->assign('type', $type);
        $this->assign('page', $page);
        //=============
        // 将变量输出
        $this->assign('productlist', $productlist);
        $this->assign('page_index', $page_index);
        $this->display();
    }

}