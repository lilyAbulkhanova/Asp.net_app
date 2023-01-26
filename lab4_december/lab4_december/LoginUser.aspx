<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginUser.aspx.cs" Inherits="lab4_december.LoginUser" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">  
    <style type="text/css">
        .auto-style1 {
             width: 500px;
            height: 300px;
            background-color:aliceblue;
            margin-top: 0px;
           
        }
        .body {
             margin:0;
              padding:0;
              font-family: sans-serif;
              background: linear-gradient(#141e30, #243b55);
        } 
        .login-box {
  position: absolute;
  top: 50%;
  left: 50%;
  width: 400px;
  padding: 40px;
  transform: translate(-50%, -50%);
  background: rgba(0,0,0,.5);
  box-sizing: border-box;
  box-shadow: 0 15px 25px rgba(0,0,0,.6);
  border-radius: 10px;
}

.login-box h2 {
  margin: 0 0 30px;
  padding: 0;
  color: #fff;
  text-align: center;
}

.login-box .user-box {
  position: relative;
}

.login-box .user-box input {
  width: 100%;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  margin-bottom: 30px;
  border: none;
  border-bottom: 1px solid #fff;
  outline: none;
  background: transparent;
}
.login-box .user-box label {
  position: absolute;
  top:0;
  left: 0;
  padding: 10px 0;
  font-size: 16px;
  color: #fff;
  pointer-events: none;
  transition: .5s;
}

.login-box .user-box input:focus ~ label,
.login-box .user-box input:valid ~ label {
  top: -20px;
  left: 0;
  color: #03e9f4;
  font-size: 12px;
}

.login-box form a {
  position: relative;
  display: inline-block;
  padding: 10px 20px;
  color: #03e9f4;
  font-size: 16px;
  text-decoration: none;
  text-transform: uppercase;
  overflow: hidden;
  transition: .5s;
  margin-top: 40px;
  letter-spacing: 4px
}

.login-box a:hover {
  background: #03e9f4;
  color: #fff;
  border-radius: 5px;
  box-shadow: 0 0 5px #03e9f4,
              0 0 25px #03e9f4,
              0 0 50px #03e9f4,
              0 0 100px #03e9f4;
}

.login-box a span {
  position: absolute;
  display: block;
}

.login-box a span:nth-child(1) {
  top: 0;
  left: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(90deg, transparent, #03e9f4);
  animation: btn-anim1 1s linear infinite;
}

@keyframes btn-anim1 {
  0% {
    left: -100%;
  }
  50%,100% {
    left: 100%;
  }
}

.login-box a span:nth-child(2) {
  top: -100%;
  right: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(180deg, transparent, #03e9f4);
  animation: btn-anim2 1s linear infinite;
  animation-delay: .25s
}

@keyframes btn-anim2 {
  0% {
    top: -100%;
  }
  50%,100% {
    top: 100%;
  }
}

.login-box a span:nth-child(3) {
  bottom: 0;
  right: -100%;
  width: 100%;
  height: 2px;
  background: linear-gradient(270deg, transparent, #03e9f4);
  animation: btn-anim3 1s linear infinite;
  animation-delay: .5s
}

@keyframes btn-anim3 {
  0% {
    right: -100%;
  }
  50%,100% {
    right: 100%;
  }
}

.login-box a span:nth-child(4) {
  bottom: -100%;
  left: 0;
  width: 2px;
  height: 100%;
  background: linear-gradient(360deg, transparent, #03e9f4);
  animation: btn-anim4 1s linear infinite;
  animation-delay: .75s
}

@keyframes btn-anim4 {
  0% {
    bottom: -100%;
  }
  50%,100% {
    bottom: 100%;
  }
}

        nav{
            width: 960%;
            margin: 0 auto;
        }

        nav:before{
            content: '';
            display: block;
            height: 50px;
            width: 100%;
            background-color: black;
            position: absolute;
            left: 0;
            z-index: -1;
        }

        ul{
            margin: 0;
            padding: 0;
            list-style: none;
            height: 50px;
        }

        ul li{
            float: left;
        }

        ul li a{
            color: white;
            display: block;
            height: 50px;
            padding: 0 30px;
            text-transform: uppercase;
            text-decoration: none;
            line-height: 50px;
        }

        ul li a:hover{
            background: #B88757;
        }

        .auto-style2 {
            width: 50%;
            left: 251px;
            top: 77px;
        }
        .auto-style3 {
            width: 50%;
            left: 2px;
            top: 77px;
        }
        .auto-style4 {
            position: absolute;
            top: 35%;
            left: 35%;
            width: 400px;
            padding: 40px;
            transform: translate(-50%, -50%);
            box-sizing: border-box;
            box-shadow: 0 15px 25px rgba(0,0,0,.6);
            border-radius: 10px;
        }

    </style>

   <%-- <script language="javascript" src="~/Scripts/WebForms/WebForms.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/WebUIValidation.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/MenuStandards.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/GridView.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/DetailsView.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/DetailsView.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/TreeView.js"></script>
    <script language="javascript" src="~/Scripts/WebForms/Focus.js"></script>
   
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title><%: Page.Title %> - My ASP.NET Application</title>

    <asp:PlaceHolder runat="server">
        <%: Scripts.Render("~/bundles/modernizr") %>
    </asp:PlaceHolder>

    <webopt:bundlereference runat="server" path="~/Content/css" />
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />


   
    <link href="~/favicon.ico" rel="shortcut icon" type="image/x-icon" />--%>

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
        <div class="auto-style4">
        <table class="auto-style1" align="center">
            <tr>
                <td align="center" colspan="2"><h2>Вход</h2></td>

               
            </tr>
            <tr  class="user-box">
                <td class="auto-style3"><b>Введите Логин:</b></td>
                 <td class="auto-style2">
                     <asp:TextBox ID="TextBox1" runat="server" Height="19px" Width="222px"></asp:TextBox>
                </td>
               
            </tr>
            <tr  class="user-box">>
                <td><b>Введите Пароль:</b></td>
                 <td style="width:50%">
                     <asp:TextBox ID="TextBox2" runat="server" Height="19px" Width="222px"></asp:TextBox>
                </td>
                
            </tr>
            <tr class="btn">
                <td align ="center" colspan="2">
                    <asp:Button ID="btn" runat="server" Text="Войти" Width="192px" OnClick="Button2_Click"  />
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </td>
                </tr>
             <tr>
                <td>
                    <asp:LinkButton ID="LinkButton1" runat="server" OnClick="LinkButton1_Click">Еще нет аккаунта?</asp:LinkButton>
                </td>
                </tr>
           
        </table>
            </div>
    </form>
</body>
</html>
