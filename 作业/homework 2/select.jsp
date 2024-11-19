<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body>
<title>作业</title>

<% //Math.random()是 [0,1）之间的随机数
    int i = (int) (Math.random() * 10);
%>

<jsp:forward page="show.jsp">
    <jsp:param name="number" value="<%= i %>"/>
</jsp:forward>


</body>
</html>
