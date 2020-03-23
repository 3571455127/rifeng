<?php
/**
 *
 * Posid (推荐位管理)
 *
 */
if(!defined("Ainaphp")) exit("Access Denied");
class RobotsAction extends AdminbaseAction {

    public function index(){
        $handle = fopen("./robots.txt" ,"r");
        $robotsinfo= fread($handle,filesize ("./robots.txt")) ;
        fclose($handle);
        $this->assign('robotsinfo',$robotsinfo);
        $this->display();
    }

    public function add(){
        
        $content = $_POST['robotscontent'];
        $handle = fopen("./robots.txt" ,"w");

        if (fwrite($handle, $content) === FALSE) {
			$this->error(L('do_error'));
            exit;
        } else {
            fclose($handle);
			$this->success(L('do_ok'));
        } 
    }

}
?>

