<?php

session_set_cookie_params(3600,"/");
session_start();
session_destroy();
header("location: index.php");

?>