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
require_once('../include/errorhandler.php');
require_once('../include/sessioninfo.php');
require_once('../include/common.php');
require_once('../include/config.php');
require_once('../include/db_functions.php');
require_once('../library/departemen.php');
require_once('../cek.php');

if (isset($_REQUEST['departemen']))
	$departemen = $_REQUEST['departemen'];

if (isset($_REQUEST['proses'])) 
	$proses = $_REQUEST['proses'];
	
if (isset($_REQUEST['kelompok']))
	$kelompok = $_REQUEST['kelompok'];

$urut = "nama";	
if (isset($_REQUEST['urut']))
	$urut = $_REQUEST['urut'];	

$urutan = "ASC";	
if (isset($_REQUEST['urutan']))
	$urutan = $_REQUEST['urutan'];

$varbaris=20;
if (isset($_REQUEST['varbaris']))
	$varbaris = $_REQUEST['varbaris'];
	
$page=0;
if (isset($_REQUEST['page']))
	$page = $_REQUEST['page'];

$hal=0;
if (isset($_REQUEST['hal']))
	$hal = $_REQUEST['hal'];
	
$op = $_REQUEST['op'];
if ($op == "dw8dxn8w9ms8zs22") {
	OpenDb();
	$sql = "UPDATE calonsiswa SET aktif = $_REQUEST[newaktif] WHERE replid = $_REQUEST[replid] ";
	QueryDb($sql);
	CloseDb();
} else if ($op == "xm8r389xemx23xb2378e23") {
	OpenDb();
	$sql = "DELETE FROM calonsiswa WHERE replid = $_REQUEST[replid]"; 	
	QueryDb($sql);
	CloseDb();
	$page=0;
	$hal=0;
	?>
    <script>
    	refresh_add();
    </script> 
	<?
}	

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<link rel="stylesheet" type="text/css" href="../style/style.css">
<link rel="stylesheet" type="text/css" href="../style/tooltips.css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Pendataan Calon Siswa</title>
<script language="JavaScript" src="../script/tooltips.js"></script>
<script language="javascript" src="../script/tables.js"></script>
<script language="javascript" src="../script/tables.js"></script>
<script language="javascript" src="../script/tools.js"></script>
<script language="javascript">

function refresh() {		
	var departemen = document.getElementById('departemen').value;	
	var proses = document.getElementById('proses').value;	
	var kelompok = document.getElementById('kelompok').value;
	
	document.location.href = "calon_content.php?proses="+proses+"&kelompok="+kelompok+"&departemen="+departemen;
}

function refresh_add() {	
	var urut = document.getElementById('urut').value;
	var urutan = document.getElementById('urutan').value;
	var departemen = document.getElementById('departemen').value;	
	var proses = document.getElementById('proses').value;	
	var kelompok = document.getElementById('kelompok').value;
	
	document.location.href = "calon_content.php?urut="+urut+"&urutan="+urutan+"&proses="+proses+"&kelompok="+kelompok+"&departemen="+departemen+"&page=<?=$page?>&hal=<?=$hal?>&varbaris=<?=$varbaris?>";
}

function tambah() {
	var departemen = document.getElementById('departemen').value;
	var proses = document.getElementById('proses').value;
	var kelompok = document.getElementById('kelompok').value;
	newWindow('calon_add.php?departemen='+departemen+'&proses='+proses+'&kelompok='+kelompok, 'TambahCalonSiswa','825','650','resizable=1,scrollbars=1,status=0,toolbar=0')
}

function edit(replid){
	newWindow('calon_edit.php?replid='+replid,'UbahPendataanCalonSiswa','825','650','resizable=1,scrollbars=1,status=0,toolbar=0');
}

