package Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class kQMayTinh
 */
@WebServlet("/kQMayTinh")
public class kQMayTinh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public kQMayTinh() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String txtA = (String) request.getParameter("a");
		String txtB = (String) request.getParameter("b");
		
		if (txtA != null && txtB != null) {
			long a = Long.parseLong(txtA);
			long b = Long.parseLong(txtB);
			double kq = 0;
			if (request.getParameter("butCong") != null){
				kq = a + b;
			}
			else if(request.getParameter("butTru") != null){
				kq = a - b;
			}
			else if(request.getParameter("butNhan") != null){
				kq = a * b;
			}
			else if(request.getParameter("butChia") != null){
				kq = (a * 1.0) / b;
			}
			request.setAttribute("kq",(double) kq);	
			request.setAttribute("a",(long) a);
			request.setAttribute("b",(long) b);
		}
		RequestDispatcher rd = request.getRequestDispatcher("Buoi2.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
