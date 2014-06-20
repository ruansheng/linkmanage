<?php
// 本类由系统自动生成，仅供测试用途
class AddLinkAction extends Action {

	/*
	*收藏链接 接口
	* /mobile.php?m=AddLink&a=addLink&title=千万别错过&url=http://www.qwbcg.com
	*/
    public function addLink(){
		$data['title']=$_GET['title'];
		$data['url']=$_GET['url'];
		$data['ctime']=time();
		$row=D('feed')->add($data);

		if($row){
			$result['status']=0;
			$result['message']="解析成功";
		}else{
			$result['status']=-1;
			$result['message']="解析失败";
		}
			
		exit(json_encode($result));
    }
}