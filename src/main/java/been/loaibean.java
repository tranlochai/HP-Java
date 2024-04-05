package been;

public class loaibean {
	private String maloai, tenloai;
	public loaibean() {
		super();
	}
	public loaibean(String maloai, String tenloai) {
		super();
		this.setMaloai(maloai);
		this.setTenloai(tenloai);
	}
	public String getMaloai() {
		return maloai;
	}
	public void setMaloai(String maloai) {
		this.maloai = maloai;
	}
	public String getTenloai() {
		return tenloai;
	}
	public void setTenloai(String tenloai) {
		this.tenloai = tenloai;
	}
}
