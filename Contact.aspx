<%@ Page Title="Shape Point Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="DataLoader.Contact" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
            <h1>Shape Point form</h1>
            <hr />
            <form class="mt-4" id="Form_submit">
                <div class="mb-3">
                    <label for="id" class="form-label">ID:</label>
                    <input type="number" id="id" name="id" runat="server" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="w_lease_id" class="form-label">W_LEASE_ID:</label>
                    <input type="number" id="w_lease_id" name="w_lease_id" runat="server" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="seq" class="form-label">SEQ:</label>
                    <input type="number" id="seq" name="seq" runat="server" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="lat_str_dms" class="form-label">LAT_STR_DMS:</label>
                    <input type="text" id="lat_str_dms" name="lat_str_dms" runat="server" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="lon_str_dms" class="form-label">LON_STR_DMS:</label>
                    <input type="text" id="lon_str_dms" name="lon_str_dms" runat="server" class="form-control">
                </div>

                <asp:Button class="btn btn-primary" ID="SubmitFormClick" OnClick="SubmitForm_Click" Text="Submit" runat="server" />
            </form>
        </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

    </main>
</asp:Content>
