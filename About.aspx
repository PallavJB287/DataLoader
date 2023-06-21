<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DataLoader.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
            <h1>Area form</h1>
            <hr />
            <form class="mt-4" id="Form_submit">
                <div class="mb-3">
                    <label for="id" class="form-label">ID:</label>
                    <input type="number" id="id" name="id" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="existing_kind" class="form-label">EXISTING_KIND:</label>
                    <select class="form-select" id="existing_kind" runat="server">
                        <option value="0">Select</option>
                        <option value="1">ACTUAL</option>
                        <option value="2">PLANNED</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="versions" class="form-label">VERSIONS:</label>
                    <input type="text" id="versions" name="versions" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="name" class="form-label">NAME:</label>
                    <input type="text" id="name" name="name" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="original_source" class="form-label">ORIGINAL_SOURCE:</label>
                    <input type="text" id="original_source" name="original_source" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="remark" class="form-label">REMARK:</label>
                    <input type="text" id="remark" name="remark" class="form-control">
                </div>

                <div class="mb-3">
                    <label for="shape" class="form-label">SHAPE:</label>
                    <input type="null" id="shape" name="shape" class="form-control">
                </div>

                <%-- %><label for="insert_date">INSERT_DATE:</label>
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
                <br>--%>

                <asp:Button class="btn btn-primary" ID="SubmitFormClick" Text="Submit" runat="server" />
            </form>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </main>
</asp:Content>
