<?php
/**
 *
 * Posid (推荐位管理)
 *
 */
if(!defined("Ainaphp")) exit("Access Denied");
class EmailAction extends AdminbaseAction {

    function _initialize()
    {
		parent::_initialize();
    }

    function index(){
    
        Vendor('PHPMailer.PHPMailerAutoload');

        if($_POST['email'] && $_POST['emailcontent']){
            $mail = new PHPMailer;

            //$mail->SMTPDebug = 2;                               // Enable verbose debug output

            $mail->isSMTP();                                      // Set mailer to use SMTP
            $mail->Host = 'smtp.qq.com;';  // Specify main and backup SMTP servers
            $mail->SMTPAuth = true;                               // Enable SMTP authentication
            $mail->Username = '820216411@qq.com';                 // SMTP username
            $mail->Password = 'uwlmoxwhhjhsbbid';                           // SMTP password
            $mail->SMTPSecure = 'tls';                            // Enable TLS encryption, `ssl` also accepted
            $mail->Port = 587;                                    // TCP port to connect to

            $mail->setFrom('820216411@qq.com', 'Service');
            $mail->addAddress($_POST['email'], 'custom');     // Add a recipient
            //$mail->addAddress('ellen@example.com');               // Name is optional
            //$mail->addReplyTo('info@example.com', 'Information');
            //$mail->addCC('cc@example.com');
            //$mail->addBCC('bcc@example.com');

            //$mail->addAttachment('/var/tmp/file.tar.gz');         // Add attachments
            //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    // Optional name
            $mail->isHTML(true);                                  // Set email format to HTML

            $mail->Subject = 'Reply';
            $mail->Body    = $_POST["emailcontent"];
            //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

            if(!$mail->send()) {
                echo 'Message could not be sent.';
                echo 'Mailer Error: ' . $mail->ErrorInfo;
            } else {
                //echo 'Message has been sent';
                $this->success("回复成功");
            }

        } else {
            $this->error("提交数据有误");
        }

    }


}
?>
