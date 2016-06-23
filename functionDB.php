<?php
    function verifyUser(){
        include_once 'DBConnect.php';
        if(isset($_POST["name"]) && isset($_POST["password"])){
            $name = $_POST['name'];
            $password = $_POST['password'];
            $query = "SELECT * FROM user where name='$name'";
            $result = $conn->query($query, MYSQLI_STORE_RESULT);
            // Cycle through the result set
            if($result) {
                if ($data = $result->fetch_object()) {
                    if($data->isOnline == 1){
                        echo "userOnline";
                    }else if($password == $data->password){
                       echo "loginSuccess";
                       $query = "update user set isOnline=1 where name='$name'";
                       $result = $conn->query($query);
                   }else
                       echo "incorrectPassword";
                }else{
                    echo "noUserName";
                }
            }else {
                echo 'Error'. $name;
            }
        }
        $conn->close();
    }
    
    function createUser(){
        include_once 'DBConnect.php';
        if(isset($_POST["name"]) && isset($_POST["password"])){
            $name = $_POST['name'];
            $password = $_POST['password'];
            $query = "insert into user set name='$name',password='$password'";
            $result = $conn->query($query);
            // Cycle through the result set
            if($result) {
                echo 'createUserSuccess';
            }else {
                echo 'existUsername';
            }
            $query = "insert into player set name='$name'";
            $result = $conn->query($query);
        }
        $conn->close();
    }
    function excQuery(){
        include_once 'DBConnect.php';
        if(isset($_POST["query"])){
            $query = $_POST["query"];
            $result = $conn->query($query);
        }
        $conn->close();
    }
    function getPlayerData(){
        include_once 'DBConnect.php';
        if(isset($_POST["name"])){
            $name = $_POST['name'];
            $query = "SELECT * FROM player where name='$name'";
            $result = $conn->query($query, MYSQLI_STORE_RESULT);
            // Cycle through the result set
            if($result) {
                if ($data = $result->fetch_object()) {
                    echo $data->money." ".$data->lv." ".$data->exp." ".$data->hp." ".$data->attack." ".$data->defense;
                }
            }else {
                echo 'Error'. $name;
            }
        }
        $conn->close();
    }
?>
