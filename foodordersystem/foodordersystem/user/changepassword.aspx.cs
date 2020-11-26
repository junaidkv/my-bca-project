using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace foodordersystem.user
{
    public partial class changepassword : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        string str;
        protected void Page_Load(object sender, EventArgs e)
        {
            str = Session["l_id"].ToString();
            if (!IsPostBack)
            {
                //to accept the session value for the logined user and by using this display the contents ragarding him
                string sr = "select * from login where loginid=" + str + "";
                DataTable dt = db.exetable(sr);

                txtcpswd.Text = dt.Rows[0]["password"].ToString();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            string p = txtnpswd.Text;
            db.exenonquery("update login set password='" + p + "' where loginid='" + str + "'");

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Alert",
              "alert('Password changed sucessfully');window.location ='../login.aspx';", true);

        }

        
    }
}