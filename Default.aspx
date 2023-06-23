<%@ Page Title="Lease Form" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataLoader._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <div class="container w-50 border border-1 rounded rounded-3 p-5">
            <h1>Lease Form</h1>
            <hr />
            <form class="mt-4" id="Form_submit">
                <div class="mb-3">
                    <label for="id1" class="form-label">ID</label>
                    <asp:TextBox TextMode="Number" class="form-control" ID="id1" runat="server" placeholder="Enter id"></asp:TextBox>
                </div>

                <div class="mb-3">
                    <label for="lease_id" class="form-label">LEASE_ID</label>
                    <input type="text" class="form-control" id="lease_id" placeholder="Lease ID" runat="server">
                </div>

                <div class="mb-3">
                    <label for="block_type" class="form-label">BLOCK_TYPE</label>
                    <select class="form-select" id="block_type" runat="server">
                        <option>Select</option>
                        <option value="REL">REL</option>
                        <option value="PEL_OLD">PEL_OLD</option>
                        <option value="ML">ML</option>
                        <option value="NEL">NEL</option>
                        <option value="PSC">PSC</option>
                        <option value="PML">PML</option>
                        <option value="PEL">PEL</option>
                        <option value="JVE">JVE</option>
                        <option value="HELP">HELP</option>
                        <option value="DSF">DSF</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="nelp_round" class="form-label">NELP_ROUND</label>
                    <input type="text" class="form-control" name="NELP_ROUND" id="nelp_round" placeholder="NELP_ROUND" runat="server">
                </div>

                <div class="mb-3">
                    <label for="min_refno" class="form-label">MINISTRY_REFERENCE_NO</label>
                    <input type="text" class="form-control" name="MINISTRY_REFERENCE_NO" id="min_refno" placeholder="MINISTRY_REFERENCE_NO" runat="server">
                </div>

                <div class="mb-3">
                    <label for="lease_no" class="form-label">LEASE_NUMBER</label>
                    <input type="text" class="form-control" name="LEASE_NUMBER" id="lease_no" placeholder="LEASE_NUMBER" runat="server">
                </div>

                <div class="mb-3">
                    <label for="state_name" class="form-label">STATE_NAME</label>
                    <select id="States" class="form-select" runat="server">
                        <option>Select</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="project" class="form-label">PROJECT</label>
                    <select id="Projects" class="form-select" runat="server">
                        <option>Select</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="block_name" class="form-label">BLOCK_NAME</label>
                    <select id="Block" class="form-select" runat="server">
                        <option>Select</option>
                    </select>
                </div>

                <div class="mb-3">
                    <label for="eff_date" class="form-label">EFFECTIVE_DATE</label>
                    <input type="date" class="form-control" name="EFFECTIVE_DATE" id="eff_date" placeholder="Lease ID" runat="server">
                </div>

                <div class="mb-3">
                    <label for="ext_year" class="form-label">EXT_YEAR</label>
                    <input type="number" class="form-control" name="EXT_YEAR" id="ext_year" placeholder="2015" min="1990" step="1" runat="server">
                </div>

                <div class="mb-3">
                    <label for="remark" class="form-label">Remarks</label>
                    <textarea class="form-control" id="remark" rows="3" runat="server"></textarea>
                </div>

                <div class="mb-3">
                    <label for="area_id" class="form-label">AREA_ID</label>
                    <input type="number" class="form-control" id="area_id" placeholder="110" runat="server">
                </div>


                <asp:Button class="btn btn-primary" ID="SubmitFormClick" OnClick="SubmitForm_Click" Text="Submit" runat="server" />

            </form>
        </div>
        <%-- <div id="prjOutput" runat="server">
    </div> --%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </main>

</asp:Content>
