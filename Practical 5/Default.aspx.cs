using System;
using System.Web.UI;

namespace Practical_5
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["userID"] == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            if (!IsPostBack)
            {
                lblWelcome.Text = "Welcome, " + Session["userID"].ToString() + "!";
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = "Selected Date: " + Calendar1.SelectedDate.ToShortDateString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Calendar1.SelectedDate == DateTime.MinValue)
            {
                Label1.Text = "Please select a date from the calendar first.";
                return;
            }

            Session["LeaveDate"] = Calendar1.SelectedDate;

            Response.Redirect("Leave.aspx");
        }
    }
}