function setaktif(replid, aktif) {
	var msg;
	var newaktif;
	var urut = document.getElementById('urut').value;
	var urutan = document.getElementById('urutan').value;
	var departemen = document.getElementById('departemen').value;	
	var proses = document.getElementById('proses').value;	
	var kelompok = document.getElementById('kelompok').value;
	
	if (aktif == 1) {
		msg = "Apakah anda yakin akan mengubah calon siswa ini menjadi TIDAK AKTIF?";
		newaktif = 0;
	} else	{	
		
		msg = "Apakah anda yakin akan mengubah calonsiswa ini menjadi AKTIF?";
		newaktif = 1;
	}
	
	if (confirm(msg))  {
		document.location.href = "calon_content.php?op=dw8dxn8w9ms8zs22&replid="+replid+"&newaktif="+newaktif+"&departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok+"&urut="+urut+"&urutan="+urutan+"&page=<?=$page?>&hal=<?=$hal?>&varbaris=<?=$varbaris?>";
		parent.header.location.href = "calon_header.php?departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok;
	}
		
}

function hapus(replid) {
	var urut = document.getElementById('urut').value;
	var urutan = document.getElementById('urutan').value;
	var departemen = document.getElementById('departemen').value;
	var proses = document.getElementById('proses').value;	
	var kelompok = document.getElementById('kelompok').value;
	
	if (confirm("Apakah anda yakin akan menghapus calon siswa ini?"))
		document.location.href = "calon_content.php?op=xm8r389xemx23xb2378e23&replid="+replid+"&departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok+"&urut="+urut+"&urutan="+urutan+"&page=<?=$page?>&hal=<?=$hal?>&varbaris=<?=$varbaris?>";
}

function cetak(urut, urutan) {
	var departemen = document.getElementById('departemen').value;
	var proses = document.getElementById('proses').value;	
	var kelompok = document.getElementById('kelompok').value;
	var total=document.getElementById("total").value;
	
	newWindow('calon_cetak.php?departemen='+departemen+'&proses='+proses+'&kelompok='+kelompok+'&urut='+urut+'&urutan='+urutan+'&varbaris=<?=$varbaris?>&page=<?=$page?>&total='+total, 'CetakCalonSiswa','790','650','resizable=1,scrollbars=1,status=0,toolbar=0')	
}

function cetak_excel(urut, urutan) {	
	var departemen = document.getElementById('departemen').value;	
	var proses = document.getElementById('proses').value;
	var kelompok = document.getElementById('kelompok').value;
	
	newWindow('calon_cetak_excel.php?departemen='+departemen+'&proses='+proses+'&kelompok='+kelompok+'&urut='+urut+'&urutan='+urutan, 'CetakCalonSiswaFormatExcel','790','650','resizable=1,scrollbars=1,status=0,toolbar=0')
}

function tampil(replid) {
	newWindow('../library/detail_calon.php?replid='+replid, 'DetailCalonSiswa'+replid,'790','610','resizable=1,scrollbars=1,status=0,toolbar=0')
}

function cetak_detail(replid) {
	newWindow('calon_cetak_detail.php?replid='+replid, 'CetakDetailCalonSiswa','790','650','resizable=1,scrollbars=1,status=0,toolbar=0')
}

function change_urut(urut,urutan) {			
	var kelompok = document.getElementById("kelompok").value;
	var proses = document.getElementById("proses").value;
	var departemen = document.getElementById("departemen").value;	
	var varbaris=document.getElementById("varbaris").value;
	
	if (urutan =="ASC"){
		urutan="DESC"
	} else {
		urutan="ASC"
	}
	
	document.location.href = "calon_content.php?urutan="+urutan+"&urut="+urut+"&proses="+proses+"&kelompok="+kelompok+"&departemen="+departemen+"&page=<?=$page?>&hal=<?=$hal?>&varbaris="+varbaris;

}

function refresh_simpan(dep,pro,kel) {	
	parent.header.location.href = "calon_header.php?departemen="+dep+"&proses="+pro+"&kelompok="+kel;
	document.location.href = "calon_content.php?departemen="+dep+"&proses="+pro+"&kelompok="+kel;
	
}

