<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="dropdown.aspx.cs" Inherits="Wallet.dropdown" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">Dropdown</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->
            
            <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">Dropdown</h4>
                                    <br />
                                        <table align="center">
                                            <tr>
                                                <td>
                                                    Country:
                                                </td>
                                                <td>
                           <asp:DropDownList ID="ddlcountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlcountry_SelectedIndexChanged"></asp:DropDownList>
                                                </td>
                                            </tr>

                                            <tr>
                                                <td>
                                                    State:
                                                </td>
                                                <td>
                           <asp:DropDownList ID="ddlstate" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlstate_SelectedIndexChanged"></asp:DropDownList>
                                                </td>
                                            </tr>
                                            
                                            
                                            <tr>
                                                <td>
                                                    Capital:
                                                </td>
                                                <td>
                           <asp:DropDownList ID="ddlcapital" runat="server"></asp:DropDownList>
                                                </td>
                                            </tr>
                                        </table>
                                </div>
                            </div>
                        </div>
                    </div>
            </div>

      </div>
</asp:Content>
