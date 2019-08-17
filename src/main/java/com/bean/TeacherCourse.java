package com.bean;

import java.io.Serializable;

/**
 * teacher_course
 * @author 
 */
public class TeacherCourse implements Serializable {
    private Integer teacherCourseId;

    private String courseName;

    private Integer term;

    private Integer credit;

    private String teacherName;

    private static final long serialVersionUID = 1L;

    public Integer getTeacherCourseId() {
        return teacherCourseId;
    }

    public void setTeacherCourseId(Integer teacherCourseId) {
        this.teacherCourseId = teacherCourseId;
    }

    public String getCourseName() {
        return courseName;
    }

    public void setCourseName(String courseName) {
        this.courseName = courseName;
    }

    public Integer getTerm() {
        return term;
    }

    public void setTerm(Integer term) {
        this.term = term;
    }

    public Integer getCredit() {
        return credit;
    }

    public void setCredit(Integer credit) {
        this.credit = credit;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }
}