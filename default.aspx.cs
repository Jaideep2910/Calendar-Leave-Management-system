using System;

namespace LeaveApplication
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Today;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            DateTime selectedDate = Calendar1.SelectedDate;

            Session["LeaveDate"] = selectedDate.ToString("dd-MM-yyyy");

            Response.Redirect("LeaveForm.aspx");
        }
    }
}
