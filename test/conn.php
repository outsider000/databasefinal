<!--连接数据库-->
<?php
$conn=mysql_connect("localhost","root","mysql");
mysql_select_db("iservice",$conn);
mysql_query("set names utf-8");
?>