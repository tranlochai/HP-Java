package bo;

import java.util.ArrayList;

import been.loaibean;
import dao.loaiDao;

public class loaiBo {
	loaiDao lDao = new loaiDao();
	
	public ArrayList<loaibean> getLoai() {
		return lDao.getLoai();
	}
}
