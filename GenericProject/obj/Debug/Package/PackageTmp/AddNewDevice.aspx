<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="AddNewDevice.aspx.cs" Inherits="GenericProject.AddNewDevice" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <style>
        .DropContent {
            padding: 0.5rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            width: 100%;
            line-height: 1.4;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #d8d6de;
            border-radius: 0.357rem;
        }
    </style>
    <style>
        .itembtn {
            padding: 0.2rem 0.5rem;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-12">
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="row">
                                        <div class="col-md-4">
                                            <label>Network</label>
                                            <asp:DropDownList runat="server" ID="ddlNetwork" CssClass="dropdown DropContent">
                                            </asp:DropDownList>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Purchase Code</label>
                                            <asp:TextBox runat="server" ID="txtPurchaseCode" CssClass="form-control" ReadOnly="false"></asp:TextBox>
                                        </div>
                                        <div class="col-md-4">
                                            <label>Invoice Number</label>
                                            <asp:TextBox runat="server" ID="txtInvoiceCode" CssClass="form-control" ReadOnly="false"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="row" style="margin-top: 20px;" runat="server">
                                        <div class="col-md-12">
                                            <asp:CheckBox runat="server" ID="chkBulkUpload" Text="Bulk Upload" AutoPostBack="true" OnCheckedChanged="chkBulkUpload_CheckedChanged" />
                                        </div>
                                    </div>
                                    <div class="row" runat="server" id="bulkUploadDiv" visible="false" style="margin-top: 20px;">
                                        <div class="col-md-3">
                                            <label>Upload File</label>
                                            <asp:FileUpload runat="server" ID="BulkUpload" CssClass="form-control" />
                                        </div>
                                        <div class="col-md-3" style="margin-top: 29px;">
                                            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnUpload" Text="Upload" OnClick="btnUpload_Click" />
                                            <a href="Format/BlankDeviceFormat.csv" style="float: right;" class="dt-button create-new btn btn-primary">Download Format</a>
                                        </div>
                                    </div>
                                    <div class="row" runat="server" id="SingleUploadDiv" style="margin-top: 20px;">
                                        <div class="col-md-3">
                                            <label>Device Number</label>
                                            <asp:TextBox runat="server" ID="txtDeviceNumber" MaxLength="20" CssClass="form-control" placeholder="Device Number"></asp:TextBox>
                                        </div>
                                        <div class="col-md-3" style="margin-top: 29px;">
                                            <asp:Button runat="server" CssClass="btn btn-primary" ID="btnAddDeviceNumber" Text="Add Device Number" OnClick="btnAddDeviceNumber_Click" />
                                        </div>
                                    </div>
                                    <div class="row" runat="server" id="RepeaterDiv" visible="false" style="margin-top: 20px;">
                                        <div class="col-md-12">
                                            <asp:Repeater ID="rptDeviceNumberList" runat="server" OnItemCommand="rptSerialnumberList_ItemCommand">
                                                <HeaderTemplate>
                                                    <table id="exampleTbl" class="table table-striped table-bordered table-hover">
                                                        <thead>
                                                            <tr>
                                                                <th>S.No.</th>
                                                                <th>Device Number</th>
                                                                <th>Status</th>
                                                                <th>Reason</th>
                                                                <th>Action</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                </HeaderTemplate>
                                                <ItemTemplate>
                                                    <tr>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex+1 %>'></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblDeviceNumber" Text='<%# Eval("DeviceNumber") %>'></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>'></asp:Label>
                                                        </td>
                                                        <td>
                                                            <asp:Label runat="server" ID="lblReason" Text='<%# Eval("Reason") %>'></asp:Label>
                                                        </td>
                                                        <td style="width: 150px;">
                                                            <asp:LinkButton runat="server" ID="lnkAction" CommandArgument='<%# Container.ItemIndex %>' CommandName="Delete" CssClass="btn btn-danger" Text="Delete"></asp:LinkButton>
                                                        </td>
                                                    </tr>
                                                </ItemTemplate>
                                                <FooterTemplate>
                                                    </tbody>
                                    </table>
                                                </FooterTemplate>
                                            </asp:Repeater>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12" style="margin-top: 30px;">
                                    <asp:Button runat="server" ID="btnSubmit" CssClass="btn btn-success" Text="Submit" OnClick="btnSubmit_Click" Visible="false" />
                                    <asp:Button runat="server" ID="btnClear" CssClass="btn btn-danger" Text="Clear" OnClick="btnClear_Click" />
                                    <a href="PurchasedDevice.aspx" class="dt-button create-new btn btn-primary">Device Purchase List</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

