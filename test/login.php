<!--µÇÂ¼½çÃæ-->

<html>
<head>

<title>login</title>
</head>

<body>

<table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td align="center" valign="middle">
<form action="login_ok.php" method="post" >
<table width="500" border="0" cellpadding="3" cellspacing="1" bgcolor="#333333">
      <tr>
        <td height="57" colspan="2" bgcolor="#1E90FF"><p style="padding-left:25px; font-size:15px; font-weight:bold; color:#F0FFFF">login page</p></td>
      </tr>

<tr>
        
      <tr>
        <td width="22%" height="26" align="center" class="a1">user name</td>
        <td width="78%" bgcolor="#FFFFFF">
          <input name="user" type="post" class="a2" id="user" size="10">        </td>
      </tr>
      <tr>
        <td width="22%" height="26" align="center" class="a1">password</td>
        <td width="78%" bgcolor="#FFFFFF"><em><strong></strong></em>
          <input name="pwd" type="password" class="a2" id="pwd" size="10">        </td>
      </tr>
      <tr>
        <td width="22%" height="26" align="center" class="a1">identity</td>
        <td width="78%" bgcolor="#FFFFFF">
          <select name="identity">
<option value="admin">Administer</option>
<option value="user">user</option>
</select>     </td>
      </tr>

      

      <tr>
        <td height="26" colspan="2" align="center" bgcolor="#FFFFFF">
          <label><input type="submit" value="login" target="_blank"></label>
          </form>
          <label>
          <a href="register.html"><input type="button" value="create new account" target="_blank"></a></label>
          <label><a href="javascript:window.opener=null;window.open('','_self');window.close();"><input type="button" value="exit" target="_blank" src="exit.html"></a></label>
        </td>
        
      </tr>
    </table>

      
</body>
</html>
<style type="text/css">
.a1 {
	font-size: 12px;
	color:#FFFFFF;
	background-color:#9932CC

}
.a2{
background-color:#E8E8E8;
BORDER: #999999 1px solid;
}
body {
	background-color: #FAFAD2;
	margin: 0px;


}
body,td,th {
	font-size: 12px;
}
</style>
