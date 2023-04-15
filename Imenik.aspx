<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Imenik.aspx.cs" Inherits="B13.Imenik" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
            <div class="hcol1">
                Zadatak 6
            </div>
            <div class="hcol2">
                Telefonski imenik           
            </div>           
        </div>
        <div class="main">
            <div class="container">                
                Parametri za pretragu:
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Ime:"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label2" runat="server" Text="Adresa:"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label3" runat="server" Text="Telefon:"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" ></asp:TextBox>
                &nbsp;
                <asp:Button ID="Button1" runat="server" Text="Traži" />
                <br />
                <br />
                <asp:Label ID="Label4" runat="server" Text="Prezime:"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                &nbsp;
                <asp:Label ID="Label5" runat="server" Text="Mesto:"></asp:Label>
                <asp:DropDownList ID="DropDownList1" runat="server"></asp:DropDownList>
                &nbsp;
                <asp:Label ID="Label6" runat="server" Text="Email"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                <br />
                <br />
                <hr class="gray_line"/>
                <br />

                <asp:GridView ID="GridView1" runat="server" HeaderStyle-ForeColor="Wheat" HeaderStyle-BackColor="#264c73"
                     BorderColor="Gray" RowStyle-BorderColor="gray" RowStyle-HorizontalAlign="Left" BorderWidth="1px" Width="100%">


                </asp:GridView>          
                
                
            </div>
        </div>
        <div class="footer">
            <div class="fcol1">
                Elektrotehnička škola "Zemun" Beograd
            </div>
            <div class="fcol2">              
                <a class="a" href="/VazniTelefoni.aspx">Važni telefoni</a>
                <a class="a" href="/KorisnickoUputstvo.aspx">Uputstvo</a>
                <a class="a" href="">O autoru</a>
                
            </div>           
        </div>
        </div>
    </form>
</body>
</html>
