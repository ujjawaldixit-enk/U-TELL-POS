<%@ Page Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ViewMessage.aspx.cs" Inherits="GenericProject.ViewMessage" %>

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
                                <div class="col-md-12" runat="server" id="MessageDiv">
                                    <div class="row">
                                        <div class="col-md-12">
                                            <asp:Label runat="server" ID="lblCreateDate"></asp:Label>
                                        </div>
                                        <div class="col-md-12" style="margin-top:20px;">
                                            <asp:Label runat="server" ID="lblName"></asp:Label>
                                        </div>
                                        <div class="col-md-12"  style="margin-top:20px;">
                                            <asp:Label runat="server" ID="lblEmailID"></asp:Label>
                                        </div>
                                        <div class="col-md-12"  style="margin-top:20px;">
                                            <asp:Label runat="server" ID="lblSubjectData"></asp:Label>
                                        </div>
                                        <div class="col-md-12" style="margin-top:20px;">
                                            <asp:Label runat="server" ID="lblMobileNumber"></asp:Label>
                                        </div>
                                        <div class="col-md-12"  style="margin-top:20px;">
                                            <asp:Label runat="server" ID="lblMessageData"></asp:Label>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12" runat="server" id="lblDataFoundDiv">
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

