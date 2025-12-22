<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DevicePurchaseCostMapping.aspx.cs" Inherits="GenericProject.DevicePurchaseCostMapping" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
    <script>
        $(document)
            .on('keydown', '.decimal', function (e) {
                var a = e.key;
                if (a.length == 1) return /[0-9]|[.]/i.test(a);
                return true;
            })
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="col-md-12" style="height:500px; overflow-y:scroll;">
                            <asp:Repeater ID="RepeaterDealer" runat="server">
                                <HeaderTemplate>
                                    <table class="table table-striped table-bordered" width="100%" id="myTable">
                                        <thead>
                                            <tr>
                                                <th>Dealer Name</th>
                                                <th>Device Purchase Cost*</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                </HeaderTemplate>
                                <ItemTemplate>
                                    <tr>
                                        <td>
                                            <asp:Label runat="server" ID="lblDealerID" Text='<%# Eval("DealerID") %>' Visible="false" />
                                            <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                        </td>
                                        <td>
                                            <asp:TextBox runat="server" ID="txtDevicePurchaseCost" CssClass="form-control decimal" Text='<%# Eval("PurchaseCost") %>'></asp:TextBox>
                                        </td>
                                    </tr>
                                </ItemTemplate>
                                <FooterTemplate>
                                    </tbody>
                                    </table>
                                </FooterTemplate>
                            </asp:Repeater>
                        </div>
                        <div class="col-md-12" style="margin-top: 20px; display: flex; text-align: right;">
                            <asp:Button ID="btnSave" runat="server" Text="Update Cost" Style="height: 37px;" OnClick="btnSave_Click" CssClass="btn btn-success" OnClientClick="if (!validateControlsAct()) { return false;};" />
                            <asp:Button ID="btnReset" runat="server" Text="Reset" CssClass="btn btn-danger" Style="margin-left: 5px; height: 37px;" OnClick="btnReset_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

