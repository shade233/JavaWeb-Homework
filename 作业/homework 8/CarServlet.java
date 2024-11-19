package shade;

import pojo.GoodsSingle;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;


public final class CarServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html;charset=utf-8");

        ServletContext application = getServletContext();
        HttpSession session = request.getSession();

        pojo.ShopCar myCar = null;
        synchronized (session) {
            // 此处可能会有类型转换异常的风险
            myCar = (pojo.ShopCar) session.getAttribute("myCar");
            if (myCar == null) {
                myCar = new pojo.ShopCar();
                session.setAttribute("myCar", myCar);
            }
        }

        String action = request.getParameter("action");
        if (action == null)
            action = "";
        switch (action) {
            case "buy" -> {
                // 此处可能会有类型转换异常的风险
                ArrayList goodslist = (ArrayList) application.getAttribute("goodslist");
                int id = Integer.parseInt(request.getParameter("id"));
                // 此处会有id不存在(为null)的风险
                GoodsSingle single = (GoodsSingle) goodslist.get(id);
                myCar.addItem(single);        //调用ShopCar类中的addItem()方法添加商品
                response.sendRedirect("show.jsp");            //购买商品
            }
            case "remove" -> {
                //移除商品
                int id = Integer.parseInt(request.getParameter("id"));        //获取商品id
                // 此处会有id不存在(为null)的风险
                myCar.removeItem(id);        //调用ShopCar类中的removeItem()方法移除商品
                response.sendRedirect("shopcar.jsp");
            }
            case "clear" -> {
                myCar.clearCar();                //调用ShopCar类中的clearCar()方法清空购物车
                response.sendRedirect("shopcar.jsp");                            //清空购物车
            }
            default -> response.sendRedirect("show.jsp");
        }
    }
}

