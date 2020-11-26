using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem
{
    public partial class forgotpassword : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            DataTable dr = db.exetable("SELECT * from customerdetails inner join login on customerdetails.lid=login.loginid where customerdetails.emailid='" + TextBox1.Text + "'");
            DataTable dr1 = db.exetable("SELECT * from managerdetails inner join login on managerdetails.lid=login.loginid where managerdetails.emailid='" + TextBox1.Text + "'");
            DataTable dr2 = db.exetable("SELECT * from mealdeliverydetails inner join login on mealdeliverydetails.lid=login.loginid where mealdeliverydetails.emailid='" + TextBox1.Text + "'");
            if (dr.Rows.Count>0)
            {
                Session["password"] = dr.Rows[0]["password"].ToString();
                //dr.Close();
                string mFrom = "foripsrt@gmail.com";  //foripsrt","ipsr123456"
                // string mPwd = "ipsr123456";
                MailMessage msg1 = new MailMessage();
                msg1.From = new MailAddress(mFrom);
                msg1.To.Add(new MailAddress(TextBox1.Text));
                msg1.Subject = "Forgot password information";
                msg1.Body = "Your password is '" + Session["password"] + "'";
                msg1.IsBodyHtml = true;
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basicAuthentication = new System.Net.NetworkCredential("foripsrt", "ipsr123456");
                smtpc.EnableSsl = true;
                smtpc.UseDefaultCredentials = false;
                smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpc.Credentials = basicAuthentication;
                smtpc.Send(msg1);
                Response.Write("<script>alert('Password has been send to your Email ID')</script>");
            }
            else if (dr1.Rows.Count > 0)
            {
                Session["password"] = dr.Rows[0]["password"].ToString();
                //dr.Close();
                string mFrom = "foripsrt@gmail.com";  //foripsrt","ipsr123456"
                // string mPwd = "ipsr123456";
                MailMessage msg1 = new MailMessage();
                msg1.From = new MailAddress(mFrom);
                msg1.To.Add(new MailAddress(TextBox1.Text));
                msg1.Subject = "Forgot password information";
                msg1.Body = "Your password is '" + Session["password"] + "'";
                msg1.IsBodyHtml = true;
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basicAuthentication = new System.Net.NetworkCredential("foripsrt", "ipsr123456");
                smtpc.EnableSsl = true;
                smtpc.UseDefaultCredentials = false;
                smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpc.Credentials = basicAuthentication;
                smtpc.Send(msg1);
                Response.Write("<script>alert('Password has been send to your Email ID')</script>");
            }
            else if (dr2.Rows.Count > 0)
            {
                Session["password"] = dr.Rows[0]["password"].ToString();
                //dr.Close();
                string mFrom = "foripsrt@gmail.com";  //foripsrt","ipsr123456"
                // string mPwd = "ipsr123456";
                MailMessage msg1 = new MailMessage();
                msg1.From = new MailAddress(mFrom);
                msg1.To.Add(new MailAddress(TextBox1.Text));
                msg1.Subject = "Forgot password information";
                msg1.Body = "Your password is '" + Session["password"] + "'";
                msg1.IsBodyHtml = true;
                SmtpClient smtpc = new SmtpClient("smtp.gmail.com", 587);
                System.Net.NetworkCredential basicAuthentication = new System.Net.NetworkCredential("foripsrt", "ipsr123456");
                smtpc.EnableSsl = true;
                smtpc.UseDefaultCredentials = false;
                smtpc.DeliveryMethod = SmtpDeliveryMethod.Network;
                smtpc.Credentials = basicAuthentication;
                smtpc.Send(msg1);
                Response.Write("<script>alert('Password has been send to your Email ID')</script>");
            }
            else
            {
                Response.Write("<script>alert('Not a Registered Email ID')</script>");
            }
        }
    }
}