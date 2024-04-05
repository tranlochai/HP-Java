package bo;

import java.util.ArrayList;

import been.gioHangbeen;

public class gioHangBo {
	ArrayList<gioHangbeen> ds;
	
	public ArrayList<gioHangbeen> get() {
		return ds;
	}
	
	public void set(ArrayList<gioHangbeen> ds) {
		this.ds = ds;
	}
	
	public void themHang(String maSach, String tenSach, long gia, long soLuongMua, String anh) {
		for(gioHangbeen h : ds) {
			if (h.getMaSach().equals(maSach)) {
				h.setSoLuongMua(h.getSoLuongMua() + soLuongMua);
				return;
			}
		}
		gioHangbeen h = new gioHangbeen(maSach, tenSach, gia, soLuongMua, anh);
		ds.add(h);
	}
	
	public void xoaHang(String maSach) {
		for(gioHangbeen h: ds) {
			if (h.getMaSach().equals(maSach)) {
				ds.remove(h);
				return;
			}
		}
	}
	public void capNhat(String maSach, long soLuongMua) {
		for(gioHangbeen h: ds) {
			if (h.getMaSach().equals(maSach)) {
				h.setSoLuongMua(soLuongMua);
				return;
			}
		}
	}
	public long Tongtien(){
		long s=0;
		for(gioHangbeen h : ds){
			s += h.getSoLuongMua() * h.getGia();
		}
		return s;
	}
}
