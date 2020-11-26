using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace foodordersystem.admin
{
    public partial class addmanager : System.Web.UI.Page
    {

        dboperation db = new dboperation();
        private void Page_Init(object sender, EventArgs e)
        {
            if (Session["l_id"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

                Response.Cache.SetNoStore();
                Response.Cache.SetCacheability(HttpCacheability.NoCache);
            

        }


        protected void Page_Load(object sender, EventArgs e)
        {

            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


        }

        protected void registor_Click(object sender, EventArgs e)
        {
            string name = txtname.Text;
            string restaurantname = txtrname.Text;
            string address = txtaddr.Text;
            string phone = txtphone.Text;
            string pincode = txtpincode.Text;
            string emailid = txtemailid.Text;
            string username = txtusername.Text;
            string password = txtpassword.Text;



            photo.SaveAs(Server.MapPath("~/admin/upload/" + photo.FileName));
            string managerphoto = photo.FileName;

            string ff = "insert into login values('" + username + "','" + password + "','manager',0)select @@IDENTITY";

            object ob = db.exescalar(ff);

            string gg = "insert into managerdetails values('" + name + "','" + restaurantname + "','" + address + "','" + phone + "','" + pincode + "','" + emailid + "','" + managerphoto + "',"+ob+")";

            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
                Response.Write("insert successfull");
            }
            else
            {
                Response.Write("insertion failed");
            }

        }
    }
}