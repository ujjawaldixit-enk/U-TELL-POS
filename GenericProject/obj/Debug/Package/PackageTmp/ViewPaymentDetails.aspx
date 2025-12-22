<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewPaymentDetails.aspx.cs" Inherits="GenericProject.ViewPaymentDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12" style="width: 100% !important;">
                                    <asp:HiddenField runat="server" ID="hddnID" />
                                    <asp:HiddenField runat="server" ID="hddnIsUsed" />
                                    <asp:HiddenField runat="server" ID="hddnIsrefund" />
                                    <asp:HiddenField runat="server" ID="hddnPaymentMode" />
                                    <asp:HiddenField runat="server" ID="hddnRequestStatus" />
                                    <asp:HiddenField runat="server" ID="hddnPaymentTypeID" />
                                    <table class="table table-bordered" runat="server" id="paymentDetails" style="display: none; width: 100%;">
                                        <tr>
                                            <th><b>Transaction ID : </b><span runat="server" id="spnTXNID" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Status : </b><span runat="server" id="spnStatus" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Payment Date : </b><span runat="server" id="spnRequesteDate" style="font-weight:bold; color:black;"></span></th>
                                        </tr>
                                        <tr>
                                            <th><b>Dealer Name : </b><span runat="server" id="spnDealerName" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Added By : </b><span runat="server" id="spnRequestBy" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Amount : </b><span runat="server" id="spnAmount" style="font-weight:bold; color:black;"></span></th>
                                        </tr>
                                        <tr>
                                            <th><b>Payment Mode : </b><span runat="server" id="spnPaymentModeDetails" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Payment Type : </b><span runat="server" id="spnPaymentTypeDetails" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Order ID : </b><span runat="server" id="spnThirdPartyOrderID" style="font-weight:bold; color:black;"></span></th>
                                        </tr>
                                        <tr>
                                            <th><b>Requested From : </b><span runat="server" id="spnRequestFrom" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Used Details : </b><span runat="server" id="spnUsedDetails" style="font-weight:bold; color:black;"></span></th>
                                            <th><b>Refund Details : </b><span runat="server" id="spnRefundDetails" style="font-weight:bold; color:black;"></span></th>
                                        </tr>
                                        <tr>
                                            <th><b>RefundTxnID : </b><span runat="server" id="spnRefundTxnID" style="font-weight:bold; color:black;"></span></th>
                                            <th colspan="2"><b>Remarks : </b><span runat="server" id="spnRemarks" style="font-weight:bold; color:black;"></span></th>
                                        </tr>
                                    </table>
                                    <button type="button" class="btn btn-primary waves-effect waves-light" data-toggle="modal" runat="server" id="btnUpdateDetails" data-target="#myModal">Update AS Refund</button>
                                    <asp:Button runat="server" ID="btnBack" CssClass="btn btn-warning" Text="Back" OnClick="btnBack_Click" />
                                    <asp:Label runat="server" ID="lblNodataFound" Style="font-size: 20px; font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div id="myModal" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title mt-0" id="myModalLabel">Update Refund Details</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <label>Refund Transaction ID</label>
                    <asp:TextBox runat="server" ID="txtrefundOrderID" ClientIDMode="Static" CssClass="form-control"></asp:TextBox>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-light waves-effect" data-dismiss="modal">Close</button>
                    <asp:Button runat="server" ID="btnUpdateRefund" OnClick="btnUpdateRefund_Click" CssClass="btn btn-primary waves-effect waves-light" Text="Update"/>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
