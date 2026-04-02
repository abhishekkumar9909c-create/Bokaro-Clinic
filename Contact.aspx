<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section style="padding: 60px 0; background: white;">
        <div class="container">
            <h2 class="section-title">Contact Us</h2>
            <p class="section-subtitle">Get in touch with us for any queries or appointments</p>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 40px; margin-top: 50px;">

                <!-- Contact Information -->
                <div>
                    <h3 style="color: var(--primary-color); margin-bottom: 20px; font-size: 1.8em;">Visit Us</h3>

                    <div style="background: #f8f9fa; padding: 30px; border-radius: 15px; border-left: 4px solid var(--accent-color);">
                        <div style="margin-bottom: 25px;">
                            <h4 style="color: var(--primary-color); margin-bottom: 10px;">📍 Address</h4>
                            <p style="font-size: 1.1em; color: #555;">
                                Bokaro Clinic<br />
                                Bokaro, Jharkhand<br />
                                India
                           
                            </p>
                        </div>

                        <div style="margin-bottom: 25px;">
                            <h4 style="color: var(--primary-color); margin-bottom: 10px;">📞 Phone</h4>
                            <p style="font-size: 1.2em; color: #555; font-weight: 600;">
                                7992499909
                           
                            </p>
                        </div>

                        <div style="margin-bottom: 25px;">
                            <h4 style="color: var(--primary-color); margin-bottom: 10px;">✉️ Email</h4>
                            <p style="font-size: 1.1em; color: #555;">
                                abhishekkumar9909c@gmail.com
                           
                            </p>
                        </div>

                        <div>
                            <h4 style="color: var(--primary-color); margin-bottom: 10px;">🕒 Working Hours</h4>
                            <p style="font-size: 1em; color: #555;">
                                <strong>Monday - Saturday:</strong> 9:00 AM - 8:00 PM<br />
                                <strong>Sunday:</strong> 10:00 AM - 2:00 PM<br />
                                <strong>Emergency:</strong> 24/7
                           
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Contact Form -->
                <div>
                    <h3 style="color: var(--primary-color); margin-bottom: 20px; font-size: 1.8em;">Send us a Message</h3>

                    <div style="background: #f8f9fa; padding: 30px; border-radius: 15px;">
                        <asp:Label ID="lblContactMessage" runat="server" CssClass="message-label" Visible="false"></asp:Label>

                        <div class="form-group">
                            <label class="modern-label">
                                Your Name
                            </label>

                            <asp:TextBox
                                ID="txtContactName"
                                runat="server"
                                CssClass="form-control premium-blue-input"
                                placeholder="Enter your name">
                            </asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Your Email</label>
                            <asp:TextBox ID="txtContactEmail" runat="server" CssClass="form-control" TextMode="Email" placeholder="your.email@example.com"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Subject</label>
                            <asp:TextBox ID="txtSubject" runat="server" CssClass="form-control" placeholder="Message subject"></asp:TextBox>
                        </div>

                        <div class="form-group">
                            <label>Message</label>
                            <asp:TextBox ID="txtContactMessage" runat="server" CssClass="form-control" TextMode="MultiLine"
                                Rows="5" placeholder="Your message here..."></asp:TextBox>
                        </div>

                        <asp:Button ID="btnSendMessage" runat="server" Text="Send Message" CssClass="btn-primary" />

                    </div>
                </div>

            </div>

            <!-- Map Section -->
            <div style="margin-top: 60px; text-align: center;">
                <h3 style="color: var(--primary-color); margin-bottom: 30px; font-size: 2em;">Find Us on Map</h3>

                <div style="width: 100%; overflow: hidden; border-radius: 15px; box-shadow: 0 4px 15px rgba(0,0,0,0.1);">
                    <iframe
                        src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d69529.41169214311!2d86.10595908143408!3d23.669177941042715!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39f4224e66fa3511%3A0x5e0d3159898acc9b!2sBokaro%20General%20Hospital%20(BGH)!5e0!3m2!1sen!2sin!4v1772020561436!5m2!1sen!2sin"
                        width="600%"
                        height="450"
                        style="border: 0;"
                        allowfullscreen=""
                        loading="lazy"
                        referrerpolicy="no-referrer-when-downgrade"></iframe>
                </div>
            </div>

        </div>
    </section>

    <style>
        .form-control {
            background: white !important;
            color: #333 !important;
        }
    </style>
</asp:Content>