function change_page(page) {
	var kelompok = document.getElementById("kelompok").value;
	var proses = document.getElementById("proses").value;
	var departemen = document.getElementById("departemen").value;
	var varbaris=document.getElementById("varbaris").value;
		
	document.location.href = "calon_content.php?departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok+"&page="+page+"&urut=<?=$urut?>&urutan=<?=$urutan?>&varbaris="+varbaris+"&hal="+page;
}

function change_hal() {
	var departemen = document.getElementById("departemen").value;
	var kelompok = document.getElementById("kelompok").value;
	var proses = document.getElementById("proses").value;
	var hal = document.getElementById("hal").value;
	var varbaris=document.getElementById("varbaris").value;
	
	document.location.href="calon_content.php?departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok+"&page="+hal+"&hal="+hal+"&urut=<?=$urut?>&urutan=<?=$urutan?>&varbaris="+varbaris;
}

function change_baris() {
	var departemen = document.getElementById("departemen").value;
	var kelompok = document.getElementById("kelompok").value;
	var proses = document.getElementById("proses").value;
	var varbaris=document.getElementById("varbaris").value;
	
	document.location.href="calon_content.php?departemen="+departemen+"&proses="+proses+"&kelompok="+kelompok+"&urut=<?=$urut?>&urutan=<?=$urutan?>&varbaris="+varbaris;
}
</script>

</head>

<body topmargin="0" leftmargin="0">
<input type="hidden" name="departemen" id="departemen" value="<?=$departemen ?>" />
<input type="hidden" name="urut" id="urut" value="<?=$urut ?>" />
<input type="hidden" name="urutan" id="urutan" value="<?=$urutan ?>" />
<input type="hidden" name="proses" id="proses" value="<?=$proses ?>" />
<input type="hidden" name="kelompok" id="kelompok" value="<?=$kelompok ?>" />

<table border="0" width="100%" align="center" background="../images/b_calon.png" style="background-repeat:no-repeat;">
<!-- TABLE CENTER -->
<tr>
	<td align="right" >
