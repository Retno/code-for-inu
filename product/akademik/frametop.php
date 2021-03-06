<?
/**[N]**
 * JIBAS Road To Community
 * Jaringan Informasi Bersama Antar Sekolah
 * 
 * @version: 2.4.1 (January 7, 2011)
 * @notes: JIBAS Education Community will be managed by Yayasan Indonesia Membaca (http://www.indonesiamembaca.net)
 * 
 * Copyright (C) 2009 PT.Galileo Mitra Solusitama (http://www.galileoms.com)
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 **[N]**/ ?>
<? 
require_once("include/theme.php"); 
require_once("include/errorhandler.php");
require_once("include/sessioninfo.php");
require_once("include/common.php");
require_once("include/config.php");
require_once("include/db_functions.php");
require_once("include/sessioninfo.php");

$menu="";
if (isset($_REQUEST['menu']))
	$menu=$_REQUEST['menu'];
$content="";
if (isset($_REQUEST['content']))
	$content=$_REQUEST['content'];	
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script type="text/javascript" language="JavaScript1.2" src="design/dhtml/stmenu.js"></script>
<script type="text/javascript" language="JavaScript1.2" src="script/ajax.js"></script>
<script type="text/javascript" language="JavaScript1.2" src="script/tools.js"></script>
<script type="text/javascript" language="JavaScript1.2">
function get_fresh(){
	document.location.reload();
}
function chating_euy(){
	newWindow('buletin/chat/chat.php','ChattingYuk',626,565,'resizable=0,scrollbars=0,status=0,toolbar=0');
}
function home(){
	document.location.reload();
	parent.framecenter.location.href="home.php";
}
function akademik(){
	sendRequestText("get_content.php", show_content, "menu=akademik");
	parent.framecenter.location.href="home.php";
}
function buletin(){
	sendRequestText("get_content.php", show_content, "menu=buletin");
	parent.framecenter.location.href="home.php";
}
function pengaturan(){
	sendRequestText("get_content.php", show_content, "menu=pengaturan");
	parent.framecenter.location.href="home.php";
}
function dotnet(){
	sendRequestText("get_content.php", show_content, "menu=dotnet");
	parent.framecenter.location.href="home.php";
}
function logout() {
    if (confirm("Anda yakin akan menutup Aplikasi Manajemen Akademik ini?"))
		document.location.href="logout.php";
}
function show_content(x) {
	document.getElementById("vscroll0").innerHTML = x;
}
function show_wait(areaId) {
	var x = document.getElementById("waitBox").innerHTML;
	document.getElementById(areaId).innerHTML = x;
}
function ganti() {
	var login=document.getElementById('login').value;
	var addr="pengaturan/ganti_password2.php";
	if (login=="LANDLORD" || login=="landlord"){
		alert ('Maaf, Administrator tidak dapat mengganti password !');
		parent.framecenter.location.href="center.php";
	} else {
		newWindow(addr,'GantiPasswordUser','419','200','resizeable=0,scrollbars=0,status=0,toolbar=0');
	}
}
function show_info(){
	document.getElementById('menu').style.display='none';
	document.getElementById('tentang').style.display='';
	parent.content.location.href="jibasinfo.php";
}
function hide_info(){
	document.getElementById('menu').style.display='';
	document.getElementById('tentang').style.display='none';
	parent.content.location.href="referensi.php";
}

