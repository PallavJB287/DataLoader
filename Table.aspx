<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="DataLoader.Table" MasterPageFile="~/Site.Master" %>

<%--<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
    </form>
</body>
</html>--%>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="lease_data">
            <h2>W_LEASE_ Data</h2>
            <asp:GridView ID="leaseGridView" runat="server"></asp:GridView>
        </div>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="area_data">
            <h2>W_AREA_ Data</h2>
            <asp:GridView ID="areaGridView" runat="server"></asp:GridView>
        </div>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="shapepoint_data">
            <h2>W_SHAPE_POINTS_ Data</h2>
            <asp:GridView ID="shapeGridView" runat="server"></asp:GridView>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </main>
</asp:Content>
