<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Master_Page.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>
        h1{
            text-align:center;
            color:red;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>This Is My First Page</h1>
    <a href="Contact.aspx">Contact Page..</a>
</asp:Content>
