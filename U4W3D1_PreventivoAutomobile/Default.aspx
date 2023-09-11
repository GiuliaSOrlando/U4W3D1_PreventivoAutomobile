<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="U4W3D1_PreventivoAutomobile.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />

</head>
<body class="bg-dark text-light">
    <div class="container">
    <form id="form1" runat="server">
        <h1 class="bg-black text-warning p-3 text-center">Concessionaria di lusso</h1>
        <div class="form-group">
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack CssClass="form-control">
                 <asp:ListItem Value="alfa.png"  Text="Alfa Romeo Giulia Quadrifoglio - 2.9L V6, 505 CV" />
                 <asp:ListItem Value="audi.png" Text="Audi A8 - 3.0L V6, 605 CV" />
                 <asp:ListItem Value="bmw.png" Text="BMW 7 Series - Vario" />
                 <asp:ListItem Value="bugatti.png" Text="Bugatti Chiron - 8.0L W16, 1,500 CV" />
                 <asp:ListItem Value="lambo.png" Text="Lamborghini Huracán - 5.2L V10, 602 CV" />
                 <asp:ListItem Value="mustang.png" Text="Ford Mustang Shelby GT500 - 5.2L V8, 760 CV" />
            </asp:DropDownList>
            
            <asp:Image ID="carPic" runat="server" Width="400px"/>
            <asp:Label ID="carPrice" runat="server" />
        </div>

        <div class="form-group">
            <asp:CheckBoxList ID="OptionalCheckBoxList" runat="server" CssClass="form-control">
                <asp:ListItem Text="Vernice metallizzata (€330,00)" Value="330.00" />
                <asp:ListItem Text="Fari Xeno (€180,00)" Value="180.00" />
                <asp:ListItem Text="Sistema navigazione satellitare (€1.800,00)" Value="1800.00" />
                <asp:ListItem Text="Line Assistant (€2.000,00)" Value="2000.00" />
                <asp:ListItem Text="Ruota di scorta (€155,00)" Value="155.00" />
                <asp:ListItem Text="Sedili/volante in pelle (€700,00)" Value="700.00" />
            </asp:CheckBoxList>
        </div>
        <div class="form-group mt-4">
            <asp:DropDownList ID="GaranziaDropDownList" runat="server" CssClass="form-control">
                <asp:ListItem Text="1 anno" Value="1" />
                <asp:ListItem Text="2 anni" Value="2" />
                <asp:ListItem Text="3 anni" Value="3" />
                <asp:ListItem Text="4 anni" Value="4" />
            </asp:DropDownList>
        </div>
        
        <div class="form-group">
            <asp:Label ID="PrezzoPartenzaLabel" runat="server" />
            <br />
            <asp:Label ID="CostoOptionalLabel" runat="server" />
            <br />
            <asp:Label ID="CostoGaranziaLabel" runat="server"/>
            <br />
            <asp:Label ID="CostoTotaleLabel" runat="server"/>
        </div>

        <asp:Button ID="CalcolaCostoTotale" CssClass="btn btn-warning" runat="server" Text="Calcola preventivo" OnClick="CalcolaCostoTotaleAlClick" />

    </form>
    </div>
</body>
</html>
