package been;

public class sachbean {
	private String maSach;
	private String tenSach;
	private String tacGia;
	private long gia;
	private long soLuong;
	private String anh;
	private String	maLoai;
	public sachbean() {
		super();
	}
	public sachbean(String maSach, String tenSach, String tacGia, long gia, long soLuong,String anh, String	maLoai) {
		super();
		this.maSach = maSach;
		this.setTenSach(tenSach);
		this.tacGia = tacGia;
		this.gia = gia;
		this.soLuong = soLuong;
		this.anh = anh;
		this.maLoai = maLoai;
	}
	public String getMaSach() {
		return maSach;
	}
	public void setMaSach(String maSach) {
		this.maSach = maSach;
	}
	public String getTenSach() {
		return tenSach;
	}
	public void setTenSach(String tenSach) {
		this.tenSach = tenSach;
	}
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	public long getGia() {
		return gia;
	}
	public void setGia(long gia) {
		this.gia = gia;
	}
	public long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(long soLuong) {
		this.soLuong = soLuong;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
	public String getMaLoai() {
		return maLoai;
	}
	public void setMaLoai(String maLoai) {
		this.maLoai = maLoai;
	}
	
}
