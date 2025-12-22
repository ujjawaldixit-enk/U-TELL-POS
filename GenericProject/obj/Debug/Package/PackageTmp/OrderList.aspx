<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="OrderList.aspx.cs" Inherits="GenericProject.OrderList" %>
  
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
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-3">
                                    <asp:DropDownList runat="server" ID="ddlStatus" CssClass="dropdown DropContent">
                                        <asp:ListItem Value="0">All</asp:ListItem>
                                        <asp:ListItem Value="49">Pending</asp:ListItem>
                                        <asp:ListItem Value="50">Accepted</asp:ListItem>
                                        <asp:ListItem Value="51">Cancelled</asp:ListItem>
                                        <asp:ListItem Value="52">Delivered</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <asp:TextBox runat="server" ID="txtTransactionID" Style="height:42px;" CssClass="form-control" placeholder="Transaction ID"></asp:TextBox>
                                </div>
                                 <div class="col-md-6">
                                    <asp:Button runat="server" ID="btnGetDetails" Style="height:42px;" CssClass="btn btn-primary" Text="Get Details" OnClick="btnGetDetails_Click" />
                                </div>
                                <div class="col-md-12" style="margin-top: 20px;">
                                    <asp:Repeater ID="RepeaterOrder" runat="server" OnItemCommand="RepeaterOrder_ItemCommand">
                                        <HeaderTemplate>
                                            <table id="tbOrder" class="table table-striped table-bordered table-hover" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>S.No</th>
                                                        <th>Contact Person</th>
                                                        <th>Contact Number</th>
                                                        <th>Order Number</th>
                                                        <th>Order Date</th>
                                                        <th>Order Status</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td style="text-align: center;">
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID")%> ' Visible="false" />
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblName" Text='<%# Eval("Name")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblContactNumber" Text='<%# Eval("ContactNumber")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblTXNID" Text='<%# Eval("TXNID")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblOrderDtTm" Text='<%# Eval("OrderDtTm")%> ' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblOrderDate" Text='<%# Eval("OrderDate")%> ' />
                                                </td> 
                                                <td style="text-align: center;">
                                                    <asp:LinkButton runat="server" CssClass="btn btn-primary itembtn" ID="lnkView" CommandArgument='<%# Container.ItemIndex %>' ToolTip="View" CommandName="View"><i class="ri-eye-fill"></i></asp:LinkButton>
                                                </td>
                                            </tr>
                                        </ItemTemplate>
                                        <FooterTemplate>
                                            </tbody>
                                </table>
                                        </FooterTemplate>
                                    </asp:Repeater>
                                    <asp:Label runat="server" ID="lblDataNotFound" Style="font-size: 25px; font-weight: bold;"></asp:Label>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

