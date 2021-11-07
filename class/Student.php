<?php 
require_once ("class/DBController.php");
class Student
{
    private $db_handle;
    
    function __construct() {
        $this->db_handle = new DBController();
    }
    
    function addStudent($name, $roll_number, $dob, $class) {

        if (isset($_POST['add'])) {

            $filename = $_FILES["uploadfile"]["name"];
            $tempname = $_FILES["uploadfile"]["tmp_name"];
            $directoryName = 'images';
            $random = substr( str_shuffle( str_repeat( 'abcdefghijklmnopqrstuvwxyz0123456789', 10 ) ), 0, 7 );
            $folder = $directoryName."/".$random . '-'.$filename;


            //Check if the directory already exists.
            if(!is_dir($directoryName)){
                //Directory does not exist, so lets create it.
                mkdir($directoryName, 0755);
            }

            if (move_uploaded_file($tempname, $folder))  {
//                $msg = "Image uploaded successfully";
            }else{
//                $msg = "Failed to upload image";
            }


        $query = "INSERT INTO tbl_student (name,roll_number,dob,class, picture) VALUES (?, ?, ?, ?, ?)";
        $paramType = "sisss";
        $paramValue = array(
            $name,
            $roll_number,
            $dob,
            $class,
            $folder
        );
        
        $insertId = $this->db_handle->insert($query, $paramType, $paramValue);
        return $insertId;
        }
        return;
    }
    
    function editStudent($name, $roll_number, $dob, $class, $student_id) {
        $query = "UPDATE tbl_student SET name = ?,roll_number = ?,dob = ?,class = ? WHERE id = ?";
        $paramType = "sissi";
        $paramValue = array(
            $name,
            $roll_number,
            $dob,
            $class,
            $student_id
        );
        
        $this->db_handle->update($query, $paramType, $paramValue);
    }
    
    function deleteStudent($student_id) {
        $query = "DELETE FROM tbl_student WHERE id = ?";
        $paramType = "i";
        $paramValue = array(
            $student_id
        );
        $this->db_handle->update($query, $paramType, $paramValue);
    }
    
    function getStudentById($student_id) {
        $query = "SELECT * FROM tbl_student WHERE id = ?";
        $paramType = "i";
        $paramValue = array(
            $student_id
        );
        
        $result = $this->db_handle->runQuery($query, $paramType, $paramValue);
        return $result;
    }
    
    function getAllStudent($pageno=1) {

        $no_of_records_per_page = 10;
        $offset = ($pageno-1) * $no_of_records_per_page;
        $sql = "SELECT * FROM `tbl_student` LIMIT $offset, $no_of_records_per_page";
        $result = $this->db_handle->runBaseQuery($sql);
        return $result;
    }

    function getTotalPages() {
        $total_pages_sql = "SELECT COUNT(*) FROM tbl_student";
        $no_of_records_per_page = 10;
        $result = $this->db_handle->count($total_pages_sql, $no_of_records_per_page);
        return $result;
    }
}
?>