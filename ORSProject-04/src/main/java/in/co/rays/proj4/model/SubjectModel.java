package in.co.rays.proj4.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.co.rays.proj4.bean.CourseBean;
import in.co.rays.proj4.bean.SubjectBean;
import in.co.rays.proj4.exception.ApplicationException;
import in.co.rays.proj4.exception.DatabaseException;
import in.co.rays.proj4.exception.DuplicateRecordException;
import in.co.rays.proj4.util.JDBCDataSource;

public class SubjectModel {

	public static Integer nextPk() throws DatabaseException {
		Connection conn = null;
		int pk = 0;

		try {
			conn = JDBCDataSource.getConnection();

			PreparedStatement pstmt = conn.prepareStatement("select max(id) from st_subject");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				pk = rs.getInt(1);
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new DatabaseException("Exception : Exception in getting PK");

		} finally {
			JDBCDataSource.closeConnection(conn);
		}

		return pk + 1;

	}

	public long add(SubjectBean bean) throws ApplicationException, DuplicateRecordException {

		Connection conn = null;
		int pk;

		CourseModel courseModel = new CourseModel();
		CourseBean courseBean = courseModel.findByPk(bean.getCourseId());
		bean.setCourseName(courseBean.getName());

		SubjectBean duplicateSubject = findByName(bean.getName());
		if (duplicateSubject != null) {
			throw new DuplicateRecordException("Subject Name already exists");
		}

		try {
			pk = nextPk();
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);

			PreparedStatement pstmt = conn.prepareStatement("insert into st_subject values (?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, pk);
			pstmt.setString(2, bean.getName());
			pstmt.setLong(3, bean.getCourseId());
			pstmt.setString(4, bean.getCourseName());
			pstmt.setString(5, bean.getDescription());
			pstmt.setString(6, bean.getCreatedBy());
			pstmt.setString(7, bean.getModifiedBy());
			pstmt.setTimestamp(8, bean.getCreatedDatetime());
			pstmt.setTimestamp(9, bean.getModifiedDatetime());
			int i = pstmt.executeUpdate();
			System.out.println("Data Added => " + i);

			conn.commit();
			pstmt.close();

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception ex) {
				throw new ApplicationException("Exception : add rollback exception" + ex.getMessage());
			}
			e.printStackTrace();
			throw new ApplicationException("EXception in adding Subject");

		} finally {
			JDBCDataSource.closeConnection(conn);
		}
		return pk;


	}

	public void update(SubjectBean bean) throws ApplicationException, DuplicateRecordException {
		Connection conn = null;

		CourseModel courseModel = new CourseModel();
		CourseBean courseBean = courseModel.findByPk(bean.getCourseId());
		bean.setCourseName(courseBean.getName());

		SubjectBean duplicateSubject = findByName(bean.getName());
		if (duplicateSubject != null && duplicateSubject.getId() != bean.getId()) {
			throw new DuplicateRecordException("Subject Name already exists");
		}

		try {
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);
			System.out.println(bean);
			PreparedStatement pstmt = conn.prepareStatement(
					"update st_subject set name=?, course_id=?, course_name=?, description=?, created_by=?, modified_by=?, created_datetime=?, modified_datetime=? where id = ?");
			pstmt.setString(1, bean.getName());
			pstmt.setLong(2, bean.getCourseId());
			pstmt.setString(3, bean.getCourseName());
			pstmt.setString(4, bean.getDescription());
			pstmt.setString(5, bean.getCreatedBy());
			pstmt.setString(6, bean.getModifiedBy());
			pstmt.setTimestamp(7, bean.getCreatedDatetime());
			pstmt.setTimestamp(8, bean.getModifiedDatetime());
			pstmt.setLong(9, bean.getId());
			int i = pstmt.executeUpdate();
			System.out.println("Data Updated => " + i);

			conn.commit();
			pstmt.close();

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception ex) {
				throw new ApplicationException("Exception : update rollback exception" + ex.getMessage());
			}
			e.printStackTrace();
			throw new ApplicationException("EXception in updating Subject");
		} finally {
			JDBCDataSource.closeConnection(conn);
		}
	}

	public void delete(SubjectBean bean) throws ApplicationException {
		Connection conn = null;
		try {
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);

			PreparedStatement pstmt = conn.prepareStatement("delete from st_subject where id=?");
			pstmt.setLong(1, bean.getId());
			int i = pstmt.executeUpdate();
			System.out.println("Data Deleted => " + i);

			conn.commit();
			pstmt.close();

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception ex) {
				throw new ApplicationException("EXception : delete rollback exception" + ex.getMessage());
			}
			throw new ApplicationException("Exception in deleting Student");
		} finally {
			JDBCDataSource.closeConnection(conn);
		}
	}

	public SubjectBean findByPk(long id) throws ApplicationException {

		SubjectBean bean = null;
		Connection conn = null;

		StringBuffer sql = new StringBuffer("select * from st_subject where id = ?");

		try {

			conn = JDBCDataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setLong(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				bean = new SubjectBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setCourseId(rs.getLong(3));
				bean.setCourseName(rs.getString(4));
				bean.setDescription(rs.getString(5));
				bean.setCreatedBy(rs.getString(6));
				bean.setModifiedBy(rs.getString(7));
				bean.setCreatedDatetime(rs.getTimestamp(8));
				bean.setModifiedDatetime(rs.getTimestamp(9));

			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new ApplicationException("Exception : Exception in getting subject by pk");

		} finally {
			JDBCDataSource.closeConnection(conn);

		}

		return bean;
	}

	public SubjectBean findByName(String name) throws ApplicationException {

		SubjectBean bean = null;
		Connection conn = null;

		StringBuffer sql = new StringBuffer("select * from st_subject where name = ?");

		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, name);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				bean = new SubjectBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setCourseId(rs.getLong(3));
				bean.setCourseName(rs.getString(4));
				bean.setDescription(rs.getString(5));
				bean.setCreatedBy(rs.getString(6));
				bean.setModifiedBy(rs.getString(7));
				bean.setCreatedDatetime(rs.getTimestamp(8));
				bean.setModifiedDatetime(rs.getTimestamp(9));
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new ApplicationException("Exception : Exception in getting subject by name");
		} finally {
			JDBCDataSource.closeConnection(conn);

		}

		return bean;

	}

	public List<SubjectBean> list() throws ApplicationException {
		return search(null, 0, 0);
	}

	public List<SubjectBean> search(SubjectBean bean, int pageNo, int pageSize) throws ApplicationException {

		Connection conn = null;

		StringBuffer sql = new StringBuffer("select * from st_subject where 1=1 ");

		if (bean != null) {

			if (bean.getId() > 0) {
				sql.append(" and id = " + bean.getId());
			}

			if (bean.getName() != null && bean.getName().length() > 0) {
				sql.append("and name like '" + bean.getName() + "%'");
			}

			if (bean.getCourseId() > 0) {
				sql.append(" and course_id = " + bean.getCourseId());
			}

			if (bean.getCourseName() != null && bean.getCourseName().length() > 0) {
				sql.append(" and course_name like '" + bean.getCourseName() + "%'");
			}

			if (bean.getDescription() != null && bean.getDescription().length() > 0) {
				sql.append(" and description like '" + bean.getDescription() + "%'");
			}

		}

		if (pageSize > 0) {
			pageNo = (pageNo - 1) * pageSize;
			sql.append(" limit " + pageNo + "," + pageSize);
		}

		System.out.println("sql => " + sql);

		List<SubjectBean> list = new ArrayList<SubjectBean>();

		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				bean = new SubjectBean();
				bean.setId(rs.getInt(1));
				bean.setName(rs.getString(2));
				bean.setCourseId(rs.getLong(3));
				bean.setCourseName(rs.getString(4));
				bean.setDescription(rs.getString(5));
				bean.setCreatedBy(rs.getString(6));
				bean.setModifiedBy(rs.getString(7));
				bean.setCreatedDatetime(rs.getTimestamp(8));
				bean.setModifiedDatetime(rs.getTimestamp(9));
				list.add(bean);

			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new ApplicationException("Exception : Exception in searching Subject");
			

		} finally {
			JDBCDataSource.closeConnection(conn);
		}

		return list;

	}

}