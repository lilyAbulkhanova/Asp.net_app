<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="lab4_december.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 644px;
            height: 584px;
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
        <div>
            <table align ="center" background-color="#B88757">
                <tr>
                    <td colspan="2" align="center"><h2>Регистрация</h2></td>
                   
                </tr>
                <tr>
                    <td style="width:50%"><b>Логин:</b></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Заполни строку логина" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox1" runat="server" Height="38px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Адрес:</b></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Заполни строку адреса" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox2" runat="server" Height="38px" Width="200px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Почта:</b></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Заполни строку почты" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox3" runat="server" Height="38px" Width="200px" TextMode="MultiLine"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width:50%"><b>Пароль:</b></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Заполни строку пароля" ForeColor="Red">*</asp:RequiredFieldValidator>
                        <asp:TextBox ID="TextBox4" runat="server" Height="38px" Width="200px" TextMode="Password"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center ">
                        <asp:Button ID="Button1" runat="server" Text="Зарегистрироваться" Font-Bold="True" Font-Size="Medium" Height="53px" Width="291px" OnClick="Button1_Click" />
                    </td>
                    
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" >
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
