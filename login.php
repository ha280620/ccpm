<!-- Login -->
<?php
include 'classes/user.php';
$user = new user();
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $email = $_POST['email'];
    $password = md5($_POST['password']);
    $login_check = $user->login($email, $password);
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
    <title>Đăng nhập</title>
</head>

<body>
    <nav>
    <div class="logo">
            <a href="./index.php"><img style="width: 80px;" src="./images/GoldenWatch.png" alt=""></a>
        </div>
        <ul>
            <li><a href="index.php">Trang chủ</a></li>
            <li><a href="productList.php">Sản phẩm</a></li>
            <li><a href="register.php" id="signup">Đăng ký</a></li>
            <li><a href="login.php" id="signin" class="active">Đăng nhập</a></li>
            <li><a href="order.php" id="order">Đơn hàng</a></li>
            <li>
                <a href="checkout.php">
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
        <h1>Đăng nhập</h1>
    </div>
    <div class="container-single">
        <div class="login">
            <form action="login.php" method="post" class="form-login">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" placeholder="Email..." required>

                <label for="password">Mật khẩu</label>
                <input type="password" id="password" name="password" placeholder="Mật khẩu..." required>
                <p style="color: red;"><?= !empty($login_check) ? $login_check : '' ?></p>

                <input type="submit" value="Đăng nhập">
                <div class="form__row-register">
            <label class="form__label" for="register">Chưa có tài khoản??? <a href="./register.php">ĐĂNG KÍ NGAY!!</a></label>
        </div>
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

</html>