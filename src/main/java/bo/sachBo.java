package bo;

import java.util.ArrayList;

import been.sachbean;
import dao.sachDao;

public class sachBo {
	sachDao sDao = new sachDao();
	ArrayList<sachbean> ds = sDao.getSach();
	
	public ArrayList<sachbean> getAllSach() {
		return ds;
	}
	
	public ArrayList<sachbean> timMa(String maLoai) {
		int n = ds.size();
		ArrayList<sachbean> dsMa = new ArrayList<sachbean>();
		for(int i=0; i < n; i++) {
			if (ds.get(i).getMaLoai().toLowerCase().trim().equals(maLoai.toLowerCase().trim()))
				dsMa.add(ds.get(i));
		}
		return dsMa;
	}
	
	public sachbean timMaSach(String maSach) {
		int n = ds.size();
		for(int i=0; i < n; i++) {
			if (ds.get(i).getMaSach().toLowerCase().trim().equals(maSach.toLowerCase().trim()))
				return ds.get(i);
		}
		return null;
	}
	
	public ArrayList<sachbean> tim(String key) {
		int n = ds.size();
		ArrayList<sachbean> dsTim = new ArrayList<sachbean>();
		for(int i=0; i < n; i++) {
			if (ds.get(i).getTenSach().toLowerCase().contains(key.toLowerCase().trim())
					|| ds.get(i).getTacGia().toLowerCase().contains(key.toLowerCase().trim()))
				dsTim.add(ds.get(i));
		}
		return dsTim;
	}
	
	
}
