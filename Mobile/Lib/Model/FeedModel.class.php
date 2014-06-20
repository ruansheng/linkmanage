<?php
class FeedModel extends Model{
	public function index(){
		$list=D('feed')->select();
		//dump($list);
		$allfield=D('feed')->getDbFields();
		//dump($allfield);
		$pk =D('feed')->getPk();
		echo $pk;
	}
}
?>