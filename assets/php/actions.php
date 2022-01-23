<?php
require_once 'functions.php'; // include functions.php to handle posts, signing up, loggin in and logging out

if(isset($_GET['test'])){
 
}

// for blocking other users
if(isset($_GET['block'])){
    $user_id = $_GET['block'];
    $user = $_GET['username']; 
      if(blockUser($user_id)){
          header("location:../../?u=$user"); // they will directed back to the user profile with the blocked status
      }else{
          echo "Error!";
      }
  
    
  }

  // for deleting posts
  if(isset($_GET['deletepost'])){
    $post_id = $_GET['deletepost'];
      if(deletePost($post_id)){
          header("location:{$_SERVER['HTTP_REFERER']}");
      }else{
          echo "Error!";
      }
  
    
  }



//for handling sign up page and checking if there is an error
if(isset($_GET['signup'])){
$response=validateSignupForm($_POST);
if($response['status']){
    if(createUser($_POST)){
    header('location:../../?login&newuser');
    }else{
        echo "<script>alert('Error!')</script>";
    }
   

}else{
    $_SESSION['error']=$response;
    $_SESSION['formdata']=$_POST;
    header("location:../../?signup");
    }   
}


//for handling login page and checking if there is an error
if(isset($_GET['login'])){

  
    $response=validateLoginForm($_POST);
  
    if($response['status']){
     $_SESSION['Auth'] = true;
     $_SESSION['userdata'] = $response['user'];

     header("location:../../");

    }else{
        $_SESSION['error']=$response;
        $_SESSION['formdata']=$_POST;
        header("location:../../?login");
    }
        
    }


//for logging out of the account
if(isset($_GET['logout'])){
    session_destroy();
    header('location:../../');

}

// for handling profile updates by the user and checking if there is an error
if(isset($_GET['updateprofile'])){

    $response=validateUpdateForm($_POST,$_FILES['profile_pic']);

    if($response['status']){
       
        if(updateProfile($_POST,$_FILES['profile_pic'])){
            header("location:../../?editprofile&success");

        }else{
            echo "Error!";
        }
       
    }else{
        $_SESSION['error']=$response;
        header("location:../../?editprofile");
    }
     
}

//for handling posts created by users and checking if there is an error
if(isset($_GET['addpost'])){
   $response = validatePostImage($_FILES['post_img']);

   if($response['status']){
if(createPost($_POST,$_FILES['post_img'])){
    header("location:../../?new_post_added");
}else{
    echo "Error!";
}
   }else{
    $_SESSION['error']=$response;
    header("location:../../");
   }
}