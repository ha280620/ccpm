<!-- Register -->
<?php
include 'classes/user.php';
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $user = new user();
    $result = $user->insert($_POST);
    if ($result == true) {
        $userId = $user->getLastUserId(); 
        header("Location:./confirm.php?id=".$userId['id']."");
    }
}
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <script src="https://use.fontawesome.com/2145adbb48.js"></script>
    <script src="https://kit.fontawesome.com/a42aeb5b72.js" crossorigin="anonymous"></script>
    <title>Đăng ký</title>
</head>

<body>
    <nav>
    <div class="logo">
            <a href="./index.php"><img style="width: 80px;" src="./images/GoldenWatch.png" alt=""></a>
        </div>
        <ul>
            <li><a href="index.php">Trang chủ</a></li>
            <li><a href="productList.php">Sản phẩm</a></li>
            <li><a href="register.php" id="signup" class="active">Đăng ký</a></li>
            <li><a href="login.php" id="signin">Đăng nhập</a></li>
            <li><a href="order.php" id="order">Đơn hàng</a></li>
            <li>
                <a href="checkout.html">
                    <i class="fa fa-shopping-bag"></i>
                    <span class="sumItem">
                        0
                    </span>
                </a>
            </li>
        </ul>
    </nav>
    <div class="banner--login"><img style="margin-left: 432px; height: 300px" src="./images/GoldenWatch.png" alt=""></div>
    <div class="featuredProducts">
        <h1>Đăng ký</h1>
    </div>
    <div class="container-single">
        <div class="login">
            <form action="register.php" method="post" class="form-login">
                <label for="fullName">Họ tên</label>
                <input type="text" id="fullName" name="fullName" placeholder="Họ tên..." required>

                <label for="email">Email</label>
                <p class="error"><?= !empty($result) ? $result : '' ?></p>
                <input type="email" id="email" name="email" placeholder="Email..." required pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,}$">

                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" placeholder="Mật khẩu..." required>

                <label for="repassword">Nhập lại mật khẩu</label>
                <input type="password" id="repassword" name="repassword" required placeholder="Nhập lại mật khẩu..." oninput="check(this)">

                <label for="address">Địa chỉ</label>
                <textarea name="address" id="address" cols="30" rows="5" required></textarea>

                <label for="dob">Ngày sinh</label>
                <input type="date" name="dob" id="dob" required>

                <input type="submit" value="Đăng ký" name="submit">
            </form>
        </div>
    </div>
    </div>
    <h2 style="text-align: center">
          <strong>
            <span> BÀI VIẾT HAY </span>
          </strong>
        </h2>

        <div class="main__goodEssay">
          <div class="goodEssay__img">
            <img src="./images/goodEssay.jpg" alt="" />
          </div>
          <div class="goodEssay__text">
            <h2>Lorem</h2>
            <p>
              Lorem ipsum, dolor sit amet consectetur adipisicing elit. Eos
              nostrum modi magni fugiat! Adipisci quasi cupiditate nam quia,
              expedita veniam vitae iusto tenetur ducimus ratione, maiores id
              quae aliquam provident. Lorem ipsum, dolor sit amet consectetur
              adipisicing elit. Eos nostrum modi magni fugiat! Adipisci quasi
              cupiditate nam quia, expedita veniam vitae iusto tenetur ducimus
              ratione, maiores id quae aliquam provident. Lorem ipsum, dolor
              sit amet consectetur adipisicing elit. Eos nostrum modi magni
              fugiat! Adipisci quasi cupiditate nam quia, expedita veniam
              vitae iusto tenetur ducimus ratione, maiores id quae aliquam
              provident. Lorem ipsum, dolor sit amet consectetur adipisicing
              elit. Eos nostrum modi magni fugiat! Adipisci quasi cupiditate
              nam quia, expedita veniam vitae iusto tenetur ducimus ratione,
              maiores id quae aliquam provident.
            </p>
          </div>
        </div>
    <footer>
        <div class="social">
            <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a>
            <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
        </div>
        <ul class="list">
            <li>
                <a href="./">Trang Chủ</a>
            </li>
            <li>
                <a href="productList.php">Sản Phẩm</a>
            </li>
        </ul>
        <p class="copyright">GoldenWatch @KhanhWithTeam 2022</p>
    </footer>
</body>
<script language='javascript' type='text/javascript'>
    function check(input) {
        if (input.value != document.getElementById('password').value) {
            input.setCustomValidity('Password Must be Matching.');
        }else{
            input.setCustomValidity('');
        }
    }
</script>
</html>