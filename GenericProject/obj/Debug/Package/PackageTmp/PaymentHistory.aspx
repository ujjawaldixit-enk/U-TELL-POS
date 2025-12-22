<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="PaymentHistory.aspx.cs" Inherits="GenericProject.PaymentHistory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="assets/libs/datatables.net-bs4/css/dataTables.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/datatables.net-buttons-bs4/css/buttons.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/datatables.net-select-bs4/css//select.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/libs/datatables.net-responsive-bs4/css/responsive.bootstrap4.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/bootstrap.min.css" id="bootstrap-style" rel="stylesheet" type="text/css" />
    <link href="assets/css/icons.min.css" rel="stylesheet" type="text/css" />
    <link href="assets/css/app.min.css" id="app-style" rel="stylesheet" type="text/css" />

    <style>
        .FailedClass {
            background-color: #f77e92;
            padding: 3px;
            color: white;
            border-radius: 5px;
        }
        .SuccessClass {
            background-color: #A4E4D1;
            padding: 3px;
            color: white;
            border-radius: 5px;
        }
    </style>


</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-md-12 table-responsive" style="height: 540px; overflow-y: scroll;">
                            <asp:Repeater ID="RepeaterPaymentHistory" runat="server" OnItemCommand="RepeaterPaymentHistory_ItemCommand">
                                <HeaderTemplate>
                                    <table class="table table-bordered header-item" style="width: 100%;">
                                        <thead>
                                            <tr>
                                                <th>TXNID</th>
                                                <th>DealerName</th>
                                                <th>AddedBy</th>
                                                <th>PaymentType</th>
                                                <th>Amount</th>
                                                <th>Status</th>
                                                <th>PaymenyMode</th>
                                                <th>Used Status</th>
                                                <th>Refund Status</th>
                                                <th></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblTXNID" Text='<%# Eval("TXNID") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblAddedBy" Text='<%# Eval("RequestBy") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblPaymentType" Text='<%# Eval("PaymentTypeDetails") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblAmount" Text='<%# Eval("Amount") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblPaymenyMode" Text='<%# Eval("PaymentModeDetails") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblIsUsed" Text='<%# Eval("UsedDetails") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblIsRefund" Text='<%# Eval("RefundDetails") %>' />
                                        </td>
                                        <td>
                                            <asp:Label runat="server" ID="lblPaymentTypeID" Text='<%# Eval("PaymentTypeID") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblPaymentMode" Text='<%# Eval("PaymentMode") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblRequestStatus" Text='<%# Eval("RequestStatus") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblIsUsedID" Text='<%# Eval("IsUsed") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblIsRefundid" Text='<%# Eval("IsRefund") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblRequestFrom" Text='<%# Eval("RequestFrom") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblID" Text='<%# Eval("RID") %>' Visible="false" />
                                            <asp:LinkButton ID="lnkView" runat="server" CommandName="View" CommandArgument='<%# Container.ItemIndex %>' title="View"><i class="ri-eye-2-fill"></i></asp:LinkButton>
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
</asp:Content>

