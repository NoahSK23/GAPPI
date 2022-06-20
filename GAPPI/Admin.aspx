<%@ Page Title="GAPPI Admin" Language="C#" ClientIDMode="Static" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GAPPI.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.css" />
    <link href="css/admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server">
        <ContentTemplate>
            <div class="container d-flex flex-column mt-5 pt-5">
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
                    <h5 class="modal-title fw-bolder" id="modifyModalLabel"></h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="p-3 col">
                    <label class="row">
                        Location:
                        <label id="lblLocation"></label>
                    </label>
                    <label class="row">
                        Date:
                        <label id="lblDate"></label>
                    </label>
                    <label class="row">
                        Designer:
                        <label id="lblDesigner"></label>
                    </label>
                        </div>
                    <div class="d-flex justify-content-center">
                    <div class="pe-4">
                        <asp:LinkButton ID="btnModifyPage" CssClass="btn btn-primary border-danger" runat="server" PostBackUrl="~/AddPrecedent.aspx">Modify Precedent</asp:LinkButton>
                    </div>
                        <div>
                            <button type="button" data-bs-target="#deleteModal" data-bs-toggle="modal" class="btn btn-primary border-danger">Delete Precedent</button>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Second Confirmation Delete Modal -->
    <div class="modal fade" id="deleteModal" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="deleteModalLabel2">Confirm Deletion</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body alert alert-danger fw-bolder">
        Are you sure you want to delete this precedent?
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary border-danger" data-bs-dismiss="modal">Delete</button>
        <button class="btn btn-secondary" type="button" data-bs-target="#modifyModal" data-bs-toggle="modal">Cancel</button>
      </div>
    </div>
  </div>
</div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.js"></script>

    <script>
        $(document).ready(function () {
            const oTable = $('#gvAllPrecedents').DataTable();
        });

        $('#gvAllPrecedents').on('click', 'tbody tr', function () {
            var currentRowData = $(this).closest("tr").find("td").map(function () {
                return $(this).text();
            }).get();

            $('#modifyModal').modal('toggle');
            $('#modifyModalLabel').text(currentRowData[0]);
            $('#lblLocation').text(currentRowData[1]);
            $('#lblDate').text(currentRowData[2]);
            $('#lblDesigner').text(currentRowData[3]);
        });
    </script>
</asp:Content>
