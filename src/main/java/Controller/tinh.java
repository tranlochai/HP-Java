package Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class tinh
 */
@WebServlet("/tinh")
public class tinh extends HttpServlet {
       
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	/**
     * @see HttpServlet#HttpServlet()
     */
    public tinh() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter outPrintWriter = response.getWriter();
		outPrintWriter.print("<html><body>alo</body></html>");
		HttpSession session = request.getSession();
		session.setAttribute("tam", "xin chào!");
		
		request.setAttribute("a",(long) 10);
		request.setAttribute("b", "haha");
		String[] dS = {"Hoa", "My", "Liên", "Tung"};
		request.setAttribute("ds", dS);
		RequestDispatcher rd = request.getRequestDispatcher("Page1.jsp");
		
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
