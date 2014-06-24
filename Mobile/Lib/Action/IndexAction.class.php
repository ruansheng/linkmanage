<?php
// 本类由系统自动生成，仅供测试用途
class IndexAction extends Action {

	/*
	*获取 LinkList接口
	* /mobile.php?m=Index&a=getLinkList&more=gt&loadid=0
	* /mobile.php?m=Index&a=getLinkList&more=lt&loadid=10
	* /mobile.php?m=Index&a=getLinkList&more=lt&loadid=10&cid=1
	*/   
    public function getLinkList(){
    	
    	if(!empty($_GET['more'])&&!empty($_GET['loadid'])){
	    	$cid=empty($_GET['cid'])? 0:$_GET['cid'];
	    	if($cid!=0){
	    		$map['cid']=$_GET['cid'];
	    	}
	    	$map['id']=array($_GET['more'],$_GET['loadid']);
			$list=D('feed')->where($map)->select();
			$result['status']=0;
			$result['data']=$list;
			$result['message']="解析成功";
    	}else{
    		$result['status']=-1;
    		$result['data']=array();
    		$result['message']="参数不全";
    	}
		exit(json_encode($result));
    }
	
}