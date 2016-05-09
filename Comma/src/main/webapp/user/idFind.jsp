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
		var param="name="+encodeURIComponent(name);
		sendMessage("POST", "../idFind.do", param, idfind)
		
	})
	$('#pwdFindBtn').click(function(){		
	var id=$('#id').val();
	if(name.trim()==""){
		$('#id').focus();
		return;
	}
	var param="id="+encodeURIComponent(id);
	sendMessage("POST", "../pwdFind.do", param, pwdfind)	
})
})
function idfind(){
	if(httpRequest.readyState==4){
		if(httpRequest.status==200){				
			$('#idFindPrint').html(httpRequest.responseText);
		}
	}
}
function pwdfind(){
if(httpRequest.readyState==4){
	if(httpRequest.status==200){				
		$('#pwdFindPrint').html(httpRequest.responseText);
	}
}
}
</script>


</head>
<body>
   <center>
     <table style="margin_top:20px;width:450px;background-color: pink ">
       <tr>
         <td>이름입력 : <input type=text name=name id="name" size=15>
             <input type=button value="idfind" id="idFindBtn">
         </td>
          <td>id입력 : <input type=text name=id id="id" size=15>
             <input type=button value="pwdfind" id="pwdFindBtn">
         </td>
       </tr>
       <tr>
         <td id="idFindPrint"></td>
         <td id="pwdFindPrint"></td>
       </tr>
     </table>
   </center>
</body>
</html>