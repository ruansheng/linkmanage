<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {

	/*
	*获取 LinkList接口
	* /mobile.php?m=Index&a=getLinkList&more=gt&loadid=0
	*/
    public function getLinkList(){
		$map['id']=array($_GET['more'],$_GET['loadid']);
		$list=D('feed')->where($map)->select();
		$result['status']=0;
		$result['data']=$list;
		$result['message']="解析成功";
		exit(json_encode($result));
    }
	
	public function index(){
		$feed=new FeedModel();
		$feed->index();
	}
}