<?	OpenDb();
	$sql_tot = "SELECT nopendaftaran,nama,asalsekolah,tmplahir,DAY(tgllahir),MONTH(tgllahir),YEAR(tgllahir),". 
		   "c.aktif,c.replid FROM calonsiswa c, kelompokcalonsiswa k, prosespenerimaansiswa p ".
		   "WHERE c.idproses = $proses AND c.idkelompok = $kelompok AND k.idproses = p.replid ".
		   "AND c.idproses = p.replid AND c.idkelompok = k.replid ORDER BY $urut $urutan ";
	
	$result_tot = QueryDb($sql_tot);
	$total=ceil(mysql_num_rows($result_tot)/(int)$varbaris);
	$jumlah = mysql_num_rows($result_tot);
	$akhir = ceil($jumlah/5)*5;
	
	$sql = "SELECT nopendaftaran,nama,asalsekolah,tmplahir,DAY(tgllahir),MONTH(tgllahir),YEAR(tgllahir),". 
		   "c.aktif,c.replid, c.replidsiswa FROM calonsiswa c, kelompokcalonsiswa k, prosespenerimaansiswa p ".
		   "WHERE c.idproses = $proses AND c.idkelompok = $kelompok AND k.idproses = p.replid ".
		   "AND c.idproses = p.replid AND c.idkelompok = k.replid ORDER BY $urut $urutan ".
		   "LIMIT ".(int)$page*(int)$varbaris.",$varbaris";
	
	$result = QueryDb($sql);
	CloseDb();      
	
	if (@mysql_num_rows($result)>0){ 
		OpenDb();
		$sql1 = "SELECT COUNT(c.replid) AS isi FROM calonsiswa c WHERE c.idkelompok = $kelompok AND c.idproses = $proses AND c.aktif = 1";
		
		$sql2 = "SELECT kapasitas, keterangan FROM kelompokcalonsiswa k WHERE k.idproses = $proses AND k.replid = $kelompok";
		$result1 = QueryDb($sql1);
		$result2 = QueryDb($sql2);
		CloseDb();
		$row1 = @mysql_fetch_array($result1);
		$row2 = @mysql_fetch_array($result2);
		$kapasitas = $row2['kapasitas'];
		$isi = $row1['isi'];
		
	?>
    <input type="hidden" name="total" id="total" value="<?=$total?>"/>
    <table width="100%" border="0" align="center">
  	<tr>
  		<td width="45%" valign="top" align="right">
  		<strong>Keterangan</strong>
        </td>
    	<td width="*" align="right">
    	<textarea name="keterangan" id="keterangan" rows="2" cols="80" readonly class="disabled"><?=$row2['keterangan'] ?>
    	</textarea>
        <!--<input type="text" id="keterangan" name="keterangan" disabled="disabled" class="disabled" value=<?=$row1['keterangan']?>  size="100"/>-->
        </td>
   	</tr>
	<tr>
    	<td colspan="2" align="right" valign="bottom">
        <br />

        
        <a href="#" onClick="refresh()"><img src="../images/ico/refresh.png" border="0" onMouseOver="showhint('Refresh!', this, event, '50px')"/>&nbsp;Refresh</a>&nbsp;&nbsp; 		
        <a href="#" onClick="cetak_excel('<?=$urut?>','<?=$urutan?>')"><img src="../images/ico/excel.png" border="0" onMouseOver="showhint('Cetak dalam format Excel!', this, event, '80px')"/>&nbsp;Cetak Excel</a>&nbsp;&nbsp;
        <a href="JavaScript:cetak('<?=$urut?>','<?=$urutan?>')"><img src="../images/ico/print.png" border="0" onMouseOver="showhint('Cetak!', this, event, '50px')"/>&nbsp;Cetak</a>&nbsp;&nbsp;
	<?  if ($kapasitas > $isi) { ?>
      <a href="JavaScript:tambah()"><img src="../images/ico/tambah.png" border="0" onMouseOver="showhint('Tambah Calon Siswa!', this, event, '50px')"/>&nbsp;Tambah Calon Siswa</a>
    <?	} ?>
    	</td>
  	</tr>
	</table>   	
	<br />
	<table border="1" width="100%" id="table" class="tab" align="center" style="border-collapse:collapse" bordercolor="#000000">
	<tr class="header" height="30" align="center">		
		<td width="4%">No</td>
		<td width="15%" onMouseOver="background='../style/formbg2agreen.gif';height=30;" onMouseOut="background='../style/formbg2.gif';height=30;" background="../style/formbg2.gif" onClick="change_urut('nopendaftaran','<?=$urutan?>')" style="cursor:pointer;">No Pendaftaran <?=change_urut('nopendaftaran',$urut,$urutan)?></td>
		<td width="*" onMouseOver="background='../style/formbg2agreen.gif';height=30;" onMouseOut="background='../style/formbg2.gif';height=30;" background="../style/formbg2.gif" onClick="change_urut('nama','<?=$urutan?>')" style="cursor:pointer;">Nama <?=change_urut('nama',$urut,$urutan)?></td>
        <td width="15%" onMouseOver="background='../style/formbg2agreen.gif';height=30;" onMouseOut="background='../style/formbg2.gif';height=30;" background="../style/formbg2.gif" onClick="change_urut('asalsekolah','<?=$urutan?>')" style="cursor:pointer;">Asal Sekolah <?=change_urut('asalsekolah',$urut,$urutan)?></td>
        <td width="20%" onMouseOver="background='../style/formbg2agreen.gif';height=30;" onMouseOut="background='../style/formbg2.gif';height=30;" background="../style/formbg2.gif" onClick="change_urut('tgllahir','<?=$urutan?>')" style="cursor:pointer;">Tempat Tanggal Lahir <?=change_urut('tgllahir',$urut,$urutan)?></td>
		<td width="8%" onMouseOver="background='../style/formbg2agreen.gif';height=30;" onMouseOut="background='../style/formbg2.gif';height=30;" background="../style/formbg2.gif" onClick="change_urut('aktif','<?=$urutan?>')" style="cursor:pointer;">Status <?=change_urut('aktif',$urut,$urutan)?></td>
	    <td width="15%">&nbsp;</td>
		</tr>
		<? 
		if ($page==0){
			$cnt = 1;
		}else{ 
			$cnt = (int)$page*(int)$varbaris+1;
		}
		while ($row = @mysql_fetch_row($result)) {
			$siswa = "";
			$pjg = "80px";
			if ($row[9] <> 0) {
				OpenDb();
				//$sql3 = "SELECT s.nis, k.kelas, t.tahunajaran, i.tingkat, a.angkatan FROM jbsakad.siswa s, jbsakad.kelas k, jbsakad.tahunajaran t, jbsakad.angkatan a, jbsakad.tingkat i WHERE s.idangkatan = a.replid AND s.idkelas = k.replid AND t.replid = k.idtahunajaran AND k.idtingkat = i.replid AND s.replid = $row[9]";
				$sql3 = "SELECT nis FROM jbsakad.siswa WHERE replid = $row[9]";
				$result3 = QueryDb($sql3);
				CloseDb();
				$row3 = @mysql_fetch_array($result3);
				$siswa = "<br>NIS Siswa: <b>".$row3['nis']."</b>";
				$pjg = "125px";
			}
		?>	
		<tr>        			
			<td height="25" align="center"><?=$cnt?></td>
			<td height="25" align="center"><?=$row[0]?></td>
  			<td height="25" align="left"><?=$row[1]?></td>
            <td height="25" align="left"><?=$row[2]?></td>
            <td height="25" align="left"><?=$row[3].', '.$row[4].' '.namabulan($row[5]).' '.$row[6]?></td>
            <td height="25" align="center">
<?		if (SI_USER_LEVEL() == $SI_USER_STAFF) {  
			
			if ($row[7] == 1) { ?> 
            	<img src="../images/ico/aktif.png" border="0" onMouseOver="showhint('Status Aktif<?=$siswa?>', this, event, '<?=$pjg?>')"/>
<?			} else { ?>                
				<img src="../images/ico/nonaktif.png" border="0" onMouseOver="showhint('Status Tidak Aktif<?=$siswa?>', this, event, '<?=$pjg?>')"/>
<?			}
		} else { 
			if ($row[7] == 1) { 
			?>
				<a href="JavaScript:setaktif(<?=$row[8] ?>, <?=$row[7] ?>)"><img src="../images/ico/aktif.png" border="0" onMouseOver="showhint('Status Aktif<?=$siswa?>', this, event, '<?=$pjg?>')" /></a>
<?			} else { 
				if ($kapasitas > $isi) {?>
				<a href="JavaScript:setaktif(<?=$row[8] ?>, <?=$row[7] ?>)"><img src="../images/ico/nonaktif.png" border="0" onMouseOver="showhint('Status Tidak Aktif<?=$siswa?>', this, event, '<?=$pjg?>')"/></a>
           	<?  } else { ?>
                <img src="../images/ico/nonaktif.png" border="0" onMouseOver="showhint('Status Calon siswa tidak dapat diaktifkan karena kapasitas kelompok tidak mencukupi<?=$siswa?>', this, event, '165px')"/>
<?				}
			} //end if
		} //end if ?>        	</td>
            <td height="25" align="center">
			           
            <a href="JavaScript:tampil(<?=$row[8] ?>)"><img src="../images/ico/lihat.png" border="0" onMouseOver="showhint('Detail Data Calon Siswa!', this, event, '80px')"/></a>&nbsp;
            <a href="JavaScript:cetak_detail(<?=$row[8] ?>)"><img src="../images/ico/print.png" border="0" onMouseOver="showhint('Cetak Detail Data Calon Siswa!', this, event, '110px')"/></a>&nbsp; 
            <a href="JavaScript:edit(<?=$row[8] ?>)" ><img src="../images/ico/ubah.png" border="0" onMouseOver="showhint('Ubah Calon Siswa!', this, event, '80px')"/></a>&nbsp;
     <? if (SI_USER_LEVEL() != $SI_USER_STAFF) {  ?>            
            <a href="JavaScript:hapus(<?=$row[8] ?>)" ><img src="../images/ico/hapus.png" border="0" onMouseOver="showhint('Hapus Data Calon Siswa!', this, event, '80px')"/></a>
<?		} ?>
			</td>
        </tr>
<?		$cnt++; } ?>	
		 
    <!-- END TABLE CONTENT -->
    </table>
   
    <script language='JavaScript'>
	    Tables('table', 1, 0);
    </script>
    
    <?	if ($page==0){ 
		$disback="style='visibility:hidden;'";
		$disnext="style='visibility:visible;'";
		}
		if ($page<$total && $page>0){
		$disback="style='visibility:visible;'";
		$disnext="style='visibility:visible;'";
		}
		if ($page==$total-1 && $page>0){
		$disback="style='visibility:visible;'";
		$disnext="style='visibility:hidden;'";
		}
		if ($page==$total-1 && $page==0){
		$disback="style='visibility:hidden;'";
		$disnext="style='visibility:hidden;'";
		}
	?>
   	</td>
</tr> 
<tr>
    <td>
    <table border="0"width="100%" align="center" cellpadding="0" cellspacing="0">	
    <tr>
       	<td width="30%" align="left">Halaman
        <select name="hal" id="hal" onChange="change_hal()">
        <?	for ($m=0; $m<$total; $m++) {?>
             <option value="<?=$m ?>" <?=IntIsSelected($hal,$m) ?>><?=$m+1 ?></option>
        <? } ?>
     	</select>
	  	dari <?=$total?> halaman
		
		<? 
     // Navigasi halaman berikutnya dan sebelumnya
        ?>
        </td>
    	<!--td align="center">
    <input <?=$disback?> type="button" class="but" name="back" value=" << " onClick="change_page('<?=(int)$page-1?>')" onMouseOver="showhint('Sebelumnya', this, event, '75px')">
		<?
		/*for($a=0;$a<$total;$a++){
			if ($page==$a){
				echo "<font face='verdana' color='red'><strong>".($a+1)."</strong></font> "; 
			} else { 
				echo "<a href='#' onClick=\"change_page('".$a."')\">".($a+1)."</a> "; 
			}
				 
	    }*/
		?>
	     <input <?=$disnext?> type="button" class="but" name="next" value=" >> " onClick="change_page('<?=(int)$page+1?>')" onMouseOver="showhint('Berikutnya', this, event, '75px')">
 		</td-->
        <td width="30%" align="right">Jumlah baris per halaman
      	<select name="varbaris" id="varbaris" onChange="change_baris()">
        <? 	for ($m=10; $m <= 100; $m=$m+10) { ?>
        	<option value="<?=$m ?>" <?=IntIsSelected($varbaris,$m) ?>><?=$m ?></option>
        <? 	} ?>
       
      	</select></td>
    </tr>
    </table>	
    </td></tr>
<!-- END TABLE CENTER -->    
</table>
<?	} else { ?>

<table width="100%" border="0" align="center">          
<tr>
	<td align="center" valign="middle" height="300">
    	<font size = "2" color ="red"><b>Tidak ditemukan adanya data. 
       	 <? //if (SI_USER_LEVEL() != $SI_USER_STAFF) { ?>
        <br />Klik &nbsp;<a href="JavaScript:tambah()" ><font size = "2" color ="green">di sini</font></a>&nbsp;untuk mengisi data baru. 
        <? //} ?>        
        </b></font>
	</td>
</tr>
</table>  
<? } ?> 
</td></tr>
<!-- END TABLE BACKGROUND IMAGE -->
</table>    
</body>
</html>