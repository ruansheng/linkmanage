<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {
    public function index(){
		$feed = M('feed'); // 实例化User对象
		import('ORG.Util.Page');// 导入分页类
		$table="link_feed feed,link_category category";
		$field="feed.id,feed.title,feed.url,category.cid,category.category,feed.ctime";
		$map['_string']="feed.cid=category.cid";
		
		$count      = $feed->table($table)->where($map)->count();// 查询满足要求的总记录数
		$Page       = new Page($count,25);// 实例化分页类 传入总记录数和每页显示的记录数
		$show       = $Page->show();// 分页显示输出
		 
		//按分页来查询 
		
		$list = $feed->table($table)->field($field)->where($map)->order('feed.ctime desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		foreach($list as $key=>$val){
			$dm=parse_url($val['url']);
			$list[$key]['domain']=$dm['host'];
		}
		/*
		echo "<pre>";
		   print_r($list);
		echo "</pre>";
		*/
		
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->display(); // 输出模板
		
    }
}