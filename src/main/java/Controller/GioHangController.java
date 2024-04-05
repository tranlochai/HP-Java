package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import been.gioHangbeen;
import been.loaibean;
import bo.gioHangBo;
import bo.loaiBo;

/**
 * Servlet implementation class GioHangController
 */
@WebServlet("/Sach/GioHang")
public class GioHangController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GioHangController() {
        super();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
			response.setCharacterEncoding("utf-8");
			request.setCharacterEncoding("utf-8");
			gioHangBo ghBo = null;
			HttpSession session = request.getSession();
			long tongtien = 0;

  			if (request.getParameter("masach") != null){
				String ma = request.getParameter("masach");
				String tenSach = request.getParameter("tensach");
				String gia = request.getParameter("gia");
				String soLuongMua = request.getParameter("soluongmua");
				String anh = request.getParameter("anh");
				if (session.getAttribute("giohang") == null){
					gioHangBo ghB = new gioHangBo();
					ArrayList<gioHangbeen> dsGioHang = new ArrayList<gioHangbeen>();
					ghB.set(dsGioHang);
					session.setAttribute("giohang", (gioHangBo) ghB);
				}
				ghBo = (gioHangBo) session.getAttribute("giohang");
				ghBo.themHang(ma, tenSach, Long.parseLong(gia), Long.parseLong(soLuongMua), anh);
				session.setAttribute("giohang", (gioHangBo) ghBo);
				response.sendRedirect("./GioHang");
			}
			if (session.getAttribute("giohang") != null){
      			ghBo = (gioHangBo) session.getAttribute("giohang");
	  			if(request.getParameter("btncapnhat") != null){
					String ms = request.getParameter("msCapNhat");
					String sl = request.getParameter("sl");
					ghBo.capNhat(ms, Long.parseLong(sl));
				}
	  			else if(request.getParameter("btntralai") != null){
					String ms = request.getParameter("msTraLai");
					ghBo.xoaHang(ms);
				}
	  			else if(request.getParameter("btnXoaDonHangChon") != null){
					Enumeration<String> d= request.getParameterNames();
				   	while(d.hasMoreElements()){
				   		String tam = d.nextElement();
				   		if(request.getParameter(tam).equals("on".trim())){
				   			ghBo.xoaHang(tam);
				   		}
				   	}
				}
				session.setAttribute("giohang", (gioHangBo) ghBo);
      			int size = ghBo.get().size();
      			if (size > 0)
      				request.setAttribute("sizeGioHang", (int) size);
      			else 
      				response.sendRedirect("./TraLaiAll");
      			
				ArrayList<gioHangbeen> dsGioHang = ghBo.get();
				request.setAttribute("dsGioHang",(ArrayList<gioHangbeen>) dsGioHang);
				
				tongtien = ghBo.Tongtien();
				request.setAttribute("tongTien",(long) tongtien);
			}
			
			loaiBo lbo = new loaiBo();
			ArrayList<loaibean> dsLoai = lbo.getLoai();
			request.setAttribute("dsLoai",(ArrayList<loaibean>) dsLoai);
			
			RequestDispatcher rd = request.getRequestDispatcher("../htGio.jsp");
			rd.forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
