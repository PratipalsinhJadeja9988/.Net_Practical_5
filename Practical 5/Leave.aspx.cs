using System;
using System.Web.UI;

namespace Practical_5
{
    public partial class Leave : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["LeaveDate"] != null)
                {
                    TextBox2.Text = Convert.ToDateTime(Session["LeaveDate"]).ToShortDateString();
                }
            }
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblStatus.Text = "Selected leave type: " + DropDownList1.SelectedItem.Text;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
            {
                lblStatus.Text = "Please enter your name.";
                return;
            }

            Session["EmpName"] = TextBox1.Text;

            lblStatus.Text = "Leave Application Submitted Successfully.<br/>" +
                             "Name : " + TextBox1.Text + "<br/>" +
                             "Date : " + TextBox2.Text + "<br/>" +
                             "Leave Type : " + DropDownList1.Text + "<br/>" +
                             "Reason : " + TextBox3.Text;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }

        protected void btnLogout_Click(object sender, EventArgs e)
        {
            Session.Clear();
            Session.Abandon();

            Response.Redirect("Login.aspx");
        }
    }
}