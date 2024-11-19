<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.ArrayList" %>
<%@ page import="pojo.GoodsSingle" %>
<%@ page import="pojo.ShopCar" %>
<!-- 获取ShopCar类实例 -->
<%
    ShopCar myCar=(ShopCar) session.getAttribute("myCar");
    ArrayList<GoodsSingle> buylist=null;
    //获取实例中用来存储购买的商品的集合
    if(myCar!=null) buylist=(ArrayList<GoodsSingle>) myCar.getBuylist();
    double total=0;	//用来存储应付金额
%>

<table border="1" width="550" rules="none" cellspacing="0" cellpadding="0">
    <tr height="50"><td colspan="5" align="center">购买的商品如下</td></tr>
    <tr align="center" height="30" bgcolor="lightgrey">
        <td></td>
        <td width="25%">名称</td>
        <td>价格(元/斤)</td>
        <td>数量</td>
        <td>总价(元)</td>
        <td>移除(-1/次)</td>
    </tr>
    <%	if(buylist==null||buylist.size()==0){ %>
    <tr height="100"><td colspan="5" align="center">您的购物车为空！</td></tr>
    <%
    }
    else{
        for(int i=0;i<buylist.size();i++){
            GoodsSingle single=(GoodsSingle)buylist.get(i);
            String name=single.getName();							//获取商品名称
            double price=single.getPrice();							//获取商品价格
            int num=single.getNum();//获取购买数量
            String timgname=single.getImgname();
            double money=((int)((price*num+0.05)*10))/10d;			//计算当前商品总价，并进行四舍五入
            total+=money;											//计算应付金额
    %>
    <tr align="center" height="50">
        <td>
            <img src= "<%=request.getContextPath()%>/<%=timgname%>" height="160"  width="220" hspace="20" vspace="10">
        </td>
        <td><%=name%></td>
        <td><%=price%></td>
        <td><%=num%></td>
        <td><%=money%></td>
        <td>
            <a href="<%=request.getContextPath()%>/docar?action=remove&id=<%=single.getId() %>">移除</a>
        </td>
    </tr>
    <%
            }
        }
    %>
    <tr height="50" align="center"><td colspan="5">应付金额：<%=total%></td></tr>
    <tr height="50" align="center">
        <td colspan="2"><a href="<%=request.getContextPath()%>/show.jsp">继续购物</a></td>
        <td colspan="3"><a href="<%=request.getContextPath()%>/docar?action=clear">清空购物车</a></td>
    </tr>
</table>