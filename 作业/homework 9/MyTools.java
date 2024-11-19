package save;

import pojo.GoodsSingle;

import java.io.*;
import java.util.ArrayList;

public class MyTools {
//    public static final String path = "E:\\学习文档\\JAVA Web\\MyShop\\src\\temp";
    public static String path="";

    public static void setPath(String path) {
        MyTools.path = path;
    }

    public static ArrayList<GoodsSingle> getGoods() throws Exception {
        ArrayList<GoodsSingle> goodslist = new ArrayList<>();
        String[] names = {"苹果", "香蕉", "梨", "橘子"};        //商品名称
        double[] prices = {2.8, 3.1, 2.5, 2.8};            //商品价格

        for (int i = 0; i < 4; i++) {                            //初始化商品信息列表
            //定义一个GoodsSingle类对象来封装商品信息
            GoodsSingle single = new GoodsSingle();
            single.setId(i);
            single.setName(names[i]);                    //封装商品名称信息
            single.setPrice(prices[i]);                //封装商品价格信息
            single.setNum(1); //封装购买数量信息
            String sname = "img/" + (i + 1) + ".jpg";
            single.setImgename(sname);
            goodslist.add(single);                    //保存商品到goodslist集合对象中
        }
        saveGoods(goodslist);
        return goodslist;
    }

    public static void saveGoods(ArrayList<GoodsSingle> goods) throws Exception {
        File f = new File(path, "goods.dat");
        ObjectOutputStream fout = new ObjectOutputStream(new FileOutputStream(f));
        fout.writeObject(goods);
        fout.close();
    }

    public static ArrayList<GoodsSingle> loadGoods() throws Exception {
        ArrayList<GoodsSingle> goods = new ArrayList<GoodsSingle>();
        File f = new File(path, "goods.dat");
        ObjectInputStream fin = new ObjectInputStream(new FileInputStream(f));
        goods = (ArrayList) fin.readObject();
        fin.close();
        return goods;
    }

    public static void saveGoods_txt(ArrayList<GoodsSingle> goods) throws Exception {
        File f = new File(path, "goods.csv");
        PrintWriter fout = new PrintWriter(new FileWriter(f));
        for (GoodsSingle g : goods) {
            fout.println(g.toString());
        }
        fout.close();
    }

    public static ArrayList<GoodsSingle> loadGoods_txt() throws IOException {
        ArrayList<GoodsSingle> goods = new ArrayList<GoodsSingle>();
        File f = new File(path, "goods.csv");
        BufferedReader fin = new BufferedReader(new InputStreamReader(new FileInputStream(f),
                "utf-8"));
        String ss = null;
        while ((ss = fin.readLine()) != null) {
            GoodsSingle gs = new GoodsSingle(ss);
            goods.add(gs);
        }
        fin.close();
        return goods;
    }

    public static void appendGoods_txt(GoodsSingle single) throws Exception {
        File f = new File(path, "goods.csv");
        PrintWriter fout = new PrintWriter(new FileWriter(f, true));
        fout.println(single.toString());
        fout.close();
    }
}