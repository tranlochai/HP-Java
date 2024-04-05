package been;

public class gioHangbeen {
	private String maSach;
	private String tenSach;
	private String tacGia;
	private long gia;
	private long soLuongMua;
	private String anh;
	
	public gioHangbeen() {
		super();
	}
	public gioHangbeen(String maSach, String tenSach, long gia, long soLuongMua, String anh) {
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.gia = gia;
		this.soLuongMua = soLuongMua;
		this.anh = anh;
	}
	public gioHangbeen(String maSach, String tenSach, String tacGia, long gia, long soLuongMua, String anh) {
		this.maSach = maSach;
		this.tenSach = tenSach;
		this.tacGia = tacGia;
		this.gia = gia;
		this.soLuongMua = soLuongMua;
		this.anh = anh;
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
	public long getSoLuongMua() {
		return soLuongMua;
	}
	public void setSoLuongMua(long soLuongMua) {
		this.soLuongMua = soLuongMua;
	}
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}
}
