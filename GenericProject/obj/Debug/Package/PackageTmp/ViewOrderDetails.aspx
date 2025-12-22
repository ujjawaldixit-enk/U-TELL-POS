<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewOrderDetails.aspx.cs" Inherits="GenericProject.ViewOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .DropContent {
            padding: 0.571rem 1rem;
            font-size: 1rem;
            font-weight: 400;
            width: 100%;
            line-height: 1.45;
            background-color: #fff;
            background-clip: padding-box;
            border: 1px solid #d8d6de;
            border-radius: 0.357rem;
        }
    </style>
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
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row">
                                <div class="col-md-12">
                                    <a href="OrderList.aspx" id="btnOrderList" runat="server" style="float: right;" class="dt-button create-new btn btn-primary">Order List</a>
                                    <asp:Button runat="server" ID="btnCancelOrder" Text="Cancel Order" CssClass="btn btn-primary" OnClick="btnCancelOrder_Click" />
                                    <asp:Button runat="server" ID="btnAcceptOrder" Text="Accept Order" CssClass="btn btn-primary" OnClick="btnAcceptOrder_Click" />
                                    <asp:Button runat="server" ID="btnDelivery" Text="Delivered Device" CssClass="btn btn-primary" OnClick="btnDelivery_Click" />
                                    <asp:Button runat="server" ID="btnUpdateRefund" Text="Update As Amount Refunded" CssClass="btn btn-primary" OnClick="btnUpdateRefund_Click" />
                                </div>
                                <div class="col-md-12" style="margin-top:20px;">
                                    <asp:HiddenField runat="server" ID="hddnID" />
                                    <asp:HiddenField runat="server" ID="hddnEmailID" />
                                    <asp:HiddenField runat="server" ID="hddnPlanID" />
                                    <asp:HiddenField runat="server" ID="hddncountries" />
                                    <asp:HiddenField runat="server" ID="hddnNumberOfDays" />
                                    <asp:HiddenField runat="server" ID="hddnRequestedBy" />
                                    <asp:HiddenField runat="server" ID="hddnLoginID" />
                                    <asp:HiddenField runat="server" ID="hddnChargeAmount" />
                                    <asp:HiddenField runat="server" ID="hddnName" />
                                    <asp:HiddenField runat="server" ID="hddnDeviceNumber" />
                                    <table class="table table-bordered">
                                         <tr>
                                            <td colspan="2"><b style="font-size: 20px;">Order Details</b></td>
                                        </tr>
                                        <tr>
                                            <td><b>Order ID : </b><span runat="server" id="spnTXNID"></span></td>
                                            <td><b>Order Date & time : </b><span runat="server" id="spnOrderDtTm"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Order Status : </b><span runat="server" style="padding: 5px; color: white; border-radius: 10px; font-weight: bold;" id="spnRequestStatus"></span></td>
                                            <td><b>Processed Date & time : </b><span runat="server" id="spnProcessedDtTm"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Contact Person Name : </b><span runat="server" id="spnContactPersonName"></span></td>
                                            <td><b>Contact Number : </b><span runat="server" id="spnContactNumber"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Requested By : </b><span runat="server" id="spnRequestedBy"></span></td>
                                            <td><b>Refund Status : </b><span runat="server" id="spnRefundStatus"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Device Cost($) : </b><span runat="server" id="spnDeviceCost"></span></td>
                                           <td><b>Delivery Charge($) : </b><span runat="server" id="spnDeliveryCharge"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Service Charge($) : </b><span runat="server" id="spnServiceCharge"></span></td>
                                            <td><b>Counpon Value : </b><span runat="server" id="spnCounponValue"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Total Charge Amount($) : </b><span runat="server" id="spnTotalChargeAmount"></span></td>
                                            <td><b>Payble Amount($) : </b><span runat="server" id="spnPaybleAmount"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Plan : </b><span runat="server" id="spnPlan"></span></td>
                                            <td><b>Number Of Days : </b><span runat="server" id="spnNumberOfDays"></span></td>
                                        </tr>
                                        <tr>
                                            <td colspan="2"><b>Address : </b><span runat="server" id="spnAddress"></span></td>
                                        </tr>
                                        <tr>
                                            <td><b>Remarks : </b><span runat="server" id="spnRemarks"></span></td>
                                            <td><b>Device Number : </b><span runat="server" id="spnDeviceNumber"></span></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="modalStripe modal fade bs-example-modal-lg show" id="UpdateCancel" role="dialog" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12">
                            <label runat="server" style="font-weight: bold; font-size: 20px;">Cancel Order</label>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <asp:TextBox runat="server" ID="txtTXNID" ClientIDMode="Static" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:TextBox  runat="server" ID="txtRemarks" TextMode="MultiLine" Style="height: 100px;" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px; text-align:right;">
                            <asp:Button runat="server" ID="btnCancelSubmit" ClientIDMode="Static" CssClass="btn btn-primary" Text="Submit" OnClick="btnCancelSubmit_Click" />
                            <asp:Button runat="server" ID="btnClose" ClientIDMode="Static" CssClass="btn btn-primary" Text="Close" OnClick="btnClose_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

    <div class="modalStripe modal fade bs-example-modal-lg show" id="AcceptOrder" role="dialog" runat="server">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <div class="row">
                        <div class="col-md-12">
                            <label runat="server" style="font-weight: bold; font-size: 20px;">Accept Order</label>
                        </div>
                    </div>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:TextBox runat="server" ID="txtAcceptTXNID" ClientIDMode="Static" ReadOnly="true" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px;">
                            <asp:DropDownList runat="server" ID="ddlFreeDevice" ClientIDMode="Static" CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px; text-align: right;">
                            <asp:Button runat="server" ID="btnSuccessSubmit" ClientIDMode="Static" CssClass="btn btn-primary" Text="Submit" OnClick="btnSuccessSubmit_Click" />
                            <asp:Button runat="server" ID="btnSuccessClose" ClientIDMode="Static" CssClass="btn btn-primary" Text="Close" OnClick="btnClose_Click" />
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>

</asp:Content>

