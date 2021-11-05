<?php 
require_once ("class/DBController.php");
class Teacher
{
    private $db_handle;
    
    function __construct() {
        $this->db_handle = new DBController();
    }
    
    function addTeacher($name, $class) {
        $query = "INSERT INTO tbl_teacher (name,class) VALUES (?, ?)";
        $paramType = "ss";
        $paramValue = array(
            $name,
            $class
        );
        
        $insertId = $this->db_handle->insert($query, $paramType, $paramValue);
        return $insertId;
    }
    
    function editTeacher($name, $class, $teacher_id) {
        $query = "UPDATE tbl_teacher SET name = ?, class = ? WHERE id = ?";
        $paramType = "ssi";
        $paramValue = array(
            $name,
            $class,
            $teacher_id
        );
        
        $this->db_handle->update($query, $paramType, $paramValue);
    }

    function deleteTeacher($teacher_id) {
        $query = "DELETE FROM tbl_teacher WHERE id = ?";
        $paramType = "i";
        $paramValue = array(
            $teacher_id
        );
        $this->db_handle->update($query, $paramType, $paramValue);
    }

    function getTeacherById($teacher_id) {
        $query = "SELECT * FROM tbl_teacher WHERE id = ?";
        $paramType = "i";
        $paramValue = array(
            $teacher_id
        );

        $result = $this->db_handle->runQuery($query, $paramType, $paramValue);
        return $result;
    }

//
//    function getAllTeachers() {
//        $sql = "SELECT * FROM tbl_teacher ORDER BY id";
//        $result = $this->db_handle->runBaseQuery($sql);
//        return $result;
//    }

    function getAllTeachers($pageno=1) {

        $no_of_records_per_page = 10;
        $offset = ($pageno-1) * $no_of_records_per_page;
        $sql = "SELECT * FROM `tbl_teacher` LIMIT $offset, $no_of_records_per_page";
        $result = $this->db_handle->runBaseQuery($sql);
        return $result;
    }

    function getTotalPages() {
        $total_pages_sql = "SELECT COUNT(*) FROM tbl_teacher";
        $no_of_records_per_page = 10;
        $result = $this->db_handle->count($total_pages_sql, $no_of_records_per_page);
        return $result;
    }
}
?>