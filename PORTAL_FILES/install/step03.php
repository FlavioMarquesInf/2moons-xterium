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
   <span class="steps" id="active"><?php echo $_language->module['step3']; ?></span>
   <span class="steps"><?php echo $_language->module['step4']; ?></span>
   <span class="steps"><?php echo $_language->module['step5']; ?></span>
   <span class="steps end"><?php echo $_language->module['step6']; ?></span>
   </td>
  </tr>
  <tr id="headline">
   <td colspan="2" id="title"><?php echo $_language->module['set_chmod']; ?></td>
  </tr>
  <tr>
   <td id="content" colspan="2">
   <table border="0" cellpadding="0" cellspacing="0" width="100%">
     <tr align="left" valign="top">
      <td><b><?php echo $_language->module['check_requirements']; ?>:</b></td>
      <td>
      <table align="center" border="0" width="100%">
        <tr>
         <td><?php echo $_language->module['php_version']; ?> &gt;= 5.3.0</td>
         <td align="left"><?php echo phpversion() < '5.3' ? '<b><font color="red">'.$_language->module['no'].'</font></b>' : '<b><font color="green">'.$_language->module['yes'].'</font></b>';?></td>
        </tr>
        <tr>
         <td>&nbsp;</td>
         <td>&nbsp;</td>
        </tr>
        <tr>
         <td>config.sample.php</td>
         <td align="left"><?php
         if (@file_exists('../includes/config.sample.php') &&  @is_writable( '../includes/config.sample.php' )){
           echo '<b><font color="green">'.$_language->module['writeable'].'</font></b>';
         } else if (is_writable( '..' )) {
           echo '<b><font color="green">'.$_language->module['writeable'].'</font></b>';
         } else {
           echo '<b><font color="red">'.$_language->module['unwriteable'].'</font></b><br />
           <small>'.$_language->module['mysql_error'].'</small>';
         } ?></td>
        </tr>
      </table>
      </td>
     </tr>
   </table>
	
   <input type="hidden" name="hp_url" value="<?php echo str_replace('http://','',$_POST['hp_url']); ?>" />
	
   <div align="right"><br /><a href="javascript:document.ws_install.submit()"><img src="images/next.jpg" alt="" /></a></div>
   </td>
  </tr>
