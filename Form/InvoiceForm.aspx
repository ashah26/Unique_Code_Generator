<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InvoiceForm.aspx.cs" Inherits="MECForm.InvoiceForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 97px;
        }
        #btnsubmit {
            width: 298px;
        }
    </style>
</head>
<body>
    <form id="form" method="post"  runat="server" >
    <div align="center">
        <table>
                <h1>Invoice Detail</h1>
            <tr>
                <td class="auto-style1">Date</td>
                <td>
                    <input type="date" id="txtDate" runat="server" required="required" tabindex="0"/>
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><label>Name</label></td>
                <td><input type="text" placeholder="FirstName LastName" style="width: 200px" id="txtName" runat="server" required="required" pattern="^[A-Za-z]+\s[A-Za-z]+$" title="Please Enter Name in this format: 'Mark Rogers'" tabindex="1"/></td>
            </tr>
            <tr>
                <td class="auto-style1"><label>College</label></td>
                <td>
                    <asp:DropDownList ID="ddlCollege" runat="server" tabindex="2">
                        <asp:ListItem Value="1" Selected="True" Text="Univeristy of Houston">Univeristy of Houston</asp:ListItem>
                        <asp:ListItem Value="2" Text="University of Houston Downtown">University of Houston Downtown</asp:ListItem>
                        <asp:ListItem Value="3" Text="University of Houston Sugarland">University of Houston Sugarland</asp:ListItem>
                    </asp:DropDownList>
                    <!--
                    <select id="ddlCollege">
                         <option value="1" selected="selected">Univeristy of Houston</option>
                         <option value="2">University of Houston Downtown</option>
                         <option value="3">University of Houston Sugarland</option>    
                    </select>
                    -->
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><label>Project</label></td>
                <td>
                    <asp:RadioButtonList runat="server" id="rdProject" tabindex="3">
                        <asp:ListItem value="B" Selected="True" Text="Blue Answer Sheets">Blue Answer Sheets</asp:ListItem>
                        <asp:ListItem value="P" Text="Pink Answer Sheets">Pink Answer Sheets</asp:ListItem>
                    </asp:RadioButtonList>
                    <!--<input type="radio" name="project" value="B" checked="checked"/> Blue Answer Sheets<br/>
                    <input type="radio" name="project" value="P"/> Pink Answer Sheets<br/>
                        -->
                </td>
            </tr>
            <tr>
                <td class="auto-style1"><label>Quantity</label></td>
                <td><input type="number"  min="1" id="txtQty" style="width: 49px" value="1" runat="server" required="required" tabindex="4" pattern="^[1-9][0-9]+" title="Please enter numeric value for quantity"/></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" Text="Submit" OnClick="btnSubmit_Click" runat="server"/>
                </td>
            </tr>
        </table>    
    </div>
    </form>
</body>
</html>
