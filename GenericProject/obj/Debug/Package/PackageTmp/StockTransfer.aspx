<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="StockTransfer.aspx.cs" Inherits="GenericProject.StockTransfer" %>

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

                            <div class="row" runat="server" id="DivMain">
                                <div class="col-md-12">
                                    <a href="AddStockTransfer.aspx" style="float: right;" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                                <div class="col-md-12" style="margin-top: 20px;">
                                    <asp:Repeater ID="RepeaterSimTransfer" runat="server">
                                        <HeaderTemplate>
                                            <table id="tblPurchaseSimTrans" class="table table-striped table-bordered table-hover" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>S.No</th>
                                                        <th>Transfer From</th>
                                                        <th>Transfer To</th>
                                                        <th>Transfered By</th>
                                                        <th>Transfer Date</th>
                                                        <th>Device Count</th>
                                                        <th>Action Type</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblTransferFrom" Text='<%# Eval("TransferFrom") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblTransferTo" Text='<%# Eval("TransferTo") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblTransferedBy" Text='<%# Eval("TransferedBy") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblTransferDate" Text='<%# Eval("TransferDate") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblDeviceCount" Text='<%# Eval("DeviceCount") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblActionType" Text='<%# Eval("ActionType") %>' />
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
                            <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; margin-top: 20px; font-weight: bold;"></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <script>
        $(document).ready(function () {
            $("#txtSearch").on("keyup", function () {
                var value = $(this).val().toLowerCase();
                $("#tblSearch tr").filter(function () {
                    $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                });
            });
        });
    </script>
</asp:Content>

