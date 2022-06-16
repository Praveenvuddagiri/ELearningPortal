
package com.learning.dao;

import com.learning.entities.course;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class CourseDao {
    Connection con;
    public CourseDao(Connection con) {
        this.con = con;
    }
    public boolean addCourse(course co){
        boolean f = false;
        try {
            //user -->database
            String query = "insert into course values (?,?,?,?,?,?,?,?)";
            PreparedStatement pstmt = this.con.prepareStatement(query);
            pstmt.setString(1,"0");            
            pstmt.setString(2,co.getC_name());
            pstmt.setString(3,String.valueOf(co.getC_price()));            
            pstmt.setString(4,co.getC_desc());
            pstmt.setString(5,String.valueOf(co.getC_dur()));
            pstmt.setString(6,String.valueOf(co.getCat_id()));
            pstmt.setString(7,String.valueOf(co.getF_id()));            
            pstmt.setString(8,"0");

            pstmt.executeUpdate();
            f = true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return f;
    }

    public boolean deleteCourse(int id) {
         boolean f = false;
        try{
            String q = "delete from course where c_id="+id;
            Statement st = con.createStatement();
            st.executeQuery(q);
            f=true;
        }catch(Exception e){
            System.out.println(e);
        }
        return f;
    }

    
}
