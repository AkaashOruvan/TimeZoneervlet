<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DateFormat,java.text.SimpleDateFormat, java.util.Date, java.util.TimeZone, java.util.List, java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

        <style>
            main{
                line-height: 100%;
                vertical-align:bottom;
                text-align: center;
            }
            #a1{
                margin: auto;
                width:350px;
                max-height:360px;
                overflow-y: auto;
            }
        </style>

</head>
<%
List<String> list=new ArrayList<String>();
for (String i : TimeZone.getAvailableIDs()) {
	 list.add('"'+i+'"');
}   
%>
<body>
<h1>	


</h1>
<form action="sak.jsp" method="get">
Time
<main>
            <input type="text" id="in" name="timez" oninput="sub(this)">
            <div id="a1"></div>
            <input type="submit">	
        </main>
</form>

<script type="text/javascript">
var dat=<%=list%>;
function sub(el){
    document.getElementById("a1").innerHTML="";
    dat.forEach(element => {
        if((element.toLowerCase()).includes(el.value.toLowerCase())){
        	console.log(element);
            document.getElementById("a1").innerHTML+="<div onclick='selectval(this)' class='op'>"+element+"</div><br>";
        }
        if(el.value==""){
            document.getElementById("a1").innerHTML="";
        }
    });
}
function selectval(ele){

	document.getElementById("in").value=ele.innerText;
	
}




</script>
</body>

</html>