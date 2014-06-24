<?php
// 本类由系统自动生成，仅供测试用途
class PlugInAction extends Action {

	/*
	 * 频道分类     GET接口
	* /mobile.php?m=PlugIn&a=getCategory
	*/
	public function getCategory(){
		$list=D('category')->select();
		$result['status']=0;
		$result['data']=$list;
		$result['message']="解析成功";
			
		exit(json_encode($result));
	}
	
	/*
	* 收藏链接   POST接口    
	* /mobile.php?m=PlugIn&a=addLink&title=千万别错过&url=http://www.qwbcg.com&cid=1
	*/
    public function addLink(){
    	if(!empty($_GET['title'])&&!empty($_GET['url'])&&!empty($_GET['cid'])){
			$data['title']=$_GET['title'];
			$data['url']=$_GET['url'];
			$data['cid']=$_GET['cid'];
			$data['ctime']=time();
			$row=D('feed')->add($data);
	
			if($row){
				$result['status']=0;
				$result['message']="解析成功";
			}else{
				$result['status']=-2;
				$result['message']="解析失败";
			}
    	}else{
    		$result['status']=-1;
    		$result['message']="参数为空";
    	}	
		exit(json_encode($result));
    }
}