using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.manager
{
    public partial class addmealdelivery : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;


            if (!IsPostBack)
            {
                db.fillgrid("select * from mealdeliverydetails where mlid=" + Session["l_id"], GridView1);
            }
        }

        private void Page_Init(object sender, EventArgs e)
        {
            if (Session["l_id"] == null)
            {
                Response.Redirect("~/login.aspx");
            }

            Response.Cache.SetNoStore();
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

        }
        protected void registor_Click(object sender, EventArgs e)
        {
            string lid = Session["l_id"].ToString();
            string name = txtname.Text;
            string address= txtaddress.Text;
           
            string phone = txtphone .Text;
            photo.SaveAs(Server.MapPath("~/mealdelivery/upload/" + photo.FileName));
            string Photo  = photo.FileName;
            string pincode = txtpincode.Text;
            string emailid = txtemailid.Text;
            string username = txtusername.Text;
            string password = txtpassword.Text;
            string ff = "insert into login values('" + username + "','" + password + "','mealdelivery',1)select @@IDENTITY";

            object ob = db.exescalar(ff);

            string gg = "insert into mealdeliverydetails values('" + name + "','" + lid + "','" + address + "','" + phone + "','" + pincode + "','" + emailid + "','" + Photo + "'," + ob + ")";

            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
               // Response.Write("insert successfull");
                Response.Write("<script>alert('Meal delivery added successfully');</script>");
                db.fillgrid("select * from mealdeliverydetails where mlid=" + Session["l_id"], GridView1);
            }
            else
            {
                Response.Write("insertion failed");
            }
        }
    }
}