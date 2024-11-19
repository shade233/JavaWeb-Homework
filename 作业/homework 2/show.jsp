<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>希腊字母表</title>
</head>
<body>

<% int s=Integer.parseInt(request.getParameter("number"));
//    out.println("传递过来的值是"+s);
    if (s<5)
    {
%>

<script>document.title = "小写希腊字母表";</script>

<%--小写希腊字母表--%>

<%

    char c=c='\u03B1';
    for(int i=0;i<25;i++)
        out.print((char)(c+i)+" ");
    out.println();

%>

<%
    }
    else
    {
%>

<%--大写希腊字母表--%>
<script>document.title = "大写希腊字母表";</script>

<%
    char c='\u0391';
    for(int i=0;i<25;i++)
        out.print((char)(c+i)+" ");
    out.println();
%>

<%
    }
%>

</body>
</html>
