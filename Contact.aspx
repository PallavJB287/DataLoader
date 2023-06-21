<%@ Page Title="Contact" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DataLoader.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main aria-labelledby="title">
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
        <h1>W_AREA</h1>
        <hr/>
        <form>
            <label for="id">ID:</label>
            <input type="number" id="id" name="id"><br>
          
            <label for="w_lease_id">W_LEASE_ID:</label>
            <input type="number" id="w_lease_id" name="w_lease_id"><br>
          
            <label for="seq">SEQ:</label>
            <input type="number" id="seq" name="seq"><br>
          
            <label for="lat_str_dms">LAT_STR_DMS:</label>
            <input type="text" id="lat_str_dms" name="lat_str_dms"><br>
          
            <label for="lon_str_dms">LON_STR_DMS:</label>
            <input type="text" id="lon_str_dms" name="lon_str_dms"><br>
          
            <label for="lat_dd">LAT_DD:</label>
            <input type="number" id="lat_dd" name="lat_dd"><br>
          
            <label for="lon_dd">LON_DD:</label>
            <input type="number" id="lon_dd" name="lon_dd"><br>
          
            <label for="insert_date">INSERT_DATE:</label>
            <input type="date" id="insert_date" name="insert_date"><br>
          
            <label for="insert_user">INSERT_USER_:</label>
            <input type="text" id="insert_user" name="insert_user"><br>
          
            <label for="update_date">UPDATE_DATE:</label>
            <input type="date" id="update_date" name="update_date"><br>
          
            <label for="update_user">UPDATE_USER_:</label>
            <input type="text" id="update_user" name="update_user"><br>
          
            <input type="submit" value="Submit">
          </form>
          </div>
    </main>
</asp:Content>
