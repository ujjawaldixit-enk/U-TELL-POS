<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="LoginHistory.aspx.cs" Inherits="GenericProject.LoginHistory" %>

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
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main-content">
        <div class="page-content">
            <div class="container-fluid" style="margin-bottom: -70px;">
                <div class="col-xl-12">
                    <div class="row">
                        <div class="card" style="padding: 20px; width: 100% !important;">
                            <div class="row" runat="server" id="UserDiv" visible="false">
                                <div class="col-md-3">
                                    <asp:DropDownList runat="server" ID="ddlUser" ClientIDMode="Static" CssClass="dropdown DropContent"></asp:DropDownList>
                                </div>
                                <div class="col-md-3">
                                    <asp:Button runat="server" ID="btnGetHistory" CssClass="btn btn-primary" Text="Get History" OnClick="btnGetHistory_Click" />
                                </div>
                            </div>
                            <div class="row" style="margin-top: 20px;">
                                <div class="col-md-12" style="height: 400px; overflow-y: scroll;">
                                    <asp:GridView ID="grdLoginHistory" runat="server" ShowHeaderWhenEmpty="True" AllowSorting="True" GridLines="Both" HeaderStyle-Font-Bold="true" CellPadding="0" CellSpacing="0" EnableViewState="True" AutoGenerateColumns="false" ClientIDMode="Static" class="table table-striped table-bordered table-hover">
                                        <Columns>
                                            <asp:TemplateField HeaderText="User Name">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblName" Text='<%# Eval("Name") %>' />
                                                    <asp:Label runat="server" ID="lblID" Text='<%# Eval("ID") %>' Visible="false" />
                                                    <asp:Label runat="server" ID="lblUserID" Text='<%# Eval("UserID") %>' Visible="false" />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Login Date And Time">
                                                <ItemTemplate>
                                                    <asp:Label runat="server" ID="lblLoginDateTime" Text='<%# Eval("LoginDateTime") %>' />
                                                </ItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <asp:Label runat="server" ID="lblDataFound" Style="font-size: 20px; margin-top: 20px; font-weight: bold;"></asp:Label>
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

