package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import been.loaibean;
import been.sachbean;
import bo.gioHangBo;
import bo.loaiBo;
import bo.sachBo;

/**
 * Servlet implementation class SachController
 */
@WebServlet("/Sach")
public class SachController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SachController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			if (session.getAttribute("giohang") != null){
      			gioHangBo ghBo = (gioHangBo) session.getAttribute("giohang");
      			int size = ghBo.get().size();
      			if (size > 0)
      				request.setAttribute("sizeGioHang", (int) size);
			}
			sachBo sbo = new sachBo();
			loaiBo lbo = new loaiBo();
			ArrayList<sachbean> dsSach;
			ArrayList<loaibean> dsLoai = lbo.getLoai();
			String keytk = request.getParameter("txttk");
			String maloai = request.getParameter("ml");
			if (keytk != null)
				dsSach = sbo.tim(keytk);
			else if (maloai != null)
				dsSach = sbo.timMa(maloai);
			else
				dsSach = sbo.getAllSach();
			request.setAttribute("dsSach",(ArrayList<sachbean>) dsSach);
			request.setAttribute("dsLoai",(ArrayList<loaibean>) dsLoai);
			RequestDispatcher rd = request.getRequestDispatcher("./htSach.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
