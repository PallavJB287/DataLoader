<%@ Page Title="Tabular Display" Language="C#" AutoEventWireup="true" CodeBehind="Table.aspx.cs" Inherits="DataLoader.Table" MasterPageFile="~/Site.Master" %>

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
    <style>
        #lease_data, #area_data, #shapepoint_data {
            width: 300px;
            height: 200px;
            overflow: auto;
        }

            #lease_data div, #area_data div, #shapepoint_data div {
                width: 100%;
                height: 100%;
                border-collapse: collapse;
            }

                #lease_data div table, #area_data div table, #shapepoint_data div table {
                    width: 100%;
                }

                    #lease_data div table td, #area_data div table td, #shapepoint_data div table td, #lease_data div table th, #area_data div table th, #shapepoint_data div table th {
                        border: 0.5px solid black;
                        font-size: 15px;
                    }
    </style>
    <main>
        <h2 style="text-align: center;">Lease Data</h2>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="lease_data">
            <asp:GridView ID="leaseGridView" runat="server"></asp:GridView>
        </div>
        <br />
        <h2 style="text-align: center;">Area Data</h2>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="area_data">
            <asp:GridView ID="areaGridView" runat="server"></asp:GridView>
        </div>
        <br />
        <h2 style="text-align: center;">Shape Points Data</h2>
        <div class="container w-50 border border-1 rounded rounded-3 p-5" id="shapepoint_data">
            <asp:GridView ID="shapeGridView" runat="server"></asp:GridView>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </main>
</asp:Content>
