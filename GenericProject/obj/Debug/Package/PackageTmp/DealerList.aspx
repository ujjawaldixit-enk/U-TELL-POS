<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DealerList.aspx.cs" Inherits="GenericProject.DealerList" %>

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
                            <div class="row">
                                <div class="col-md-3">
                                    <asp:DropDownList runat="server" ID="ddlStatus" CssClass="dropdown DropContent" AutoPostBack="true">
                                        <asp:ListItem Value="2">All</asp:ListItem>
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Not-Active</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-primary" Text="Search" OnClick="btnSearch_Click" />
                                </div>
                                <div class="col-md-6">
                                    <a href="AddDealer.aspx" id="btnAdd" runat="server" style="float: right;" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12 card-datatable table-responsive" style="height:500px; overflow-y:scroll;">
                                    <asp:Repeater ID="RepeaterDealerList" runat="server" OnItemCommand="RepeaterDealerList_ItemCommand">
                                        <HeaderTemplate>
                                            <table class="table table-bordered" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Contact Person</th>
                                                        <th>Parent Dealer</th>
                                                        <th>Contact Email ID</th>
                                                        <th>Status</th>
                                                        <th>Create Date</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblIndex" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblDealerID" Text='<%# Eval("DealerID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblDealerName" Text='<%# Eval("DealerName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblContactPerson" Text='<%# Eval("ContactPerson") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblParentName" Text='<%# Eval("ParentName") %>' />
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
                                                <td>
                                                    <asp:LinkButton ID="lnkView" runat="server" CommandName="ViewDealer" class="btn btn-primary itembtn" CommandArgument='<%#Eval("DealerID") %>' title="View"><i class="ri-eye-fill"></i></asp:LinkButton>
                                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="EditDealer" class="btn btn-primary itembtn" CommandArgument='<%#Eval("DealerID") %>' title="Edit"><i class="ri-edit-fill"></i></asp:LinkButton>
                                                    <asp:LinkButton ID="lnkUpdateStatus" runat="server" CommandName="UpdateStatus" OnClientClick="return confirm('Are you sure you want to Change the Status?');" class="btn btn-primary itembtn" CommandArgument='<%#Eval("DealerID") %>' title="Update Status"><i class="ri-settings-fill"></i></asp:LinkButton>
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
        </div>
    </div>
</asp:Content>

