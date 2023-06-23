<%@ Page Title="Area Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="DataLoader.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <main>
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
            <h1>Area form</h1>
            <hr />
            <form class="mt-4" id="Form_submit">
                <div class="mb-3">
                    <label for="id" class="form-label">ID:</label>
                    <asp:TextBox TextMode="Number" class="form-control" ID="id1" runat="server" placeholder="Enter id"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="existing_kind" class="form-label">EXISTING_KIND:</label>
                    <select class="form-select" id="existing_kind" runat="server">
                        <option>Select</option>
                        <option value="ACTUAL">ACTUAL</option>
                        <option value="PLANNED">PLANNED</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="versions" class="form-label">VERSIONS:</label>
                    <input type="text" id="versions" name="versions" class="form-control" runat="server">
                </div>

                <div class="mb-3">
                    <label for="name" class="form-label">NAME:</label>
                    <input type="text" id="name" name="name" class="form-control" runat="server">
                </div>

                <div class="mb-3">
                    <label for="original_source" class="form-label">ORIGINAL_SOURCE:</label>
                    <input type="text" id="original_source" name="original_source" class="form-control" runat="server">
                </div>

                <div class="mb-3">
                    <label for="remark" class="form-label">REMARK:</label>
                    <textarea class="form-control" id="remark" rows="3" runat="server"></textarea>
                </div>

                <div class="mb-3">
                    <label for="shape" class="form-label">SHAPE:</label>
                    <input type="null" id="shape" name="shape" class="form-control" runat="server">
                </div>

                <asp:Button class="btn btn-primary" ID="SubmitFormClick" OnClick="SubmitForm_Click" Text="Submit" runat="server" />
            </form>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </main>
</asp:Content>
