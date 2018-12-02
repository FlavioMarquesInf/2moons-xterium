<?php
/*
##########################################################################
#                                                                        #
#           Version 4       /                        /   /               #
#          -----------__---/__---__------__----__---/---/-               #
#           | /| /  /___) /   ) (_ `   /   ) /___) /   /                 #
#          _|/_|/__(___ _(___/_(__)___/___/_(___ _/___/___               #
#                       Free Content / Management System                 #
#                                   /                                    #
#                                                                        #
#                                                                        #
#   Copyright 2005-2011 by webspell.org                                  #
#                                                                        #
#   visit webSPELL.org, webspell.info to get webSPELL for free           #
#   - Script runs under the GNU GENERAL PUBLIC LICENSE                   #
#   - It's NOT allowed to remove this copyright-tag                      #
#   -- http://www.fsf.org/licensing/licenses/gpl.html                    #
#                                                                        #
#   Code based on WebSPELL Clanpackage (Michael Gruber - webspell.at),   #
#   Far Development by Development Team - webspell.org                   #
#                                                                        #
#   visit webspell.org                                                   #
#                                                                        #
##########################################################################
*/
?>

  <tr>
   <td id="step" align="center" colspan="2">
   <span class="steps start"><?php echo $_language->module['step0']; ?></span>
   <span class="steps"><?php echo $_language->module['step1']; ?></span>
   <span class="steps"><?php echo $_language->module['step2']; ?></span>
   <span class="steps"><?php echo $_language->module['step3']; ?></span>
   <span class="steps"><?php echo $_language->module['step4']; ?></span>
   <span class="steps"><?php echo $_language->module['step5']; ?></span>
   <span class="steps end" id="active"><?php echo $_language->module['step6']; ?></span>
   </td>
  </tr>
  <tr id="headline">
   <td colspan="2" id="title"><?php echo $_language->module['finish_install']; ?></td>
  </tr>
  <tr>
   <td id="content" colspan="2">

<?php
define('MODE', 'INSTALL');
define('ROOT_PATH', str_replace('\\', '/', dirname(dirname(__FILE__))) . '/');
set_include_path(ROOT_PATH);
chdir(ROOT_PATH);
require 'includes/common.php';

$info = '';
if($_POST['installtype'] == 'full') {

	$type = '<b>'.$_language->module['install_complete'].'</b>';
	$info = $_language->module['reset_chmod'];

	$host = $_POST['host'];
	$user = $_POST['user'];
	$pwd = $_POST['pwd'];
	$db = $_POST['db'];
	$prefix = $_POST['prefix'];
	$url = $_POST['url'];

	if(!(mb_strlen(trim($host)))) {
		$error=$_language->module['verify_data'];
		die("<b>".$_language->module['error']."<br />".$error."</b><br /><br /><a href='javascript:history.back()'>".$_language->module['back']."</a>");
	}
	if(!(mb_strlen(trim($db)))) {
		$error=$_language->module['verify_data'];
		die("<b>".$_language->module['error']."<br />".$error."</b><br /><br /><a href='javascript:history.back()'>".$_language->module['back']."</a>");
	}
	if(!(mb_strlen(trim($url)))) {
		$error=$_language->module['verify_data'];
		die("<b>".$_language->module['error']."<br />".$error."</b><br /><br /><a href='javascript:history.back()'>".$_language->module['back']."</a>");
	}

	//write _mysql.php
	$database                 = array();
	$database['host']         = $host;
	$database['port']         = "3306";
	$database['user']         = $user;
	$database['userpw']       = $pwd;
	$database['databasename'] = $db;
	$database['tableprefix']  = $prefix;
	$blowfish = substr(str_shuffle('./0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'), 0, 22);
	file_put_contents('includes/config.php', sprintf(file_get_contents('includes/config.sample.php'), $host, "3306", $user, $pwd, $db, $prefix, $blowfish));
	try {
		Database::get();
	}
	catch (Exception $e) {
		unlink('includes/config.php');
	}
				
	
	$db = Database::get();

	$installSQL      = file_get_contents('install/xterium_portal_db.sql');
	preg_match('!\$' . 'Id: install.sql ([0-9]+)!', $installSQL, $match);
	
	try {
		database::get()->query(str_replace(array(
			'%PREFIX%',
            '%URL%'
		), array(
			$prefix,
            $url
		), $installSQL));
	}
				catch (Exception $e) {
					require 'includes/config.php';
					@unlink('includes/config.php');
					$error = $e->getMessage();
					
					echo $error;
					exit;
				}

	/*include("../src/func/filesystem.php");
	$remove_install = @rm_recursive("./");
	if($remove_install) $delete_info = $_language->module['folder_removed'];
	else */

	$delete_info = $_language->module['delete_folder'];
	
}
?>

   <center>
   <?php echo $type; ?><br /><br />
   <?php echo $delete_info; ?><br /><br />
   <?php echo $info; ?><br /><br /><br />
   <a href="../index.php"><b><?php echo $_language->module['view_site']; ?></b></a>
   </center>
   </td>
  </tr>