<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="LeaveForm.aspx.cs"
    Inherits="LeaveApplication.LeaveForm" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Leave Application</title>
    <link href="Site.css" rel="stylesheet" />
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h1>Leave Application Form</h1>

            <!-- Employee ID -->
            <div class="form-group">
                <label>Employee ID</label>

                <asp:TextBox
                    ID="txtEmployeeID"
                    runat="server"
                    CssClass="textbox">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvEmployeeID"
                    runat="server"
                    ControlToValidate="txtEmployeeID"
                    ErrorMessage="Employee ID is required"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revEmployeeID"
                    runat="server"
                    ControlToValidate="txtEmployeeID"
                    ValidationExpression="^[A-Za-z0-9]+$"
                    ErrorMessage="Employee ID must contain only letters and numbers"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Employee Name -->
            <div class="form-group">
                <label>Employee Name</label>

                <asp:TextBox
                    ID="txtEmployeeName"
                    runat="server"
                    CssClass="textbox">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvEmployeeName"
                    runat="server"
                    ControlToValidate="txtEmployeeName"
                    ErrorMessage="Employee name is required"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revEmployeeName"
                    runat="server"
                    ControlToValidate="txtEmployeeName"
                    ValidationExpression="^[A-Za-z ]+$"
                    ErrorMessage="Name must contain only alphabets"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Leave Date -->
            <div class="form-group">
                <label>Leave Date</label>

                <asp:TextBox
                    ID="txtLeaveDate"
                    runat="server"
                    CssClass="textbox"
                    ReadOnly="true">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvLeaveDate"
                    runat="server"
                    ControlToValidate="txtLeaveDate"
                    ErrorMessage="Please select a leave date"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Leave Type -->
            <div class="form-group">
                <label>Leave Type</label>

                <asp:DropDownList
                    ID="ddlLeaveType"
                    runat="server"
                    CssClass="textbox">

                    <asp:ListItem
                        Text="-- Select Leave Type --"
                        Value="">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Personal Leave"
                        Value="Personal Leave">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Sick Leave"
                        Value="Sick Leave">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Casual Leave"
                        Value="Casual Leave">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Emergency Leave"
                        Value="Emergency Leave">
                    </asp:ListItem>

                    <asp:ListItem
                        Text="Other"
                        Value="Other">
                    </asp:ListItem>

                </asp:DropDownList>

                <asp:RequiredFieldValidator
                    ID="rfvLeaveType"
                    runat="server"
                    ControlToValidate="ddlLeaveType"
                    InitialValue=""
                    ErrorMessage="Please select a leave type"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>
            </div>

            <!-- Description -->
            <div class="form-group">
                <label>Description</label>

                <asp:TextBox
                    ID="txtDescription"
                    runat="server"
                    CssClass="description"
                    TextMode="MultiLine"
                    Rows="5">
                </asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="rfvDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ErrorMessage="Please enter the leave description"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RequiredFieldValidator>

                <asp:RegularExpressionValidator
                    ID="revDescription"
                    runat="server"
                    ControlToValidate="txtDescription"
                    ValidationExpression="[\s\S]{10,250}"
                    ErrorMessage="Description must be between 10 and 250 characters"
                    ForeColor="Red"
                    Display="Dynamic">
                </asp:RegularExpressionValidator>
            </div>

            <!-- Submit Button -->
            <asp:Button
                ID="btnSubmit"
                runat="server"
                Text="Submit Leave Application"
                CssClass="button"
                OnClick="btnSubmit_Click" />

            <br />
            <br />

            <!-- Validation Summary -->
            <asp:ValidationSummary
                ID="ValidationSummary1"
                runat="server"
                HeaderText="Please correct the following errors:"
                ForeColor="Red"
                CssClass="validation-summary" />

            <!-- Result -->
            <asp:Panel
                ID="pnlResult"
                runat="server"
                Visible="false"
                CssClass="result">

                <h2>Leave Application Submitted</h2>

                <p>
                    <b>Employee ID:</b>
                    <asp:Label
                        ID="lblEmployeeID"
                        runat="server">
                    </asp:Label>
                </p>

                <p>
                    <b>Employee Name:</b>
                    <asp:Label
                        ID="lblEmployeeName"
                        runat="server">
                    </asp:Label>
                </p>

                <p>
                    <b>Leave Date:</b>
                    <asp:Label
                        ID="lblLeaveDate"
                        runat="server">
                    </asp:Label>
                </p>

                <p>
                    <b>Leave Type:</b>
                    <asp:Label
                        ID="lblLeaveType"
                        runat="server">
                    </asp:Label>
                </p>

                <p>
                    <b>Description:</b>
                    <asp:Label
                        ID="lblDescription"
                        runat="server">
                    </asp:Label>
                </p>

                <h3>Leave Application Submitted Successfully!</h3>

            </asp:Panel>

        </div>

    </form>
</body>
</html>
