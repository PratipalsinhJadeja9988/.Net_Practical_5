using System;
using System.Web;
using System.Web.UI;

namespace Practical_5
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string userID = TextBox1.Text;
            string password = TextBox2.Text;

            if (userID == "student" && password == "1234")
            {
                Session["userID"] = userID;

                if (CheckBox1.Checked)
                {
                    HttpCookie cookie = new HttpCookie("userID");
                    cookie.Value = userID;
                    cookie.Expires = DateTime.Now.AddDays(7);
                    Response.Cookies.Add(cookie);
                }

                else
                {
                    if (Session[userID] == null)
                    {
                        HttpCookie cookie = new HttpCookie(userID);
                        cookie.Value = userID;
                        cookie.Expires = DateTime.Now.AddDays(-1);
                        Response.Cookies.Add(cookie);
                    }
                }
                Response.Redirect("Default.aspx");
            }
            else
            {
                Response.Write("Invalid UserID or Password!!");
            }
        }
    }
}