package shade;

import pojo.GoodsSingle;
import pojo.MyTools;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;


public final class StartServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ServletContext context = getServletContext();
        response.setContentType("text/html;charset=utf-8");

        if (context.getAttribute("goodslist") == null) {
            ArrayList<GoodsSingle> goodslist = MyTools.loadGoods_txt();
            context.setAttribute("goodslist", goodslist);
        }
        response.sendRedirect("show.jsp");
    }
}
