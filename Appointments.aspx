<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Appointments.aspx.cs" Inherits="Appointments" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .message-label {
            display: block;
            padding: 15px;
            margin-bottom: 20px;
            border-radius: 8px;
            text-align: center;
            font-weight: 600;
        }

            .message-label.success {
                background: #d4edda;
                color: #155724;
                border: 1px solid #c3e6cb;
            }

            .message-label.error {
                background: #f8d7da;
                color: #721c24;
                border: 1px solid #f5c6cb;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="appointment-section" style="min-height: auto; padding: 60px 0;">
        <div class="container">
            <h2 class="section-title">Book Your Appointment</h2>
            <p class="section-subtitle">Fill in the form below and we'll get back to you shortly</p>

            <div class="appointment-form">
                <asp:Label ID="lblMessage" runat="server" CssClass="message-label" Visible="false"></asp:Label>

                <div class="form-group" style="margin-bottom: 20px;">
                    <label style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Your Name
                    </label>

                    <asp:TextBox ID="txtContactName" runat="server"
                        CssClass="form-control"
                        placeholder="Enter your name"
                        Style="background-color: #f0f7ff; border: 2px solid #bbdefb; border-radius: 8px; padding: 10px 15px; color: #0d47a1; transition: border-color 0.3s ease;">
                    </asp:TextBox>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="txtEmail" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Email Address *
                    </label>

                    <asp:TextBox ID="txtEmail" runat="server"
                        CssClass="form-control"
                        TextMode="Email"
                        placeholder="your.email@example.com"
                        required="required"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 12px; color: #0d47a1; width: 100%; box-sizing: border-box; outline: none;">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ErrorMessage="Email is required"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revEmail" runat="server"
                        ControlToValidate="txtEmail"
                        ValidationExpression="^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$"
                        ErrorMessage="Invalid email format"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RegularExpressionValidator>
                </div>
                <asp:TextBox ID="txtQuery" runat="server" />

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="txtPhone" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Phone Number *
                    </label>

                    <asp:TextBox ID="txtPhone" runat="server"
                        CssClass="form-control"
                        placeholder="10-digit mobile number"
                        required="required"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 12px; color: #0d47a1; width: 100%; box-sizing: border-box; outline: none;">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvPhone" runat="server"
                        ControlToValidate="txtPhone"
                        ErrorMessage="Phone number is required"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RequiredFieldValidator>

                    <asp:RegularExpressionValidator ID="revPhone" runat="server"
                        ControlToValidate="txtPhone"
                        ValidationExpression="^[0-9]{10}$"
                        ErrorMessage="Please enter valid 10-digit phone number"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RegularExpressionValidator>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="ddlDepartment" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Department *
                    </label>

                    <asp:DropDownList ID="ddlDepartment" runat="server"
                        CssClass="form-control"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 10px; color: #0d47a1; width: 100%; cursor: pointer; outline: none;">
                        <asp:ListItem Value="">-- Select Department --</asp:ListItem>
                        <asp:ListItem Value="General Medicine">General Medicine</asp:ListItem>
                        <asp:ListItem Value="Cardiology">Cardiology</asp:ListItem>
                        <asp:ListItem Value="Pediatrics">Pediatrics</asp:ListItem>
                        <asp:ListItem Value="Orthopedics">Orthopedics</asp:ListItem>
                        <asp:ListItem Value="Diagnostic Lab">Diagnostic Lab</asp:ListItem>
                        <asp:ListItem Value="Emergency">Emergency</asp:ListItem>
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="rfvDepartment" runat="server"
                        ControlToValidate="ddlDepartment"
                        InitialValue=""
                        ErrorMessage="Please select a department"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="txtDate" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Preferred Date *
                    </label>

                    <asp:TextBox ID="txtDate" runat="server"
                        CssClass="form-control"
                        TextMode="Date"
                        required="required"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 10px; color: #0d47a1; width: 100%; box-sizing: border-box; outline: none; cursor: pointer;">
                    </asp:TextBox>

                    <asp:RequiredFieldValidator ID="rfvDate" runat="server"
                        ControlToValidate="txtDate"
                        ErrorMessage="Preferred date is required"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="ddlTime" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Preferred Time *
                    </label>

                    <asp:DropDownList ID="ddlTime" runat="server"
                        CssClass="form-control"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 10px; color: #0d47a1; width: 100%; cursor: pointer; outline: none;">
                        <asp:ListItem Value="">-- Select Time Slot --</asp:ListItem>
                        <asp:ListItem Value="09:00 AM">09:00 AM</asp:ListItem>
                        <asp:ListItem Value="10:00 AM">10:00 AM</asp:ListItem>
                        <asp:ListItem Value="11:00 AM">11:00 AM</asp:ListItem>
                        <asp:ListItem Value="12:00 PM">12:00 PM</asp:ListItem>
                        <asp:ListItem Value="02:00 PM">02:00 PM</asp:ListItem>
                        <asp:ListItem Value="03:00 PM">03:00 PM</asp:ListItem>
                        <asp:ListItem Value="04:00 PM">04:00 PM</asp:ListItem>
                        <asp:ListItem Value="05:00 PM">05:00 PM</asp:ListItem>
                        <asp:ListItem Value="06:00 PM">06:00 PM</asp:ListItem>
                    </asp:DropDownList>

                    <asp:RequiredFieldValidator ID="rfvTime" runat="server"
                        ControlToValidate="ddlTime"
                        InitialValue=""
                        ErrorMessage="Please select a time slot"
                        Display="Dynamic"
                        Style="color: #d32f2f; font-size: 0.85em; margin-top: 5px; display: block; font-weight: 500;">
                    </asp:RequiredFieldValidator>
                </div>

                <div class="form-group" style="margin-bottom: 25px;">
                    <label for="txtMessage" style="color: #0d47a1; font-weight: 600; margin-bottom: 8px; display: block;">
                        Message / Symptoms (Optional)
                    </label>

                    <asp:TextBox ID="txtMessage" runat="server"
                        CssClass="form-control"
                        TextMode="MultiLine"
                        Rows="4"
                        placeholder="Briefly describe your symptoms or reason for visit"
                        Style="background-color: #f0f7ff; border: 1px solid #1976d2; border-radius: 8px; padding: 12px; color: #0d47a1; width: 100%; box-sizing: border-box; outline: none; resize: vertical; /* Allows user to expand height but not width */
               font-family: inherit;">
                    </asp:TextBox>
                </div>
                <div class="form-group text-center">
                    <asp:Button ID="btnSumit" runat="server" Text="Book Appointment" CssClass="btn-primary" BackColor="Orange" OnClick="btnSubmit_Click" />
                </div>
            </div>
        </div>
    </section>


</asp:Content>

