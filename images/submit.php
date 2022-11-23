<?php
require_once('dbase.php');
if(isset($_POST['blog_submit'])){
        $HEADER = $_POST['HEADER'];
        $SUB_HEADER = $_POST['SUB_HEADER'];
        $TOPIC=$_POST['TOPIC'];
        $CONTENT=$_POST['CONTENT'];


       $sql = "INSERT INTO `user`(`ID`, `HEADER`, `SUB-HEADER`, `TITLE`, `CONTENT`) VALUES ('', '$HEADER', '$SUB_HEADER', '$TOPIC' , '$CONTENT')";

        insertdata($sql);
header("location:My Page.php");
    }

    ?>