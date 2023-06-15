<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="DataLoader._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <main>
        <%-- <section class="row" aria-labelledby="aspnetTitle">
            <h1 id="aspnetTitle">ASP.NET</h1>
            <p class="lead">ASP.NET is a free web framework for building great Web sites and Web applications using HTML, CSS, and JavaScript.</p>
            <p><a href="http://www.asp.net" class="btn btn-primary btn-md">Learn more &raquo;</a></p>
        </section> --%>

        <%-- <div class="row">
            <section class="col-md-4" aria-labelledby="gettingStartedTitle">
                <h2 id="gettingStartedTitle">Getting started</h2>
                <p>
                    ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
                A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301948">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="librariesTitle">
                <h2 id="librariesTitle">Get more libraries</h2>
                <p>
                    NuGet is a free Visual Studio extension that makes it easy to add, remove, and update libraries and tools in Visual Studio projects.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301949">Learn more &raquo;</a>
                </p>
            </section>
            <section class="col-md-4" aria-labelledby="hostingTitle">
                <h2 id="hostingTitle">Web Hosting</h2>
                <p>
                    You can easily find a web hosting company that offers the right mix of features and price for your applications.
                </p>
                <p>
                    <a class="btn btn-default" href="https://go.microsoft.com/fwlink/?LinkId=301950">Learn more &raquo;</a>
                </p>
            </section>
        </div> --%>

        <div class="container w-50 border border-1 rounded rounded-3 p-5">
        <h1>Lease Form</h1>
        <hr/>
        <form class="mt-4">
            <div class="mb-3">
                <label for="id" class="form-label">ID</label>
                <input type="number" class="form-control" id="id" placeholder="Enter id">
              </div>
              <div class="mb-3">
                <label for="lease-id" class="form-label">Lease ID</label>
                <input type="text" class="form-control" id="lease-id" placeholder="Lease ID">
              </div>
              <div class="mb-3">
                <label for="lease-id" class="form-label">BLOCK_TYPE</label>
                <select class="form-select">
                    <option value="1">REL</option>
                    <option value="2">PEL_OLD</option>
                    <option value="3">ML</option>
                    <option value="4">NEL</option>
                    <option value="5">PSC</option>
                    <option value="6">PML</option>
                    <option value="7">PEL</option>
                    <option value="8">JVE</option>
                    <option value="9">HELP</option>
                    <option value="10">DSF</option>
                  </select>
              </div>
              <div class="mb-3">
                <label for="NELP_ROUND" class="form-label">NELP_ROUND</label>
                <input type="text" class="form-control" name="NELP_ROUND" id="NELP_ROUND" placeholder="NELP_ROUND">
              </div>
              <div class="mb-3">
                <label for="NELP_ROUND" class="form-label">MINISTRY_REFERENCE_NO</label>
                <input type="text" class="form-control" name="MINISTRY_REFERENCE_NO" id="MINISTRY_REFERENCE_NO" placeholder="MINISTRY_REFERENCE_NO">
              </div>  <div class="mb-3">
                <label for="NELP_ROUND" class="form-label">LEASE_NUMBER</label>
                <input type="text" class="form-control" name="LEASE_NUMBER" id="LEASE_NUMBER" placeholder="LEASE_NUMBER">
              </div>
              <div class="mb-3">
                <label for="NELP_ROUND" class="form-label">MINISTRY_REFERENCE_NO</label>
                <input type="text" class="form-control" name="MINISTRY_REFERENCE_NO" id="MINISTRY_REFERENCE_NO" placeholder="MINISTRY_REFERENCE_NO">
              </div>

              <div class="mb-3">
                <label for="EFFECTIVE_DATE" class="form-label">EFFECTIVE_DATE</label>
                <input type="date" class="form-control" name="EFFECTIVE_DATE" id="EFFECTIVE_DATE" placeholder="Lease ID">
              </div>
              <div class="mb-3">
                <label for="EXT_YEAR" class="form-label">EXT_YEAR</label>
                <input type="number" class="form-control" name="EXT_YEAR" id="EXT_YEAR" placeholder="2015" min="1990" step="1">
              </div>
              <div class="mb-3">
                <label for="Remark" class="form-label">Remarks</label>
                <textarea class="form-control" id="Remark" rows="3"></textarea>
              </div>
              <div class="mb-3">
                <label for="AREA_ID" class="form-label">AREA_ID</label>
                <input type="number" class="form-control" id="id" placeholder="110">
              </div>


              <button class="btn btn-primary ">Submit</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    </main>

</asp:Content>
