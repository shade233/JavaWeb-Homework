package controller;

import pojo.GoodsSingle;
import save.MyTools;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

public class StartShopServlet extends HttpServlet {
    ArrayList<GoodsSingle> goodslist = null;

    @Override
    public void service(ServletRequest req, ServletResponse res)
            throws ServletException, IOException {
        ServletContext contex = this.getServletContext();

        String applicationPath = contex.getRealPath("");
        String dataPath = applicationPath + File.separator + "data";
        MyTools.setPath(dataPath);

        if (null == contex.getAttribute("goodslist")) {
            try {
                goodslist = MyTools.loadGoods_txt();
            } catch (Exception e) {
                e.printStackTrace();
            }
            contex.setAttribute("goodslist", goodslist);
        }
        req.getRequestDispatcher("show.jsp").forward(req, res);
    }
}
