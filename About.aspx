<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DataLoader.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
        <h1>W_SHAPE_POINTS_</h1>
        <hr/>
            <form>
                <label for="id">ID:</label>
                <input type="number" id="id" name="id"><br>
                <br>

                <label for="existing_kind">EXISTING_KIND:</label>
                <input type="text" id="existing_kind" name="existing_kind"><br>
                <br>

                <label for="versions">VERSIONS:</label>
                <input type="text" id="versions" name="versions"><br>
                <br>

                <label for="name">NAME:</label>
                <input type="text" id="name" name="name"><br>
                <br>

                <label for="original_source">ORIGINAL_SOURCE:</label>
                <input type="text" id="original_source" name="original_source"><br>
                <br>

                <label for="remark">REMARK:</label>
                <input type="text" id="remark" name="remark"><br>
                <br>

                <label for="shape">SHAPE:</label>
                <input type="null" id="shape" name="shape"><br>
                <br>

                <label for="insert_date">INSERT_DATE:</label>
                <input type="date" id="insert_date" name="insert_date"><br>
                <br>

                <label for="insert_user">INSERT_USER_:</label>
                <input type="text" id="insert_user" name="insert_user"><br>
                <br>

                <label for="update_date">UPDATE_DATE:</label>
                <input type="date" id="update_date" name="update_date"><br>
                <br>

                <label for="update_user">UPDATE_USER:</label>
                <input type="text" id="update_user" name="update_user"><br>
                <br>

                <input type="submit" value="Submit">
            </form>
    </main>
</asp:Content>
