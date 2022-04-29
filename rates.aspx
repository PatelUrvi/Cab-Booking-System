<%@ Page Title="" Language="C#" MasterPageFile="~/Admin_master_page.master" AutoEventWireup="true" CodeFile="rates.aspx.cs" Inherits="rates" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<title>Rates</title>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="container">
  <h2>RATES</h2>
  <a href="add_type.aspx" class="btn btn-info" role="button">ADD CITY CAB RATES</a>
  <a href="add_rental_cab_rate.aspx" class="btn btn-info" role="button">ADD RENTAL CAB RATES</a>
  <a href="add_outstation_cab_rate.aspx" class="btn btn-info" role="button">ADD OUTSTATION CAB RATES</a>
</div>
</asp:Content>

