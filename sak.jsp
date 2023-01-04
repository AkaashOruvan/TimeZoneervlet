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
            </style>
</head>
<body>
<%
TimeZone tz = TimeZone.getTimeZone(request.getParameter("timez"));
DateFormat df = new SimpleDateFormat("yyyy-MM-dd  | HH:mm:ss");
df.setTimeZone(tz);
String ap=df.format(new Date());
%>
<main>Time :
 <%= ap %></main>

</body>
</html>