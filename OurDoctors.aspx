<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OurDoctors.aspx.cs" Inherits="Our_Doctors" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!-- Hero Section -->
    <section class="hero-section" style="padding: 80px 0;">
        <div class="hero-content">
            <h2>Our Doctors</h2>
            <p>Experienced specialists committed to your health and well-being</p>
        </div>
    </section>



    <!-- Filter by Department -->
    <div style="text-align: center; margin: 50px 0 40px;">
        <label style="font-size: 1.2em; color: var(--primary-color); margin-right: 15px; font-weight: 600;">
            Filter by Department:
               
        </label>
        <asp:DropDownList ID="ddlDepartmentFilter" runat="server" AutoPostBack="true"
            OnSelectedIndexChanged="ddlDepartmentFilter_SelectedIndexChanged"
            Style="padding: 12px 20px; font-size: 1.05em; border: 2px solid var(--primary-color); border-radius: 8px; background: white; color: var(--text-dark); cursor: pointer;">
            <asp:ListItem Value="">All Departments</asp:ListItem>
            <asp:ListItem Value="General Medicine">General Medicine</asp:ListItem>
            <asp:ListItem Value="Cardiology">Cardiology</asp:ListItem>
            <asp:ListItem Value="Pediatrics">Pediatrics</asp:ListItem>
            <asp:ListItem Value="Orthopedics">Orthopedics</asp:ListItem>
            <asp:ListItem Value="Diagnostic Lab">Diagnostic Lab</asp:ListItem>
        </asp:DropDownList>
    </div>

    <!-- Doctors GridView -->
    <asp:Repeater ID="rptDoctors" runat="server">
        <HeaderTemplate>
            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(320px, 1fr)); gap: 40px;">
        </HeaderTemplate>
        <ItemTemplate>
            <div class="doctor-detail-card">
                <div class="doctor-header">
                    <div class="doctor-avatar">
                        <%# GetDoctorIcon(Eval("Specialization").ToString()) %>
                    </div>
                    <div class="doctor-basic-info">
                        <h3><%# Eval("DoctorName") %></h3>
                        <p class="specialty"><%# Eval("Specialization") %></p>
                    </div>
                </div>

                <div class="doctor-details">
                    <div class="detail-row">
                        <span class="detail-label">📚 Qualification:</span>
                        <span class="detail-value"><%# Eval("Qualification") %></span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">🏥 Department:</span>
                        <span class="detail-value"><%# Eval("Department") %></span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">⏱️ Experience:</span>
                        <span class="detail-value"><%# Eval("Experience") %> Years</span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">📞 Contact:</span>
                        <span class="detail-value"><%# Eval("Phone") %></span>
                    </div>
                    <div class="detail-row">
                        <span class="detail-label">💰 Consultation Fee:</span>
                        <span class="detail-value" style="color: var(--accent-color); font-weight: 700;">₹<%# Eval("ConsultationFee") %></span>
                    </div>
                </div>

                <div style="margin-top: 20px; text-align: center;">
                    <a href="Appointments.aspx" class="btn-primary" style="display: inline-block; padding: 12px 30px; font-size: 1em;">Book Appointment
                            </a>
                </div>
            </div>
        </ItemTemplate>
        <FooterTemplate>
            </div>
               
        </FooterTemplate>
    </asp:Repeater>

    <!-- No Doctors Message -->
    <asp:Panel ID="pnlNoDoctors" runat="server" Visible="false"
        Style="text-align: center; padding: 60px 20px; background: #f8f9fa; border-radius: 15px; margin-top: 40px;">
        <div style="font-size: 4em; margin-bottom: 20px;">👨‍⚕️</div>
        <h3 style="color: var(--primary-color); font-size: 1.8em; margin-bottom: 15px;">No Doctors Found</h3>
        <p style="font-size: 1.1em; color: #666;">
            No doctors available in the selected department. Please try another department.
               
        </p>
    </asp:Panel>

    </div>
    </section>

    <!-- Why Choose Our Doctors Section -->
    <section style="padding: 80px 0; background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);">
        <div class="container">
            <h2 class="section-title">Why Choose Our Doctors?</h2>

            <div style="display: grid; grid-template-columns: repeat(auto-fit, minmax(250px, 1fr)); gap: 30px; margin-top: 50px;">

                <div class="feature-item">
                    <div class="feature-icon">🎓</div>
                    <h3>Highly Qualified</h3>
                    <p>All doctors are board-certified with advanced degrees from prestigious institutions</p>
                </div>

                <div class="feature-item">
                    <div class="feature-icon">💼</div>
                    <h3>Experienced</h3>
                    <p>Years of clinical experience in their respective specializations</p>
                </div>

                <div class="feature-item">
                    <div class="feature-icon">❤️</div>
                    <h3>Patient-Centric</h3>
                    <p>Compassionate care with focus on patient comfort and satisfaction</p>
                </div>

                <div class="feature-item">
                    <div class="feature-icon">🔬</div>
                    <h3>Evidence-Based</h3>
                    <p>Treatment approaches based on latest medical research and best practices</p>
                </div>

            </div>
        </div>
    </section>

    <!-- Appointment CTA -->
    <section style="padding: 80px 0; background: white; text-align: center;">
        <div class="container">
            <h2 style="color: var(--primary-color); font-size: 2.5em; margin-bottom: 20px;">Ready to Consult Our Experts?
            </h2>
            <p style="font-size: 1.2em; color: #666; margin-bottom: 30px;">
                Book an appointment with our experienced doctors today
           
            </p>
            <a href="Appointments.aspx" class="btn-primary">Schedule Your Consultation</a>
        </div>
    </section>

    <style>
        /* Doctor Detail Card */
        .doctor-detail-card {
            background: white;
            border-radius: 20px;
            padding: 30px;
            box-shadow: 0 4px 15px rgba(0,0,0,0.1);
            transition: all 0.3s ease;
            border: 2px solid transparent;
        }

            .doctor-detail-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 8px 25px rgba(0,0,0,0.15);
                border-color: var(--secondary-color);
            }

        .doctor-header {
            display: flex;
            align-items: center;
            gap: 20px;
            margin-bottom: 25px;
            padding-bottom: 20px;
            border-bottom: 2px solid #f0f0f0;
        }

        .doctor-avatar {
            width: 80px;
            height: 80px;
            border-radius: 50%;
            background: linear-gradient(135deg, var(--primary-color), var(--secondary-color));
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 2.5em;
            box-shadow: 0 4px 12px rgba(10, 115, 115, 0.3);
        }

        .doctor-basic-info h3 {
            color: var(--primary-color);
            font-size: 1.5em;
            margin-bottom: 5px;
        }

        .specialty {
            color: var(--accent-color);
            font-weight: 600;
            font-size: 1.05em;
        }

        .doctor-details {
            background: #f8f9fa;
            padding: 20px;
            border-radius: 12px;
            margin-bottom: 20px;
        }

        .detail-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px 0;
            border-bottom: 1px solid #e0e0e0;
        }

            .detail-row:last-child {
                border-bottom: none;
            }

        .detail-label {
            color: #666;
            font-weight: 600;
            font-size: 0.95em;
        }

        .detail-value {
            color: var(--text-dark);
            font-weight: 500;
            text-align: right;
        }

        /* Responsive */
        @media (max-width: 768px) {
            .doctor-header {
                flex-direction: column;
                text-align: center;
            }

            .detail-row {
                flex-direction: column;
                gap: 5px;
            }

            .detail-value {
                text-align: center;
            }
        }
    </style>
</asp:Content>