</script>
<style type="text/css">
<!--
.style3 {font-size: 10px; font-weight:bold; line-height:10px; }
.style7 {font-size: 13px; font-weight: normal; line-height: 12px; font-family: Arial; color:#FFF; text-decoration:none }
.style9 {color: #FFFFFF; font-weight: bold; font-family: Verdana; font-size: 12px; text-decoration:none }
-->
</style>
</head>
<body style="background-color:#6a6a6a" topmargin="0" leftmargin="0" marginheight="0" marginwidth="0" >
<table id="Table_01" width="100%" border="0" cellpadding="0" cellspacing="0">	
    <tr>
		<td>
			<img src="images/Akademik2_01.png" width="25" height="13" alt=""></td>
		<td width="50%" height="13" valign="bottom" background="images/Akademik2_02.png">
        <!--a class="style9" style="color:#FFFFFF; cursor:pointer" onClick="show_info()" >Tentang JIBAS</a-->		</td>
		<td width="50%" align="right" valign="bottom" background="images/Akademik2_02.png">
          
        </td>
		<td background="images/Akademik2_03.png" width="94" height="13">
   		</td>
		<td>
			<img src="images/Akademik2_04.png" width="10" height="13" alt=""></td>
		<td>
			<img src="images/Akademik2_05.png" width="17" height="13" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/Akademik2_06.png" width="25" height="61" alt=""></td>
		<td width="100%" height="46" colspan="2" background="images/Akademik2_07.png">
        
        <table width="200" border="0" cellspacing="0" cellpadding="0" id="tentang" style="display:none">
          <tr>
            <td align="center"><a href="jibasinfo.php" target="content"><img src="images/jibas_info.png" border="0" /></a><br />
              <span class="style7">Tentang JIBAS</span></td>
            <td align="center"><a href="jibascontact.php" target="content"><img src="images/jibas_contact.png" border="0" /></a><br />
              <span class="style7">Hubungi Kami</span></td>
          </tr>
        </table>
		<!-- Begin Content ================================================================================================-->
		<table border="0" cellpadding="0" cellspacing="0" id="menu">
		  <tr>
		    <td style="padding-right:5px"  valign="top"> <a style="text-decoration:none" href="referensi.php" target="content" onClick="MM_nbGroup('down','group1','referensioff','images/ico/Icon Header/referensi2.png',1)" onMouseOver="MM_nbGroup('over','referensioff','images/ico/Icon Header/referensi2.png','',1)" onMouseOut="MM_nbGroup('out')"><div align="center"> <img src="images/ico/Icon Header/referensi.png" alt="REFERENSI" name="referensioff" width="60" height="35" border="0" id="referensioff" onload="" /><br />
		        <span class="style7">Referensi</span></div></a></td>
		 
		    <td style="padding-right:5px" valign="top">&nbsp;</td>
		
		    <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="guru.php" target="content" onClick="MM_nbGroup('down','group1','guruoff','images/ico/Icon Header/guru2.png',0)" onMouseOver="MM_nbGroup('over','guruoff','images/ico/Icon Header/guru2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/guru.png" alt="GURU &amp; PELAJARAN" name="guruoff" width="60" height="35" border="0" id="guruoff" onload="" /><br />
		        <span class="style7">Guru&nbsp;&amp;<br />Pelajaran</span></a></div></td>
		 
		    <td style="padding-right:5px" valign="top">&nbsp;</td>
		
		    <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="siswa.php" target="content" onClick="MM_nbGroup('down','group1','siswaoff','images/ico/Icon Header/siswa2.png',0)" onMouseOver="MM_nbGroup('over','siswaoff','images/ico/Icon Header/siswa2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/siswa.png" alt="KESISWAAN" name="siswaoff" width="60" height="35" border="0" id="siswaoff" onload="" /><br />
		        <span class="style7">Kesiswaan</span></a></div></td>
		
		    <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="presensi.php" target="content" onClick="MM_nbGroup('down','group1','presensioff','images/ico/Icon Header/presensi2.png',0)" onMouseOver="MM_nbGroup('over','presensioff','images/ico/Icon Header/presensi2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/presensi.png" alt="PRESENSI" name="presensioff" width="60" height="35" border="0" id="presensioff" onload="" /><br />
		        <span class="style7">Presensi</span></a></div></td>
		
		    <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="penilaian.php" target="content" onClick="MM_nbGroup('down','group1','penilaianoff','images/ico/Icon Header/penilaian2.png',0)" onMouseOver="MM_nbGroup('over','penilaianoff','images/ico/Icon Header/penilaian2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/penilaian.png" alt="" name="penilaianoff" width="60" height="35" border="0" onLoad="" /><br />
		      
		        <span class="style7">Penilaian</span></a></div></td>
		    
		   <td style="padding-right:5px" valign="top">  <div align="center"><a style="text-decoration:none" href="kelulusan.php" target="content" class="style3" onClick="MM_nbGroup('down','group1','kenaikan','images/ico/Icon Header/kenaikan2.png',0)" onMouseOver="MM_nbGroup('over','kenaikan','images/ico/Icon Header/kenaikan2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/kenaikan.png" alt="" name="kenaikan" width="60" height="35" border="0" onLoad="" /><br />
		     <span class="style7">Kenaikan&nbsp;&amp;<br />Kelulusan</span></a></div></td>
            
               <td style="padding-right:5px" valign="top">&nbsp;</td>
           
            
		       <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="usermenu.php" target="content"  onClick="MM_nbGroup('down','group1','user','images/ico/Icon Header/pengaturan2.png',0)" onMouseOver="MM_nbGroup('over','user','images/ico/Icon Header/pengaturan2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/pengaturan.png" alt="Manajemen User" name="user" width="60" height="35" border="0" onLoad="" /><br />
	            <span class="style7">Pengaturan</span></a></div></td>
                
                <td style="padding-right:5px" valign="top"> <div align="center"> <a style="text-decoration:none" href="javascript:logout();"  onMouseOver="MM_nbGroup('over','logout','images/ico/Icon Header/logout2.png','',0)" onMouseOut="MM_nbGroup('out')"><img src="images/ico/Icon Header/logout.png" alt="Logout" name="logout" width="60" height="35" border="0" onLoad="" /><br />
	            <span class="style7">Keluar</span></a></div></td>
		  </tr>
		  </table>		</td>
		<td>
			<img src="images/Akademik2_08.png" width="94" height="61" alt=""></td>
		<td>
			<img src="images/Akademik2_09.png" width="10" height="61" alt=""></td>
		<td>
			<img src="images/Akademik2_10.png" width="17" height="61" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/Akademik2_11.png" width="25" height="13" alt=""></td>
		<td width="100%" height="13" colspan="2" background="images/Akademik2_12.png">		</td>
		<td>
			<img src="images/Akademik2_13.png" width="94" height="13" alt=""></td>
		<td>
			<img src="images/Akademik2_14.png" width="10" height="13" alt=""></td>
		<td>
			<img src="images/Akademik2_15.png" width="17" height="13" alt=""></td>
	</tr>
</table>
</body>
</html>