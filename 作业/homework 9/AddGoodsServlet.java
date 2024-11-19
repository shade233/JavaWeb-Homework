package controller;

import pojo.GoodsSingle;
import save.MyTools;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/AddGoodsServlet")
@MultipartConfig //告诉容器这个 servlet 能够处理 multipart/form-data 类型的请求

public class AddGoodsServlet extends HttpServlet {
    private static final long serialVersionUID = 1L; //序列化
    private static final String UPLOAD_DIR = "img"; // 保存图片的路径，是相对路径

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        ServletContext context = getServletContext();
        // 从request中获取数据
        String name = request.getParameter("name");
        double price = Double.parseDouble(request.getParameter("price"));
        int quantity = Integer.parseInt(request.getParameter("quantity"));
        Part filePart = request.getPart("image");
        String fileName = getFileName(filePart); // 注意：文件名应当和编号一致

        int id = generateNewId(); // 获取该商品对应的ID

        // 获取webapp在文件目录中的真实位置
        String applicationPath = request.getServletContext().getRealPath("");
        String uploadFilePath = applicationPath + File.separator + UPLOAD_DIR;
        File uploadDir = new File(uploadFilePath);
        if (!uploadDir.exists()) {
            uploadDir.mkdirs();
        }

        String newName = String.valueOf(id) + fileName.substring(fileName.lastIndexOf("."), fileName.length());
        filePart.write(uploadFilePath + File.separator + newName);

        String imagePath = UPLOAD_DIR + File.separator + newName;

        GoodsSingle newGoods = new GoodsSingle(id + "\t" + name + "\t" + imagePath + "\t" + quantity + "\t" + price);

        // 加入到存档文件中
        try {
            MyTools.appendGoods_txt(newGoods);
        } catch (Exception e) {
            e.printStackTrace();
        }


        ArrayList<GoodsSingle> goodslist = null;
        try {
            goodslist = MyTools.loadGoods_txt();
        } catch (IOException e) {
            e.printStackTrace();
        }

        context.setAttribute("goodslist", goodslist);
        response.sendRedirect("show.jsp");
    }

    private String getFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        //System.out.println(contentDisp);
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1); //跳过双引号
            }
        }
        return "";
    }

    private int generateNewId() {
        ServletContext contex = this.getServletContext();
        ArrayList<GoodsSingle> goodslist = (ArrayList<GoodsSingle>) contex.getAttribute("goodslist");

        if (goodslist == null)
            try {
                String applicationPath = contex.getRealPath("");
                String dataPath = applicationPath + File.separator + "data";
                MyTools.setPath(dataPath);
                goodslist = MyTools.loadGoods_txt();
            } catch (Exception e) {
                e.printStackTrace();
            }
        return goodslist.size() + 1;
    }
}