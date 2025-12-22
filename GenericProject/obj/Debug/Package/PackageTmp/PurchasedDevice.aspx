<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PurchasedDevice.aspx.cs" Inherits="GenericProject.PurchasedDevice" %>

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
                            </div>
                            <div class="row">
                                <div class="col-md-3" runat="server">
                                    <label class="control-label">From Date</label>
                                    <div class="input-group">
                                        <input type="text" name="mydate" placeholder="Select a date" data-provide="datepicker" runat="server" autocomplete="off" id="txtFromDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-3" runat="server">
                                    <label class="control-label">To Date</label>
                                    <div class="input-group">
                                        <input type="text" name="mydate" placeholder="Select a date" autocomplete="off" data-provide="datepicker" runat="server" id="txtToDate" onkeydown="return false" class="form-control picker flatpickr-input active" data-date-format="mm-dd-yyyy">
                                    </div>
                                </div>
                                <div class="col-md-3" runat="server" style="margin-top: 29px;">
                                    <asp:Button ClientIDMode="Static" runat="server" ID="btnGetDetails" CssClass="btn btn-primary" Text="Get Details" OnClick="btnGetDetails_Click" />
                                </div>
                                <div class="col-md-3" style="margin-top: 29px;">
                                    <a href="AddNewDevice.aspx" style="float: right;" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12">
                                    <asp:Repeater ID="rptDevicePurchase" runat="server" OnItemCommand="rptDevicePurchase_ItemCommand">
                                        <HeaderTemplate>
                                            <table id="exampleTbl" class="table table-bordered" style="width:100% !important;">
                                                <thead>
                                                    <tr>
                                                        <th style="text-align: center;">S.No</th>
                                                        <th style="text-align: center;">Purchase Number</th>
                                                        <th style="text-align: center;">Invoice Number</th>
                                                        <th style="text-align: center;">Network</th>
                                                        <th style="text-align: center;">Purchase Date</th>
                                                        <th style="text-align: center;">Count</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                    <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblPurchaseNumber" Text='<%# Eval("PurchaseNumber") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblInvoiceNumber" Text='<%# Eval("InvoiceNumber") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblNetworkName" Text='<%# Eval("NetworkName") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblPurchasedDate" Text='<%# Eval("PurchasedDate") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblDeviceCount" Text='<%# Eval("DeviceCount") %>' />
                                                </td>
                                                <td style="text-align: center;">
                                                    <asp:LinkButton ID="lnkView" runat="server" CommandName="View" class="btn btn-primary itembtn" CommandArgument='<%#Eval("ID") %>' title="View"><i class="ri-eye-fill"></i></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </tbody>
                                </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; margin-top: 20px; font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

