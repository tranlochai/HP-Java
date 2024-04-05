package dao;

import java.util.ArrayList;

import been.loaibean;

public class loaiDao {
	public ArrayList<loaibean> getLoai() {
		ArrayList<loaibean> ds = new ArrayList<loaibean>();
		ds.add(new loaibean("tin", "Công Nghệ Thông Tin"));
		ds.add(new loaibean("toan", "Toán Học"));
		ds.add(new loaibean("anh", "Ngoại Ngữ Anh Văn"));
		ds.add(new loaibean("ly", "Vật Lý"));
		ds.add(new loaibean("triet", "Lý Luận Chính Trị"));
		return ds;
	}
}
