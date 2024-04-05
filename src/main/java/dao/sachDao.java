package dao;

import java.util.ArrayList;

import been.sachbean;

public class sachDao {
	public ArrayList<sachbean> getSach() {
		ArrayList<sachbean> ds = new ArrayList<sachbean>();
		ds.add(new sachbean("s1", "CTDL và GT", "Nguyễn Văn A", 360000, 50, "b1.jpg", "tin"));
		ds.add(new sachbean("s2", "Đại Số Tuyến Tính", "Lê Bá B", 120000, 30, "b2.jpg", "toan"));
		ds.add(new sachbean("s3", "Java", "Nguyễn Văn C", 230000, 20, "b3.jpg", "tin"));
		ds.add(new sachbean("s4", "Cơ Sở Dữ Liệu", "Nguyễn Văn D", 10000, 60, "b4.jpg", "tin"));
		ds.add(new sachbean("s5", "Anh văn", "Nguyễn Văn E", 330000, 10, "b5.jpg", "anh"));
		ds.add(new sachbean("s6", "Lý đại cương", "Nguyễn Văn F", 150000, 30, "b6.jpg", "ly"));
		return ds;
	}
}
