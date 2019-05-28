package login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import main.UserCheck;
import main.UserDao;

public class PassChangeConfServlet extends HttpServlet {
	public static final long serialVersionUID = 1L;


	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset= UTF-8");

		HttpSession session = request.getSession(true);

		String id = (String) session.getAttribute("id");
		String pass = (String)session.getAttribute("pass");

		String dept = (String)session.getAttribute("dept");
		String post = (String)session.getAttribute("post");

		String oldPass = request.getParameter("pass");
		String newPass =request.getParameter("newPass1");

		String forward = null;
		if(pass.equals(oldPass)) {
			UserDao dao = new UserDao();
			session.setAttribute("pass",newPass);

			UserCheck user = new UserCheck();
			forward = user.userCheck(dept, post);

			dao.changePass(newPass, id, oldPass);
			request.setAttribute("compmsg", "パスワードが変更されました");
		}else {
			request.setAttribute("errmsg", "パスワードが間違っています");
			forward = "web/changePass.jsp";
		}

		RequestDispatcher rd = request.getRequestDispatcher(forward);
		rd.forward(request,response);
	}

}
