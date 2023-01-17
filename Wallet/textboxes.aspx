<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="textboxes.aspx.cs" Inherits="Wallet.textboxes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="content-body">
        <div class="row page-titles mx-0">
            <div class="col p-md-0">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                    <li class="breadcrumb-item active"><a href="javascript:void(0)">Text Boxes</a></li>
                </ol>
            </div>
        </div>
        <!-- row -->
        <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <h4 class="card-title">Text Boxes</h4>
                            <br />
                            <table style="width:50%">
                                <tr style="height:50px">
                                    <td>
                                        Order Id
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="orderid" class="form-control" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height:50px">
                                    <td>
                                        Product ID
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="productid" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height:50px">
                                    <td>
                                        Unit Price
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="unitprice" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr style="height:50px">
                                    <td>
                                        Quantity
                                    </td>
                                    <td>:</td>
                                    <td>
                                        <asp:TextBox ID="quantity" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="3">
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        <asp:Button ID="insertdata" class="btn mb-1 btn-rounded btn-success" runat="server" Text="Insert Data" OnClick="Button1_Click" />
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
