using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem
{
    public partial class login : System.Web.UI.Page
    {
        dboperation db=new dboperation() ;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            //if (Request.QueryString["pid"] != null || Request.QueryString["pid"]!="")
            //{
            //    HiddenField2.Value = Request.QueryString["pid"].ToString();
            //}

        }

        protected void txtlogin_Click(object sender, EventArgs e)
        {
            string username= txtusername.Text;
            string password=txtpassword.Text;
            string aa = "select * from login where username='" + username + "' and password='" + password  + "'and status='1'";
           DataTable dt=db.exetable(aa);
            
           if (dt.Rows.Count > 0)
           {
               Session["l_id"] = dt.Rows[0][0].ToString();
               if (dt.Rows[0][3].ToString() == "admin")
               {
                   Response.Redirect("~/admin/home.aspx");
               } if (dt.Rows[0][3].ToString() == "mealdelivery")
               {
                   Response.Redirect("~/mealdelivery/home.aspx");
               }
               if (dt.Rows[0][3].ToString() == "manager")
               {
                   Response.Redirect("~/manager/home.aspx");
                   Response.Write("login successfull");
               }
               if (dt.Rows[0][3].ToString() == "user")
               {
                   //if (HiddenField2.Value!= null || HiddenField2.Value!= "")
                   //{
                   //    Response.Redirect("~/user/cartadd.aspx?pid="+HiddenField2.Value);
                   //}

                   if (Session["pid"] != null)
                   {
                       Response.Redirect("~/user/cartadd.aspx");
                   }
                   else
                   {
                       Response.Redirect("~/user/home.aspx");
                       Response.Write("login successfull");
                   }
               }
               //Response.Write("login successfull");
           }
           else
           {
               Response.Write("login unsucessfull");
           }

        }
    }
}