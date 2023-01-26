<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Store.aspx.cs" Inherits="lab4_december.Store" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
       
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

        <table style="width:100%; height:30px">
            <tr style="background-color:black">
                <td colspan="2"  style="text-align:right">
                    <asp:Label ID="Label4" runat="server" style="text-align:left" ForeColor="White"></asp:Label>
                    <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="White" NavigateUrl="~/LoginUser.aspx">Авторизуйтесь, если еще это не сделали</asp:HyperLink>
                    <asp:Button ID="Button2" runat="server" Text="Выйти" BackColor="White" OnClick="Button2_Click" />
                </td>
                <td style="text-align:right">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Button ID="Button3" runat="server" Text="Найти" OnClick="Button3_Click" />
                </td>
            </tr>
        </table>
            <asp:DataList ID="DataList1" runat="server" DataKeyField="NftId" DataSourceID="SqlDataSource1" Width="311px" RepeatDirection="Horizontal" OnItemCommand="DataList1_ItemCommand" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
                <AlternatingItemStyle Height="293px" Width="310px" />
            <ItemTemplate>
               <table>
                   <tr>
                       <td style="text-align:center;background-color:azure">
                           <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Names="Open Sans Extrabold"></asp:Label>
                       </td>
                   </tr>
                    <tr>
                       <td style="text-align:center;background-color:azure">
                           <asp:Image ID="Image1" runat="server" BorderColor="#CC9900" BorderWidth="1px" Height="279px" Width="278px" ImageUrl='<%# Eval("Image") %>' />
                       </td>
                   </tr>
                 
                     <tr>
                       <td style="text-align:center;">
                           <asp:Label ID="Label2" runat="server" Text="Цена:" style="text-align:center"></asp:Label>
                             <asp:Label ID="Label3" runat="server" Text='<%# Eval("Price") %>' style="text-align:center"></asp:Label>
                       </td>
                   </tr>
                    
                     <tr>
                       <td style="text-align:center">
                           <asp:Button ID="Button1" runat="server" Text="Купить" Width="232px" CommandArgument='<%# Eval("NftId") %>' CommandName="AddToCart"/>
                       </td>
                   </tr>
                   
               </table>
                <br />
                <br />
        </ItemTemplate>
       
       </asp:DataList>
       <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:UserConnectionString %>" SelectCommand="SELECT [NftId], [Name], [Image], [Price] FROM [Nft]"> </asp:SqlDataSource>
    </form>
</body>
</html>
