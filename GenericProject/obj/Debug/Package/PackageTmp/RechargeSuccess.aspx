<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RechargeSuccess.aspx.cs" Inherits="GenericProject.RechargeSuccess" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function printpanel() {
            var panel = document.getElementById("divprint");
            var printWindow = window.open('', '', 'height=400,width=800');
            printWindow.document.write('<html><head><title>DIV Contents</title>');
            printWindow.document.write('</head><body >');
            printWindow.document.write(panel.innerHTML);
            printWindow.document.write('</body></html>');
            printWindow.document.close();
            setTimeout(function () {
                printWindow.print();
            }, 500);
            return false;
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="row form-group">
                            <div id="divprint" class="col-sm-12 col-md-12 col-lg-12">
                                <div id="divDistributor" style="border: 2px solid rgb(109, 126, 247);" runat="server" class="col-sm-6 col-md-6 col-lg-8">
                                    <div>
                                        <asp:Label ID="lblMessage" runat="server" Text="" Style="color: red; font-size: larger;"></asp:Label>
                                    </div>
                                    <div class="col-sm-12 col-md-12 col-lg-6">
                                        <asp:Label ID="lblBalanceText" runat="server" Text="Account Balance " Style="color: red; font-size: initial;"></asp:Label>
                                    </div>
                                    <div class="col-sm-12 col-md-12 col-lg-6">
                                        <asp:Label ID="lblBalance" runat="server" Text="" Font-Bold="true" Style="color: red; font-size: larger;"></asp:Label>
                                    </div>
                                    <div id="divPaymentDetail" runat="server">
                                        <div class="col-sm-3 col-md-3 col-lg-12">
                                            <asp:Label ID="lblTransactionAmount" runat="server" Style="text-transform: uppercase;" Text=""></asp:Label>
                                        </div>
                                        <div class="col-sm-12 col-md-12 col-lg-12">
                                            <asp:Label ID="lblTransactionDate" runat="server" Style="text-transform: uppercase;" Text=""></asp:Label>
                                        </div>
                                        <div class="col-sm-12 col-md-12 col-lg-12">
                                            <asp:Label ID="lblPayerName" runat="server" Style="text-transform: uppercase;" Text=""></asp:Label>
                                        </div>
                                        <div class="col-sm-12 col-md-12 col-lg-12">
                                            <asp:Label ID="lblAddress" runat="server" Style="text-transform: uppercase;" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-sm-6 col-md-6 col-lg-6">
                                    <asp:Label ID="lblresponse" runat="server" Visible="false" Text=""></asp:Label>
                                </div>
                            </div>
                        </div>
                        <div id="divBtn" runat="server" class="col-sm-12 col-md-12 form-group">
                            <asp:Button ID="btnPrint" runat="server" Text="Print" Visible="false" class="btn btn-primary" Style="height: 31px; margin: 10px 0 0 5px; padding: 0 22px; font: 300 15px/29px 'Open Sans',Helvetica,Arial,sans-serif; cursor: pointer;" OnClientClick="javascript:return printpanel()" />
                            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                                <asp:Button ID="btnCancel" runat="server" Text="Back" class="btn btn-primary" Style="height: 31px; margin: 10px 0 0 5px; padding: 0 22px; font: 300 15px/29px 'Open Sans',Helvetica,Arial,sans-serif; cursor: pointer;" OnClick="btnCancel_Click" />
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-12 form-group">
                            <div id="divlink" runat="server" visible="false" class="col-sm-12 col-md-12 col-lg-12">
                                <div>
                                    <div>
                                        <asp:HyperLink ID="HyperLink1" NavigateUrl="~/AddFunds.aspx" Class="pull-right" runat="server">Back to Topup</asp:HyperLink>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

