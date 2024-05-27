package controllers;
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/selctmenu")
public class SelectMenuServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // リクエストパラメータから選択されたメニューを取得
        String selectedMenu = request.getParameter("menu");

        // 選択されたメニューに基づいて遷移先のURLを設定
        String redirectURL = "";
        if ("menu1".equals(selectedMenu)) {
            redirectURL = "menu1.jsp"; // メニュー1のページへのURL
        } else if ("menu2".equals(selectedMenu)) {
            redirectURL = "menu2.jsp"; // メニュー2のページへのURL
        } else if ("menu3".equals(selectedMenu)) {
            redirectURL = "menu3.jsp"; // メニュー3のページへのURL
        } else {
            // 選択されたメニューが不正な場合はエラーページへ遷移
            redirectURL = "error.jsp";
        }

        // リダイレクト
        response.sendRedirect(redirectURL);
    }
}