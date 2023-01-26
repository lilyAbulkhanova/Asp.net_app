<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddNft.aspx.cs" Inherits="lab4_december.AddNft" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height:510px">
            <table style="width:700px; height:390px; background-color:azure;" align:"center">
                <tr>
                    <td align="center" width="50%" colspan="2" >
                        <h1>Добавить новый продукт:</h1>
                    </td>
                    <td></td>
                </tr>
                 <tr>
                    <td align="center" width="50%">
                        <h3>Имя новой nft: </h3>
                    </td>
                     <td width="50%">
                         <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                     </td>
                </tr>
                 <tr>
                    <td align="center" width="50%">
                        <h3>Краткое описание:</h3>
                    </td>
                     <td width="50%">
                         <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                     </td>
                </tr>
                 <tr>
                    <td align="center" width="50%">
                        <h3>Изображение:</h3>
                    </td>
                     <td  width="50%">
                         <asp:FileUpload ID="FileUpload1" runat="server" />
                     </td> 
                    
                </tr>
                 <tr>
                    <td align="center" width="50%">
                    <h3>Цена:</h3>
                    </td>
                     <td  width="50%">
                         <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                     </td> 
                </tr>
                 <tr>
                    <td align="center" width="50%" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="Добавить" OnClick="Button1_Click" />
                    </td>
                     
                </tr>
                      <tr>
                    <td align="center" width="50%" colspan="2">
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                    </td>
                   
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
