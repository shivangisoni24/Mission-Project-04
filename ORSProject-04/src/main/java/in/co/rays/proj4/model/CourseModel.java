package in.co.rays.proj4.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import in.co.rays.proj4.bean.CourseBean;
import in.co.rays.proj4.exception.ApplicationException;
import in.co.rays.proj4.exception.DatabaseException;
import in.co.rays.proj4.exception.DuplicateRecordException;
import in.co.rays.proj4.util.JDBCDataSource;

public class CourseModel {

    public static Integer nextPk() throws DatabaseException {
        Connection conn = null;
        int pk = 0;

        try {
            conn = JDBCDataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT MAX(course_id) FROM st_course");
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                pk = rs.getInt(1);
            }
            rs.close();
            pstmt.close();
        } catch (Exception e) {
            throw new DatabaseException("Exception in getting primary key");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }

        return pk + 1;
    }

    public void add(CourseBean bean) throws ApplicationException, DuplicateRecordException {
        Connection conn = null;
        int pk;

        CourseBean duplicateCourse = findByName(bean.getName());
        if (duplicateCourse != null) {
            throw new DuplicateRecordException("Course Name already exists");
        }

        try {
            pk = nextPk();
            conn = JDBCDataSource.getConnection();
            conn.setAutoCommit(false);

            PreparedStatement pstmt = conn.prepareStatement(
                "INSERT INTO st_course (course_id, course_name, duration, description, created_by, modified_by, created_datetime, modified_datetime) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
            pstmt.setInt(1, pk);
            pstmt.setString(2, bean.getName());
            pstmt.setString(3, bean.getDuration());
            pstmt.setString(4, bean.getDescription());
            pstmt.setString(5, bean.getCreatedBy());
            pstmt.setString(6, bean.getModifiedBy());
            pstmt.setTimestamp(7, bean.getCreatedDatetime());
            pstmt.setTimestamp(8, bean.getModifiedDatetime());
            int i = pstmt.executeUpdate();
            System.out.println("Data Added => " + i);

            conn.commit();
            pstmt.close();
        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (Exception ex) {
                throw new ApplicationException("Rollback failed: " + ex.getMessage());
            }
            throw new ApplicationException("Exception in adding course");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }
    }

    public void update(CourseBean bean) throws ApplicationException, DuplicateRecordException {
        Connection conn = null;

        CourseBean duplicateCourse = findByName(bean.getName());
        if (duplicateCourse != null && duplicateCourse.getId() != bean.getId()) {
            throw new DuplicateRecordException("Course Name already exists");
        }

        try {
            conn = JDBCDataSource.getConnection();
            conn.setAutoCommit(false);

            PreparedStatement pstmt = conn.prepareStatement(
                "UPDATE st_course SET course_name=?, duration=?, description=?, created_by=?, modified_by=?, created_datetime=?, modified_datetime=? WHERE course_id=?");
            pstmt.setString(1, bean.getName());
            pstmt.setString(2, bean.getDuration());
            pstmt.setString(3, bean.getDescription());
            pstmt.setString(4, bean.getCreatedBy());
            pstmt.setString(5, bean.getModifiedBy());
            pstmt.setTimestamp(6, bean.getCreatedDatetime());
            pstmt.setTimestamp(7, bean.getModifiedDatetime());
            pstmt.setLong(8, bean.getId());
            int i = pstmt.executeUpdate();
			System.out.println("Data Updated => " + i);

            conn.commit();
            pstmt.close();
        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (Exception ex) {
                throw new ApplicationException("Rollback failed: " + ex.getMessage());
            }
            throw new ApplicationException("Exception in updating course");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }
    }

    public void delete(int id) throws ApplicationException {
        Connection conn = null;
        try {
            conn = JDBCDataSource.getConnection();
            conn.setAutoCommit(false);

            PreparedStatement pstmt = conn.prepareStatement("DELETE FROM st_course WHERE course_id=?");
            pstmt.setInt(1, id);
            int i = pstmt.executeUpdate();
			System.out.println("Data Deleted => " + i);


            conn.commit();
            pstmt.close();
        } catch (Exception e) {
            try {
                conn.rollback();
            } catch (Exception ex) {
                throw new ApplicationException("Rollback failed: " + ex.getMessage());
            }
            throw new ApplicationException("Exception in deleting course");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }
    }

    public CourseBean findByPk(long id) throws ApplicationException {
        CourseBean bean = null;
        Connection conn = null;

        try {
            conn = JDBCDataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM st_course WHERE course_id=?");
            pstmt.setLong(1, id);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                bean = new CourseBean();
                bean.setId(rs.getInt("course_id"));
                bean.setName(rs.getString("course_name"));
                bean.setDuration(rs.getString("duration"));
                bean.setDescription(rs.getString("description"));
                bean.setCreatedBy(rs.getString("created_by"));
                bean.setModifiedBy(rs.getString("modified_by"));
                bean.setCreatedDatetime(rs.getTimestamp("created_datetime"));
                bean.setModifiedDatetime(rs.getTimestamp("modified_datetime"));
            }
            rs.close();
            pstmt.close();
        } catch (Exception e) {
            throw new ApplicationException("Exception in getting course by PK");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }

        return bean;
    }

    public CourseBean findByName(String name) throws ApplicationException {
        CourseBean bean = null;
        Connection conn = null;

        try {
            conn = JDBCDataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM st_course WHERE course_name=?");
            pstmt.setString(1, name);
            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                bean = new CourseBean();
                bean.setId(rs.getInt("course_id"));
                bean.setName(rs.getString("course_name"));
                bean.setDuration(rs.getString("duration"));
                bean.setDescription(rs.getString("description"));
                bean.setCreatedBy(rs.getString("created_by"));
                bean.setModifiedBy(rs.getString("modified_by"));
                bean.setCreatedDatetime(rs.getTimestamp("created_datetime"));
                bean.setModifiedDatetime(rs.getTimestamp("modified_datetime"));
            }
            rs.close();
            pstmt.close();
        } catch (Exception e) {
            throw new ApplicationException("Exception in getting course by name");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }

        return bean;
    }

    public List<CourseBean> list() throws ApplicationException {
        return search(null, 0, 0);
    }

    public List<CourseBean> search(CourseBean bean, int pageNo, int pageSize) throws ApplicationException {
        Connection conn = null;
        StringBuffer sql = new StringBuffer("SELECT * FROM st_course WHERE 1=1");

        if (bean != null) {
            if (bean.getId() > 0) {
                sql.append(" AND course_id = " + bean.getId());
            }
            if (bean.getName() != null && bean.getName().length() > 0) {
                sql.append(" AND course_name LIKE '" + bean.getName() + "%'");
            }
            if (bean.getDuration() != null && bean.getDuration().length() > 0) {
                sql.append(" AND duration LIKE '" + bean.getDuration() + "%'");
            }
            if (bean.getDescription() != null && bean.getDescription().length() > 0) {
                sql.append(" AND description LIKE '" + bean.getDescription() + "%'");
            }
        }

        if (pageSize > 0) {
            pageNo = (pageNo - 1) * pageSize;
            sql.append(" LIMIT " + pageNo + ", " + pageSize);
        }

        List<CourseBean> list = new ArrayList<>();

        try {
            conn = JDBCDataSource.getConnection();
            PreparedStatement pstmt = conn.prepareStatement(sql.toString());
            ResultSet rs = pstmt.executeQuery();

            while (rs.next()) {
                bean = new CourseBean();
                bean.setId(rs.getInt("course_id"));
                bean.setName(rs.getString("course_name"));
                bean.setDuration(rs.getString("duration"));
                bean.setDescription(rs.getString("description"));
                bean.setCreatedBy(rs.getString("created_by"));
                bean.setModifiedBy(rs.getString("modified_by"));
                bean.setCreatedDatetime(rs.getTimestamp("created_datetime"));
                bean.setModifiedDatetime(rs.getTimestamp("modified_datetime"));
                list.add(bean);
            }
            rs.close();
            pstmt.close();
        } catch (Exception e) {
            throw new ApplicationException("Exception in searching course");
        } finally {
            JDBCDataSource.closeConnection(conn);
        }

        return list;
    }
}
