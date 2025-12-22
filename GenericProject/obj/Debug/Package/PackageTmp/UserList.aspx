<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="UserList.aspx.cs" Inherits="GenericProject.UserList" %>

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
                                    <asp:DropDownList runat="server" ID="ddlStatus" CssClass="dropdown DropContent">
                                        <asp:ListItem Value="2">All</asp:ListItem>
                                        <asp:ListItem Value="1">Active</asp:ListItem>
                                        <asp:ListItem Value="0">Not-Active</asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <asp:Button runat="server" ID="btnSearch" CssClass="btn btn-primary" Text="Search" OnClick="btnSearch_Click" />
                                </div>
                                <div class="col-md-6">
                                    <a href="AddUser.aspx" style="float: right;" class="dt-button create-new btn btn-primary">+ NEW</a>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12">
                                    <asp:Repeater ID="RepeaterUSERList" runat="server" OnItemCommand="RepeaterUSERList_ItemCommand">
                                        <HeaderTemplate>
                                            <table id="exampleTbl" class="table  table-bordered" width="100%">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Username</th>
                                                        <th>Email ID</th>
                                                        <th>Role Name</th>
                                                        <th>Create Date</th>
                                                        <th>Status</th>
                                                        <th colspan="2" style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="Sno" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblName" Text='<%# Eval("Name") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblUserName" Text='<%# Eval("Username") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblEmailID" Text='<%# Eval("EmailID") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblRoleName" Text='<%# Eval("RoleName") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCreatedDtTm" Text='<%# Eval("CreatedDtTm") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblStatus" Text='<%# Eval("Status") %>' />
                                                </td>
                                                <td style="text-align:center;">
                                                    <asp:LinkButton ID="lnkView" runat="server" CommandName="ViewDealer" class="btn btn-primary itembtn" CommandArgument='<%#Eval("ID") %>' title="View"><i class="ri-eye-fill"></i></asp:LinkButton>
                                                    <asp:LinkButton ID="lnkEdit" runat="server" CommandName="EditDealer" class="btn btn-primary itembtn" CommandArgument='<%#Eval("ID") %>' title="Edit"><i class="ri-pencil-fill"></i></asp:LinkButton>
                                                    <asp:LinkButton ID="lnkUpdateStatus" runat="server" CommandName="ChangeStatus" class="btn btn-primary itembtn" OnClientClick="return confirm('Are you sure you want to Change the Status?');" CommandArgument='<%#Eval("ID") %>' title="Update Status"><i class="ri-settings-fill"></i></asp:LinkButton>
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

