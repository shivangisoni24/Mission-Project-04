package in.co.rays.proj4.test;

import java.sql.Timestamp;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import in.co.rays.proj4.bean.FacultyBean;
import in.co.rays.proj4.bean.MarksheetBean;
import in.co.rays.proj4.model.FacultyModel;
import in.co.rays.proj4.model.MarksheetModel;

public class TestMarksheetModel {

	public static void main(String[] args) throws Exception {
//		 testAdd();
//		 testUpdate();
//		 testDelete();
//		 testfindByPk();
//		 testfindByRollNo();
		 testsearch();
	}

	public static void testAdd() throws Exception {
		MarksheetBean bean = new MarksheetBean();
		bean.setRollNo("RN13");
		bean.setStudentId(13L);
		bean.setName("Ram Jain");
		bean.setPhysics(58);
		bean.setChemistry(68);
		bean.setMaths(78);
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));

		MarksheetModel model = new MarksheetModel();
		model.add(bean);

	}
	
	

	public static void testUpdate() throws Exception {
		MarksheetBean bean = new MarksheetBean();
		bean.setId(12);
		bean.setRollNo("RN12");
		bean.setStudentId(12L);
		bean.setName("Siya Sharma");
		bean.setPhysics(66);
		bean.setChemistry(77);
		bean.setMaths(88);
		bean.setCreatedBy("Admin");
		bean.setModifiedBy("Admin");
		bean.setCreatedDatetime(new Timestamp(new Date().getTime()));
		bean.setModifiedDatetime(new Timestamp(new Date().getTime()));

		MarksheetModel model = new MarksheetModel();
		model.update(bean);

	}

	public static void testDelete() throws Exception {

		MarksheetModel model = new MarksheetModel();
		MarksheetBean bean = new MarksheetBean();
		bean.setId(4);
		model.delete(bean);
	}
	

	public static void testfindByPk() throws Exception {

		MarksheetModel model = new MarksheetModel();
		MarksheetBean bean = model.findByPk(1);
		if (bean != null) {
			System.out.println("\t" + bean.getId());
			System.out.println("\t" + bean.getName());
			System.out.println("\t" + bean.getRollNo());
			System.out.println("\t" + bean.getStudentId());
			System.out.println("\t" + bean.getPhysics());
			System.out.println("\t" + bean.getChemistry());
			System.out.println("\t" + bean.getMaths());
			System.out.println("\t" + bean.getCreatedBy());
			System.out.println("\t" + bean.getModifiedBy());
			System.out.println("\t" + bean.getCreatedDatetime());
			System.out.println("\t" + bean.getModifiedDatetime());
		} else {
			System.out.println("id does not exist....!");

		}
	}

	public static void testfindByRollNo() throws Exception {

		MarksheetModel model = new MarksheetModel();
		MarksheetBean bean = model.findByRollNo("RN11");
		if (bean != null) {
			System.out.println("\t" + bean.getId());
			System.out.println("\t" + bean.getName());
			System.out.println("\t" + bean.getRollNo());
			System.out.println("\t" + bean.getStudentId());
			System.out.println("\t" + bean.getPhysics());
			System.out.println("\t" + bean.getChemistry());
			System.out.println("\t" + bean.getMaths());
			System.out.println("\t" + bean.getCreatedBy());
			System.out.println("\t" + bean.getModifiedBy());
			System.out.println("\t" + bean.getCreatedDatetime());
			System.out.println("\t" + bean.getModifiedDatetime());
		} else {
			System.out.println("RollNo does not exist....!");

		}
	}

	public static void testsearch() throws Exception {

		MarksheetBean bean = new MarksheetBean();
		//bean.setId(1);
//		bean.setRollNo("101");
//		bean.setStudentId(101L);
//		bean.setName("Shivam Rajput");
//		bean.setPhysics(88);
//		bean.setChemistry(88);
//		bean.setMaths(88);

		MarksheetModel model = new MarksheetModel();
		List list = model.search(bean, 1, 5);
		Iterator<MarksheetBean> it = list.iterator();

		while (it.hasNext()) {
			bean = it.next();
			System.out.println("\t" + bean.getId());
			System.out.println("\t" + bean.getName());
			System.out.println("\t" + bean.getRollNo());
			System.out.println("\t" + bean.getStudentId());
			System.out.println("\t" + bean.getPhysics());
			System.out.println("\t" + bean.getChemistry());
			System.out.println("\t" + bean.getMaths());
			System.out.println("\t" + bean.getCreatedBy());
			System.out.println("\t" + bean.getModifiedBy());
			System.out.println("\t" + bean.getCreatedDatetime());
			System.out.println("\t" + bean.getModifiedDatetime());

		}

	}

}