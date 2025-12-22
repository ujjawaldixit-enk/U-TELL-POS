<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="MessageList.aspx.cs" Inherits="GenericProject.MessageList" %>
  
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
                                <div class="col-md-12 card-datatable table-responsive">
                                    <asp:Repeater ID="RepeaterMessage" runat="server" OnItemCommand="RepeaterMessage_ItemCommand">
                                        <HeaderTemplate>
                                            <table class="table table-bordered" style="width: 100%;">
                                                <thead>
                                                    <tr>
                                                        <th>Name</th>
                                                        <th>Email ID</th>
                                                        <th>Subject Data</th>
                                                        <th>Mobile Number</th>
                                                        <th>Send Date</th>
                                                        <th style="text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                        </HeaderTemplate>
                                        <ItemTemplate>
                                            <tr>
                                                <td>
                                                    <asp:Label runat="server" ID="lblIndexid" Text='<%# Container.ItemIndex + 1 %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblName" Text='<%# Eval("Name") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblEmailID" Text='<%# Eval("EmailID") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblSubjectData" Text='<%# Eval("SubjectData") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblMobileNumber" Text='<%# Eval("MobileNumber") %>' />
                                                </td>
                                                <td>
                                                    <asp:Label runat="server" ID="lblCreateDate" Text='<%# Eval("CreateDate") %>' />
                                                </td>
                                                <td>
                                                    <asp:LinkButton ID="lnkView" runat="server" CommandName="ViewDealer" class="btn btn-primary itembtn" CommandArgument='<%#Eval("ID") %>' title="View"><i class="ri-eye-fill"></i></asp:LinkButton>
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

