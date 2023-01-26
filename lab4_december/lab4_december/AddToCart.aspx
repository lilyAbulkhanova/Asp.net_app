<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddToCart.aspx.cs" Inherits="lab4_december.AddToCart" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div align="center">
            <h2 style="text-decoration:underline overline blink">Ты добавил в корзину вот такие nft:</h2>
            <br /><br />
          
            <br /><br />
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#FF9999" EmptyDataText="В корзине ничего нет..." Font-Bold="True" Height="337px" OnRowDeleting="GridView1_RowDeleting" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" Width="1100px">
                <Columns>
                    <asp:BoundField DataField="sno" HeaderText="Sr No">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nid" HeaderText="NftId">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:ImageField DataImageUrlField="nim" HeaderText="Nft image">
                        <ControlStyle Height="300px" Width="340px" />
                        <ItemStyle HorizontalAlign="Center" />
                    </asp:ImageField>
                    <asp:BoundField DataField="nname" HeaderText="Nft Name">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:BoundField DataField="nprice" HeaderText="Price">
                    <ItemStyle HorizontalAlign="Center" />
                    </asp:BoundField>
                    <asp:CommandField ShowDeleteButton="True" />
                </Columns>
                <HeaderStyle BackColor="#33CCFF" ForeColor="White" />
            </asp:GridView>
            <br />
            <br />
            
        </div>
        <asp:Button ID="Button1" runat="server" Text="Продолжить покупки" OnClick="Button1_Click1" />
    </form>
</body>
</html>
