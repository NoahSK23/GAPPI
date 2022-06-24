<%@ Page Title="GAPPI Admin" Language="C#" ClientIDMode="Static" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="GAPPI.Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.css" />
    <link href="css/admin.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:HiddenField ID="hdnID" runat="server" />
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
        <ContentTemplate>
            <div class="container">
                <div class="row pt-4">
                    <h1 class="col" style="font-weight: 900">Admin Page</h1>
                    <div class="col pt-1 text-end">
                        <asp:LinkButton ID="btnAddPrecedent" runat="server" CssClass="btn btn-lg btn-secondary border-dark" PostBackUrl="~/AddPrecedent.aspx"><i class="bi bi-plus"></i>Add Precedent</asp:LinkButton>
                    </div>
                </div>
                <div class="mb-4"></div>
                <asp:GridView ID="gvAllPrecedents" runat="server" AutoGenerateColumns="False"
                    CssClass="table table-striped table-borded table-hover w-100">
                    <Columns>
                        <asp:BoundField DataField="Title" HeaderText="Title" />
                        <asp:BoundField DataField="PrecedentID" HeaderText="PrecedentID">
                            <ControlStyle CssClass="d-none" />
                            <FooterStyle CssClass="d-none" />
                            <HeaderStyle CssClass="d-none" />
                            <ItemStyle CssClass="d-none" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Location" HeaderText="Location" />
                        <asp:BoundField DataField="Date" HeaderText="Date" />
                        <asp:BoundField DataField="Designer" HeaderText="Designer" />
                    </Columns>
                    <HeaderStyle BackColor="#A41E35" ForeColor="White" />
                </asp:GridView>
            </div>
            <div class="pt-3">
            </div>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnDelete" EventName="ServerClick" />
        </Triggers>
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
                    <div class="px-3 pb-3 col">
                        <div>
                            <label class="fw-bold">
                                Location:</label>
                            <label id="lblLocation"></label>
                        </div>
                        <div>
                            <label class="fw-bold">
                                Date:</label>
                            <label id="lblDate"></label>
                        </div>
                        <div>
                            <label class="fw-bold">
                                Designer:</label>
                            <label id="lblDesigner"></label>
                        </div>
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
                    <h5 class="modal-title fw-bolder" id="deleteModalLabel2">Confirm Deletion</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body alert alert-danger fw-bolder">
                    Are you sure you want to delete this precedent?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary border-danger" id="btnDelete" data-bs-dismiss="modal" runat="server" onserverclick="btnDeleteTest_Click">Delete</button>
                    <button class="btn btn-secondary" type="button" data-bs-target="#modifyModal" data-bs-toggle="modal">Cancel</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <script type="text/javascript" src="https://cdn.datatables.net/v/bs5/dt-1.12.1/datatables.min.js"></script>

    <script>
        //makes table a Data Table
        //$(document).ready(function () {
        //    $('#gvAllPrecedents').DataTable();
        //});
        //rebind datatable on async postback
        $(function () {
            bindDataTable();
            Sys.WebForms.PageRequestManager.getInstance().add_endRequest(bindDataTable);
        });
        function bindDataTable() {
            var myDT = $('#gvAllPrecedents').DataTable({
                "saveState": true
            });
        }
        //makes table clickable
        $(document).on('click', 'tbody tr', function () {
            var currentRowData = $(this).closest("tr").find("td").map(function () {
                return $(this).text();
            }).get();
            console.log('clicked');

            //fills in table labels with information
            $('#modifyModal').modal('toggle');
            console.log('PrecedentID: ', currentRowData[1]);
            $('#hdnID').val(currentRowData[1]);
            $('#modifyModalLabel').text(currentRowData[0]);
            $('#lblLocation').text(currentRowData[2]);
            $('#lblDate').text(currentRowData[3]);
            $('#lblDesigner').text(currentRowData[4]);
        });
    </script>
</asp:Content>
