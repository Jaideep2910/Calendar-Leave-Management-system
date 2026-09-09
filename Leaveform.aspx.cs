using System;
using System.Web;

namespace LeaveApplication
{
    public partial class LeaveForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Get Leave Date from Session
                if (Session["LeaveDate"] != null)
                {
                    txtLeaveDate.Text = Session["LeaveDate"].ToString();
                }
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Check all validators
            if (!Page.IsValid)
            {
                return;
            }

            // =========================
            // SESSION MANAGEMENT
            // =========================

            Session["EmployeeID"] = txtEmployeeID.Text.Trim();

            Session["EmployeeName"] = txtEmployeeName.Text.Trim();

            Session["LeaveType"] = ddlLeaveType.SelectedValue;

            Session["Description"] = txtDescription.Text.Trim();


            // =========================
            // COOKIE MANAGEMENT
            // =========================

            HttpCookie employeeCookie =
                new HttpCookie("EmployeeInfo");

            employeeCookie["EmployeeID"] =
                txtEmployeeID.Text.Trim();

            employeeCookie["EmployeeName"] =
                txtEmployeeName.Text.Trim();

            employeeCookie.Expires =
                DateTime.Now.AddDays(1);

            Response.Cookies.Add(employeeCookie);


            // =========================
            // DISPLAY SESSION DATA
            // =========================

            lblEmployeeID.Text =
                Session["EmployeeID"].ToString();

            lblEmployeeName.Text =
                Session["EmployeeName"].ToString();

            lblLeaveDate.Text =
                Session["LeaveDate"].ToString();

            lblLeaveType.Text =
                Session["LeaveType"].ToString();

            lblDescription.Text =
                Session["Description"].ToString();


            // Show result
            pnlResult.Visible = true;
        }
    }
}
