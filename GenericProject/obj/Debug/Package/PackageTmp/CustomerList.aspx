<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CustomerList.aspx.cs" Inherits="GenericProject.CustomerList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .modalStripe {
            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            background-color: rgba(0, 0, 0, 0.5);
            left: 1px;
            z-index: 1550;
            min-height: 100%;
            width: 100%;
            overflow: auto;
            outline: 0;
            margin: 0 auto;
            margin-left: 0px;
            border: 0px solid gray;
        }

        .modal-dialog {
            margin-top: 5%;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="card" style="padding: 20px; width: 100% !important;">
                    <div class="row" style="margin-top: 20px;">
                        <div class="col-md-12 card-datatable table-responsive" style="height: 540px; overflow-y: scroll;">
                            <asp:Repeater ID="RepeaterCustomerList" runat="server" OnItemCommand="RepeaterCustomerList_ItemCommand">
                                <HeaderTemplate>
                                    <table class="table table-bordered" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Name</th>
                                                <th>Contact_Number</th>
                                                <th>Contact_Email_ID</th>
                                                <th>Status</th>
                                                <th>Create_Date</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblDealerID" Text='<%# Eval("ID") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblContactNumber" Text='<%# Eval("ContactNumber") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblContactEmailID" Text='<%# Eval("ContactEmailID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblCreatedDtTm" Text='<%# Eval("CreatedDtTm") %>' />
                                        </td>
                                        <td style="text-align: center;">
                                            <asp:LinkButton ID="lnkEdit" runat="server" CommandName="Update" CommandArgument='<%# Container.ItemIndex %>' title="Edit"><i class="ri-pencil-fill"></i></asp:LinkButton>
                                            <asp:LinkButton ID="lnkView" runat="server" CommandName="VIEW" CommandArgument='<%# Container.ItemIndex %>' title="Edit"><i class="ri-eye-fill"></i></asp:LinkButton>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                            </table>
                                </FooterTemplate>
                            </asp:Repeater>
                            <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; font-weight: bold;"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modalStripe modal fade bs-example-modal-lg show" id="UpdateOfferID" role="dialog" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12">
                            <label runat="server" style="font-weight: bold; font-size: 20px;">Update Customer Details</label>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:HiddenField runat="server" ID="hdid" />
                            <asp:HiddenField ID="hfModalState" runat="server" />
                            <label class="control-label">Dealer Name<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtdealername" runat="server" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <label class="control-label">Contact EmailID<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtemailid" runat="server" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <label class="control-label">Contact Number<small class="txt-color-red">*</small></label>
                            <asp:TextBox ID="txtcontactno" runat="server" CssClass="form-control alphabetWithSomeSpeChar"></asp:TextBox>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 39px; text-align: right;">
                            <asp:Button ID="Button1" CssClass="btn btn-primary" runat="server" Text="Update" OnClick="btnSave_Click" />
                            <asp:Button ID="btnCancel" CssClass="btn btn-danger" runat="server" Text="Close" OnClick="btnCancel_ViewDevices_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modalStripe modal fade bs-example-modal-lg show" id="ViewDeviceNumbers" role="dialog" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12">
                            <label runat="server" style="font-weight: bold; font-size: 20px;">Customer Device List</label>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12" id="divrptdevicenumber" runat="server" style="height: 400px; overflow-y: scroll;">
                            <asp:Repeater ID="rptdevicenumber" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-bordered" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>Device Number</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("SerialNumber") %>' />
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <asp:Label runat="server" ID="lblmodelmsg" Style="font-size: 20px; font-weight: bold;"></asp:Label>
                    </div>
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 39px; text-align: right;">
                            <asp:Button ID="btnCancel_ViewDevices" CssClass="btn btn-danger" runat="server" Text="Close" OnClick="btnCancel_ViewDevices_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>


