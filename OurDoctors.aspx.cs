using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Our_Doctors : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadDoctors();
        }
    }
    private void LoadDoctors(string department = "")
    {
        try
        {
            
            using (SqlConnection conn = ConnectionString.getConnection())
            {
                string query = @"SELECT DoctorID, DoctorName, Specialization, Qualification, 
                                    Experience, Phone, Email, Department, ConsultationFee 
                                    FROM Doctors 
                                    WHERE IsActive = 1";

                // Add department filter if selected
                if (!string.IsNullOrEmpty(department))
                {
                    query += " AND Department = @Department";
                }

                query += " ORDER BY DoctorName";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    if (!string.IsNullOrEmpty(department))
                    {
                        cmd.Parameters.AddWithValue("@Department", department);
                    }

                    conn.Open();
                    SqlDataReader reader = cmd.ExecuteReader();

                    if (reader.HasRows)
                    {
                        rptDoctors.DataSource = reader;
                        rptDoctors.DataBind();
                        rptDoctors.Visible = true;
                        pnlNoDoctors.Visible = false;
                    }
                    else
                    {
                        rptDoctors.Visible = false;
                        pnlNoDoctors.Visible = true;
                    }

                    reader.Close();
                }
            }
        }
        catch (Exception ex)
        {
            // Log error or display user-friendly message
            Response.Write("<script>alert('Error loading doctors: " + ex.Message + "');</script>");
        }
    }

    protected void ddlDepartmentFilter_SelectedIndexChanged(object sender, EventArgs e)
    {
        string selectedDepartment = ddlDepartmentFilter.SelectedValue;
        LoadDoctors(selectedDepartment);
    }

    // Helper method to get appropriate icon for each specialization
    protected string GetDoctorIcon(string specialization)
    {
        switch (specialization.ToLower())
        {
            case "general physician":
            case "general medicine":
                return "👨‍⚕️";
            case "cardiologist":
            case "cardiology":
                return "❤️";
            case "pediatrician":
            case "pediatrics":
                return "👶";
            case "orthopedic surgeon":
            case "orthopedics":
                return "🦴";
            case "pathologist":
            case "diagnostic lab":
                return "🔬";
            case "gynecologist":
            case "gynecology":
                return "👩‍⚕️";
            case "dentist":
            case "dental":
                return "🦷";
            case "dermatologist":
            case "dermatology":
                return "✨";
            default:
                return "👨‍⚕️";
        }
    }
}