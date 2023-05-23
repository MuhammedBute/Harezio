
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Giris</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            border: none;
        }
        body {
            background: #eee;
        }
        .login__forms {
            display: flex;
            align-items: center;
            justify-content: center;
            flex-direction: column;
            min-height: 100vh;
        }
        .login__box {
            display: flex;
            align-items: center;
            background: #fff;
            border-radius: 4px;
            padding: 0.875rem;
            margin-bottom: 1rem;
            width: 450px;
        }
        .login__box input {
            border: none;
            outline: none;
            padding: 0.45rem 0.875rem;
            font-family: 'Poppins', sans-serif;
            width: 100%;
        }
        .btn-login {
            display: flex;
            align-items: center;
            justify-content: center;
            background: #3a3a3a;
            box-shadow: rgba(149, 157, 165, 0.2) 0px 8px 24px;
            border-radius: 4px;
            color: #fff;
            padding: 0.875rem;
            width: 10rem;
            cursor: pointer;
            font-family: 'Poppins', sans-serif;
        }
        .btn-login span {
            padding-left: 10px;
        }
        .fs-20 {
            font-size: 24px;
        }
    </style>
</head>
<body>
   
    <cfform name="Login" action="process_login.cfm" method="post">
    <div class="login__forms">
        <div class="login__box">
            <ion-icon class="fs-20" name="person-outline"></ion-icon>
            <cfinput type="text" class="form-control" name="username" id="username" placeholder="Kullanıcı Adı">
        </div>
        <div class="login__box">
            
            <ion-icon class="fs-20" name="lock-closed-outline"></ion-icon>
            <cfinput type="password" class="form-control" name="password" id="password"placeholder="Şifre">
        </div>
        <button type="submit" class="btn-login">    
            <ion-icon name="log-in-outline"></ion-icon>
            <span>Giris Yap</span>
        </button>
    </div>
    </cfform>

    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
