package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

/**
 * Servlet implementation class LoginController
 */
@WebServlet("/Sach/Login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String un = request.getParameter("un");
		String pass = request.getParameter("pass");
		if (un != null && pass != null){
			if (un.equals("abc") && pass.equals("123")){
				HttpSession session = request.getSession();
				if(session.getAttribute("user") == null) {
					session.setAttribute("user", (String) un);
				}
				response.sendRedirect("../Sach");
				//RequestDispatcher rd = request.getRequestDispatcher("htSach.jsp");
				//rd.forward(request, response);
			}
			else {
				request.setAttribute("errol", "Đăng nhập tài khoản hoặc mật khẩu sai, xin vui lòng đăng nhập lại!");
				RequestDispatcher rd = request.getRequestDispatcher("../DangNhap.jsp");
				rd.forward(request, response);
			}
		}
		else {
			RequestDispatcher rd = request.getRequestDispatcher("../DangNhap.jsp");
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
