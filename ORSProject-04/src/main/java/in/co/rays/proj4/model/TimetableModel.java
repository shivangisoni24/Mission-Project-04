package in.co.rays.proj4.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.co.rays.proj4.bean.CourseBean;
import in.co.rays.proj4.bean.SubjectBean;
import in.co.rays.proj4.bean.TimetableBean;
import in.co.rays.proj4.exception.ApplicationException;
import in.co.rays.proj4.exception.DatabaseException;
import in.co.rays.proj4.exception.DuplicateRecordException;
import in.co.rays.proj4.util.JDBCDataSource;

public class TimetableModel {

	public static Integer nextPk() throws DatabaseException {
		Connection conn = null;
		int pk = 0;

		try {
			conn = JDBCDataSource.getConnection();

			PreparedStatement pstmt = conn.prepareStatement("select max(id) from st_timetable");
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				pk = (rs.getInt(1));
			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new DatabaseException("Exception in getting pk");

		} finally {
			JDBCDataSource.closeConnection(conn);
		}

		return pk + 1;

	}

	public void add(TimetableBean bean) throws ApplicationException, DuplicateRecordException {

		Connection conn = null;
		int pk = 0;

		CourseModel courseModel = new CourseModel();
		CourseBean courseBean = courseModel.findByPk(bean.getCourseId());
		bean.setCourseName(courseBean.getName());

		SubjectModel subjectModel = new SubjectModel();
		SubjectBean subjectBean = subjectModel.findByPk(bean.getSubjectId());
		bean.setSubjectName(subjectBean.getName());

		try {
			pk = nextPk();
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);

			PreparedStatement pstmt = conn
					.prepareStatement("insert into st_timetable values (?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pstmt.setInt(1, pk);
			pstmt.setString(2, bean.getCreatedBy());
			pstmt.setString(3, bean.getModifiedBy());
			pstmt.setTimestamp(4, bean.getCreatedDatetime());
			pstmt.setTimestamp(5, bean.getModifiedDatetime());
			pstmt.setString(6, bean.getSemester());
			pstmt.setString(7, bean.getDescription());
			pstmt.setDate(8, new java.sql.Date(bean.getExamDate().getTime()));
			pstmt.setString(9, bean.getExamTime());
			pstmt.setLong(10, bean.getCourseId());
			pstmt.setString(11, bean.getCourseName());
			pstmt.setLong(12, bean.getSubjectId());
			pstmt.setString(13, bean.getSubjectName());
			int i = pstmt.executeUpdate();
			System.out.println("Data Added => " + i);

			conn.commit();
			pstmt.close();

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception ex) {
				throw new ApplicationException("EXception: add rollback exception" + ex.getMessage());
			}
			e.printStackTrace();
			throw new ApplicationException("Exception in adding timetable");

		} finally {
			JDBCDataSource.closeConnection(conn);
		}

	}

	public void update(TimetableBean bean) throws ApplicationException {
		Connection conn = null;

		CourseModel courseModel = new CourseModel();
		CourseBean courseBean = courseModel.findByPk(bean.getCourseId());
		bean.setCourseName(courseBean.getName());

		SubjectModel subjectModel = new SubjectModel();
		SubjectBean subjectBean = subjectModel.findByPk(bean.getSubjectId());
		bean.setSubjectName(subjectBean.getName());

		try {
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);

			PreparedStatement pstmt = conn.prepareStatement(
					"update st_timetable set semester=?, description=?, exam_date=?, exam_time=?, course_id=?, course_name=?, subject_id=?, subject_name=?, created_by=?, modified_by=?, created_datetime=?, modified_datetime=? where id = ?");
			pstmt.setString(1, bean.getSemester());
			pstmt.setString(2, bean.getDescription());
			pstmt.setDate(3, new java.sql.Date(bean.getExamDate().getTime()));
			pstmt.setString(4, bean.getExamTime()); 	 
			pstmt.setLong(5, bean.getCourseId());
			pstmt.setString(6, bean.getCourseName());
			pstmt.setLong(7, bean.getSubjectId());
			pstmt.setString(8, bean.getSubjectName());
			pstmt.setString(9, bean.getCreatedBy());
			pstmt.setString(10, bean.getModifiedBy());
			pstmt.setTimestamp(11, bean.getCreatedDatetime());
			pstmt.setTimestamp(12, bean.getModifiedDatetime());
			pstmt.setLong(13, bean.getId());
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
			throw new ApplicationException("Exception in updating Timetable");
		} finally {
			JDBCDataSource.closeConnection(conn);
		}
	}

	public void delete(long id) throws ApplicationException {
		Connection conn = null;
		try {
			conn = JDBCDataSource.getConnection();
			conn.setAutoCommit(false);

			PreparedStatement pstmt = conn.prepareStatement("delete from st_timetable where id=?");
			pstmt.setLong(1, id);
			int i = pstmt.executeUpdate();
			System.out.println("Data Deleted => " + i);

			conn.commit();
			pstmt.close();

		} catch (Exception e) {
			try {
				conn.rollback();
			} catch (Exception ex) {
				throw new ApplicationException("Exception : delete rollback exception" + ex.getMessage());
			}
			throw new ApplicationException("Exception in deleting Timetable");
		} finally {
			JDBCDataSource.closeConnection(conn);
		}
	}

	public TimetableBean findByPk(long id) throws ApplicationException {

		TimetableBean bean = null;
		Connection conn = null;

		StringBuffer sql = new StringBuffer("select * from st_timetable where id = ?");

		try {

			conn = JDBCDataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			pstmt.setLong(1, id);
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				bean = new TimetableBean();

				bean.setId(rs.getLong(1));
				bean.setSemester(rs.getString(2));
				bean.setDescription(rs.getString(3));
				bean.setExamDate(rs.getDate(4));
				bean.setExamTime(rs.getString(5));
				bean.setCourseId(rs.getLong(6));
				bean.setCourseName(rs.getString(7));
				bean.setSubjectId(rs.getLong(8));
				bean.setSubjectName(rs.getString(9));
				bean.setCreatedBy(rs.getString(10));
				bean.setModifiedBy(rs.getString(11));
				bean.setCreatedDatetime(rs.getTimestamp(12));
				bean.setModifiedDatetime(rs.getTimestamp(13));

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

	public List<TimetableBean> list() throws ApplicationException {
		return search(null, 0, 0);
	}

	public List<TimetableBean> search(TimetableBean bean, int pageNo, int pageSize) throws ApplicationException {

		Connection conn = null;

		StringBuffer sql = new StringBuffer("select * from st_timetable where 1=1 ");

		if (bean != null) {

			if (bean.getId() > 0) {
				sql.append(" and id = " + bean.getId());
			}

			if (bean.getCourseId() > 0) {
				sql.append(" and course_id = " + bean.getCourseId());
			}

			if (bean.getCourseName() != null && bean.getCourseName().length() > 0) {
				sql.append(" and course_name like '" + bean.getCourseName() + "%'");
			}

			if (bean.getSubjectId() > 0) {
				sql.append(" and subject_id = " + bean.getSubjectId());
			}

			if (bean.getSubjectName() != null && bean.getSubjectName().length() > 0) {
				sql.append(" and subject_name like '" + bean.getSubjectName() + "%'");
			}

			if (bean.getSemester() != null && bean.getSemester().length() > 0) {
				sql.append(" and semester like '" + bean.getSemester() + "%'");
			}

			if (bean.getDescription() != null && bean.getDescription().length() > 0) {
				sql.append(" and description like '" + bean.getDescription() + "%'");
			}

			if (bean.getExamDate() != null && bean.getExamDate().getDate() > 0) {
				sql.append(" and exam_date like '" + new java.sql.Date(bean.getExamDate().getTime()) + "%'");
			}

			if (bean.getExamTime() != null && bean.getExamTime().length() > 0) {
				sql.append(" and exam_time like '" + bean.getExamTime() + "%'");
			}
		}

		if (pageSize > 0) {
			pageNo = (pageNo - 1) * pageSize;
			sql.append(" limit " + pageNo + "," + pageSize);
		}

		System.out.println("sql => " + sql);

		List<TimetableBean> list = new ArrayList<TimetableBean>();

		try {
			conn = JDBCDataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql.toString());
			ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {									
				bean = new TimetableBean();
				bean.setId(rs.getLong(1));
				bean.setCreatedBy(rs.getString(2));
				bean.setModifiedBy(rs.getString(3));
				bean.setCreatedDatetime(rs.getTimestamp(4));
				bean.setModifiedDatetime(rs.getTimestamp(5));
				bean.setSemester(rs.getString(6));
				bean.setDescription(rs.getString(7));
				bean.setExamDate(rs.getDate(8));
				bean.setExamTime(rs.getString(9));
				bean.setCourseId(rs.getLong(10));
				bean.setCourseName(rs.getString(11));
				bean.setSubjectId(rs.getLong(12));
				bean.setSubjectName(rs.getString(13));
				
				
				list.add(bean);

			}
			rs.close();
			pstmt.close();

		} catch (Exception e) {
			throw new ApplicationException("Exception : Exception in search Timetable");

		} finally {
			JDBCDataSource.closeConnection(conn);
		}

		return list;

	}

}