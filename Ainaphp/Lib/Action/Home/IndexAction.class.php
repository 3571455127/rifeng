<?php
/**
 *
 * IndexAction.class.php (前台首页)
 *
 */
if(!defined("Ainaphp")) exit("Access Denied");
class IndexAction extends BaseAction
{
    public function index()
    {
		$this->assign('bcid',0);//顶级栏目
		$this->assign('ishome','home');
        $this->display();
    }
	
	function get_mail($body){
		
	    $model =M('mailbox');
		$count = $model->where('status=1')->count();// 查询满足要求的总记录数
		$Adp_sql = $model->where('status=1')->getField('title',$count+1);
		foreach ($Adp_sql as $value) {
		sendmail($value,"Inquiry Product :guangduan.net", $body);
		}
		
	}
public function upload(){
		//if($_POST['swf_auth_key']!= sysmd5($_POST['PHPSESSID'].$this->userid)) $this->ajaxReturn(0,'1-'.$_POST['PHPSESSID'],0);

		import("@.ORG.UploadFile");
        $upload = new UploadFile();
		//$upload->supportMulti = false;
        //设置上传文件大小
        $upload->maxSize = $this->Config['attach_maxsize'];
		$upload->autoSub = true;
		$upload->subType = 'date';
		$upload->dateFormat = 'Ym';
        //设置上传文件类型
        $upload->allowExts = explode(',', $this->Config['attach_allowext']);
        //设置附件上传目录
        $upload->savePath = UPLOAD_PATH;
		 //设置上传文件规则
        $upload->saveRule = uniqid;


        //删除原图
        $upload->thumbRemoveOrigin = true;
        if (!$upload->upload()) {
			$this->ajaxReturn(0,$upload->getErrorMsg(),0);
        } else {
            //取得成功上传的文件信息
            $uploadList = $upload->getUploadFileInfo();


			if($_REQUEST['addwater']){ //$this->Config['watermark_enable']  $_REQUEST['addwater']
				import("@.ORG.Image");
				Image::watermark($uploadList[0]['savepath'].$uploadList[0]['savename'],'',$this->Config);
			}

			$imagearr = explode(',', 'jpg,gif,png,jpeg,bmp,ttf,tif,doc,docx');
			$data=array();
			$model = M('Attachment');
			//保存当前数据对象
			$data['moduleid'] = $_REQUEST['moduleid'];
			$data['catid'] = 0;
			$data['userid'] = $_REQUEST['userid'];
			$data['filename'] = $uploadList[0]['name'];
			$data['filepath'] = __ROOT__.substr($uploadList[0]['savepath'].strtolower($uploadList[0]['savename']),1);
			$data['filesize'] = $uploadList[0]['size'];
			$data['fileext'] = strtolower($uploadList[0]['extension']);
			$data['isimage'] = in_array($data['fileext'],$imagearr) ? 1 : 0;
			$data['isthumb'] = intval($_REQUEST['isthumb']);
			$data['createtime'] = time();
			$data['uploadip'] = get_client_ip();
//			$aid = $model->add($data);
			$returndata['aid']		= $aid;
			$returndata['filepath'] = $data['filepath'];
			$returndata['fileext']  = $data['fileext'];
			$returndata['isimage']  = $data['isimage'];
			$returndata['filename'] = $data['filename'];
			$returndata['filesize'] = $data['filesize'];
                        return $returndata;
//			$this->ajaxReturn($returndata,L('upload_ok'), '1');
        }
	}
	function message(){
		$mod = M("message");
		//$_POST = get_safe_replace($_POST);
//                print_r($_POST);
                if($_FILES['files']['name']){
   $files = $this->upload();               
$_POST['files'] = $files['filepath'];
                }
            //required=1 field moduleid=7 必填字段
                $fields = M('field')->field('field')->where(array('moduleid'=>7,'required'=>1))->select();
                $fields2 = array();
                foreach($fields as $key=>$val){
                    foreach($val as $k=>$v){
                         $fields2[] = $v;
                    }
                }
                foreach($_POST as $k=>$v){
                    
                    if(in_array($k,$fields2)){
                        if(!$v){
                            $this->error("Error of inquiry information！"); 
                        }
                    }
                }
            //屏蔽关键字
            $shield = M('config')->where(array('lang'=>$_POST['lang'],'varname'=>'shield'))->getField('value');
            $shieldarr = explode(' ',$shield);
            unset($_POST['lang']);
            foreach($shieldarr as $key=>$val){
                   foreach($_POST as $k=>$v){
                       if(stristr(strtolower($v), strtolower($val))) { 
                            $this->error("Error of inquiry information！"); 
                           }
                   }
            } 
                
                
//		print_r($_POST);
//                exit;
		//判断post值为空或空格
//         $t = array_keys($_POST, '');//如果空格不算空，就用这条
//         $t = array_keys(array_map('trim', $_POST), '');//如果空格算空，就用这条
//         if($t) { //有空数据项
//          $this->error("Send failed!"); //值就是为空的项提示错误
//         }
		 
//		$ip = get_client_ip();
//        $ADDRESS=$this->getAddressFromIp($ip);
		
//		if(stristr($this->_POST('message'), 'www.FyLitCl7Pf7ojQdDUOLQOuaxTXbj5iNG.com')) { 
//          $this->error("Error of inquiry information！"); 
//         }
//		 
//		if($ADDRESS=="俄罗斯") { 
//          $this->error("The area is not in the service area！"); 
//        }
		 
//		if(preg_match("/^[0-9-()+(^\s*)|(\s*$)]+$/",$this->_POST('phone'))){    

		
		
	    $body= " IP ADDRESS: ".$ADDRESS."<br>";
		$body.= " USER: ".$this->_POST('name')."<br>";
        $body.= " EMAIL:".$this->_POST('email')."<br>";
        $body.= " PHONE:".$this->_POST('phone')."<br>";
		$body.= " MODEL:".$this->_POST('model')."<br>";
        $body.= " CONTENT:".$this->_POST('message');
        
		$nowtime=time();
		$tc = $nowtime-$_SESSION['time'];
       
		
		if(false!==$mod->create()){
			if($tc<30){
			
			$this->error("Message has been sent, please donot repeat!");
		   }else{
			
			$mod->title ="[".$ADDRESS."]".$this->_POST('message');
			$mod->status = 0;
			$mod->lang = 1;
			$mod->createtime = time();
			$mod->updatetime = time();
			$result = $mod->add();
            if($result) {
				
			$_SESSION['time']=time();
				
	       //sendmail("rason.shen@adwordsfs.com","Inquiry Product : wenyang", $body);
	       //sendmail("jimmy.su@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("adwords@cnwenyang.com","Inquiry Product : wenyang", $body);
		   //sendmail("sienna.lin@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("david.liu@adwordsfs.com","Inquiry Product : wenyang", $body);
		   //sendmail("josie@adwordsfs.com","Inquiry Product : wenyang", $body);
		    $this->get_mail($body);
				
               //$this->success('Sent successfully!','thanks.html');
			 
               redirect('thanks.html', 0, '页面跳转中...');

			  
            }else{
                $this->error('Send failed!');
			}
			}
		}else{
			$this->error("Send failed!");
		}
		
//		}else{    
//         $this->error("The phone is wrong!"); //手机号码格式不对    
//        }
	}
	
	//根据ip地址获取地址信息
function getAddressFromIp($ip){
    $urlTaobao = 'http://ip.taobao.com/service/getIpInfo.php?ip='.$ip;
    $urlSina = 'http://int.dpool.sina.com.cn/iplookup/iplookup.php?format=json&ip='.$ip;
    $json = file_get_contents($urlTaobao);
    $jsonDecode = json_decode($json);
    if($jsonDecode->code==0){//如果取不到就去取新浪的
        $data['country'] = $jsonDecode->data->country;
        $data['province'] = $jsonDecode->data->region;
        $data['city'] = $jsonDecode->data->city;
        $data['isp'] = $jsonDecode->data->isp;
        $IpAddress=$data['country'].$data['province'];
		return  $IpAddress;
    }else{
        $json = file_get_contents($urlSina);
        $jsonDecode = json_decode($json);
        $data['country'] = $jsonDecode->country;
        $data['province'] = $jsonDecode->province;
        $data['city'] = $jsonDecode->city;
        $data['isp'] = $jsonDecode->isp;
        $data['district'] = $jsonDecode->district;
        $IpAddress=$data['country'].$data['province'];
		return  $IpAddress;
    }
}


}
?>
