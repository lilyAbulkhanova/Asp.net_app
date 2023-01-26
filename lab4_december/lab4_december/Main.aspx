<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Main.aspx.cs" Inherits="lab4_december.Main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        body{
            background-image: url("images/1691(3).png");
            width:1400px;
        }
         nav{
            width: 960%;
            margin: 0 auto;
        }

        nav:before{
            content: '';
            display: block;
            height: 80px;
            width: 100%;
            background-color: black;
            position: absolute;
            left: 0;
            z-index: -1;
        }

        p{
            font-size:25px;
        }

        ul{
            margin: 0;
            padding: 0;
            list-style: none;
            height: 80px;
        }

        ul li{
            float: left;
        }

        ul li a{
            color: white;
            display: block;
            height: 80px;
            padding: 0 30px;
            text-transform: uppercase;
            text-decoration: none;
            line-height: 80px;
        }

        ul li a:hover{
            background: #B88757;
        }

    </style>
</head>
<body>
     <nav>
                    <ul>
                        <li><a runat="server" href="~/Main">Главная</a></li>
                        <li><a runat="server" href="~/Store">Магазин</a></li>

                        <li><a runat="server" href="~/LoginUser">Вход</a></li>
                        <li><a runat="server" href="~/Register">Регистрация</a></li>
                    </ul>
                </nav>
    <form id="form1" runat="server">
        <div align="right" margin: 20 20 20 20>
          <div style ="color:white; width:50%" >
          
        

          <h1 style ="color:#B88757; font-size:80px">Billionaire Club</h1>
          <p>BILLIONAIRE CLUB - это частная коллекция NFT — уникальных цифровых предметов коллекционирования. Обезьяны, киборги и магнаты хранятся в виде токенов ERC-721 в блокчейне Ethereum и размещаются на IPFS.</p>
        </div>
        </div>
    </form>
</body>
</html>
