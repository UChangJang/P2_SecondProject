<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
<script type="text/javascript" src="../ajax.js"></script>
<script type="text/javascript">
$(function(){
	
	$('#idFindBtn').click(function(){
		var name=$('#name').val();
		if(name.trim()==""){
			$('#name').focus();
			return;
		}
		var param="name="+encodeURIComponent(dong);
		sendMessage("POST", "idFind.do", param, idfind)
		
	})
})
function idfind(){
	
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){	
			alert(httpRequest.responseText)
			$('#findPrint').html(httpRequest.responseText);
		}
	}
}
</script>


</head>
<body>
   <center>
     <table id="table_content" style="margin_top:20px;width:450px">
       <tr>
         <td>이름입력 : <input type=text name=name id="name" size=15>
             <input type=button value="idfind" id="idFindBtn">
         </td>
          <td>id입력 : <input type=text name=id id="id" size=15>
             <input type=button value="pwdfind" id="pwdFindBtn">
         </td>
       </tr>
       <tr>
         <td id="findPrint"></td>
       </tr>
     </table>
   </center>
</body>
</html>