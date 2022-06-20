<%@ Page Title="GAPPI Admin" Language="C#" ClientIDMode="Static" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GAPPI.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container d-flex flex-column min-vh-100 mt-5">
                <asp:GridView ID="gvAllPrecedents" runat="server" AutoGenerateColumns="False"
                    CssClass="table table-striped table-borded mydatatable table-hover">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="Location" HeaderText="Location" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Designer" HeaderText="Designer" />
                    </Columns>
                    <HeaderStyle BackColor="#A41E35" ForeColor="White" />
                </asp:GridView>
            </div>
        </ContentTemplate>
    </asp:UpdatePanel>
    <!-- Modal -->
        <div class="modal fade" id="modifyModal" tabindex="-1" aria-labelledby="Modify Modal" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                ...
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>
</asp:Content>
<asp:Content ID="scripts" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.js"></script>

    <script>
        $(document).ready(function () {
            const oTable = $('#gvAllPrecedents').DataTable();
        });

        $('#gvAllPrecedents').on('click', 'tbody tr', function () {
            var currentRowData = $(this).closest("tr").find("td").map(function () {
                return $(this).text();
            }).get();

            $("#modifyModal").modal('toggle');
        });
    </script>
</asp:Content>
