using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem
{
    public partial class adduser : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        }

        protected void registor_Click(object sender, EventArgs e)
        {
            string name = txtname.Text;
            string email = txtemailid.Text;
            string phone = txtphone.Text;
           
            photo.SaveAs(Server.MapPath("~/user/upload/" + photo.FileName));
            string managerphoto = photo.FileName;
            string username= txtusername.Text;
            string password = txtpassword.Text;
            string ff = "insert into login values('" + username + "','" + password + "','user',0)select @@IDENTITY";

            object ob = db.exescalar(ff);

            string gg = "insert into customerdetails values('" + name + "','" + email + "','" + phone + "','" + managerphoto  +  "'," + ob + ")";

            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
               // Response.Write("insert successfull");
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Alert",
             "alert('User details saved sucessfully');window.location ='login.aspx';", true);
            }
            else
            {
                Response.Write("insertion failed");
            }


        }
    }
}