<%@ Page Title="" Language="C#" MasterPageFile="~/admin.Master" AutoEventWireup="true" CodeBehind="admingridview.aspx.cs" Inherits="Wallet.admingridview" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <!--**********************************
            Content body start
        ***********************************-->
        <div class="content-body">

            <div class="row page-titles mx-0">
                <div class="col p-md-0">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="javascript:void(0)">Dashboard</a></li>
                        <li class="breadcrumb-item active"><a href="javascript:void(0)">GridView</a></li>
                    </ol>
                </div>
            </div>
            <!-- row -->

                <div class="container-fluid">
                    <div class="row">
                        <div class="col-12">
                            <div class="card">
                                <div class="card-body">
                                    <h4 class="card-title">GridView</h4>
                                    <div class="table-responsive">

                                        <asp:GridView 
                                            ID="GridView1" 
                                            runat="server" 
                                            AllowPaging="True" 
                                            AllowSorting="True" 
                                            AutoGenerateColumns="False" 
                                            CellPadding="3" 
                                            DataKeyNames="Id" 
                                            DataSourceID="gridviewtest" 
                                            ForeColor="Black" 
                                            GridLines="Vertical"
                                            Width="100%"
                                            cssclass="table table-striped table-bordered zero-configuration" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px">

                                            <AlternatingRowStyle BackColor="#CCCCCC" />
                                            <Columns>
                                                <asp:CommandField ShowSelectButton="True" />
                                                <asp:BoundField DataField="Id" HeaderText="Emp Id" InsertVisible="True" ReadOnly="True" SortExpression="Id" />
                                                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                                                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                                            </Columns>
                                            <FooterStyle BackColor="#CCCCCC" />
                                            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                                            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                                            <SortedAscendingHeaderStyle BackColor="#808080" />
                                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                                            <SortedDescendingHeaderStyle BackColor="#383838" />
                                         </asp:GridView>


                                            <asp:SqlDataSource ID="gridviewtest" runat="server" ConnectionString="<%$ ConnectionStrings:cmsappsConnectionString %>" SelectCommand="SELECT * FROM [Customer]"></asp:SqlDataSource>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
        </div>
        <!--**********************************
            Content body end
        ***********************************-->

</asp:Content>