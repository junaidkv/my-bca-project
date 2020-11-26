using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;


namespace foodordersystem.admin
{
    public partial class editmanager : System.Web.UI.Page
    {

        dboperation db = new dboperation();
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            a = Request.QueryString["mid"].ToString();
            if (!IsPostBack)
            {
              
                string sr = "select * from managerdetails where mid =" + a + "";
                DataTable dt = db.exetable(sr);
                txtname.Text = dt.Rows[0][1].ToString();
                txtrname.Text = dt.Rows[0][2].ToString();
                txtaddr.Text = dt.Rows[0][3].ToString();
                txtphone.Text = dt.Rows[0][4].ToString();
                txtpincode.Text = dt.Rows[0][5].ToString();
                txtemailid.Text = dt.Rows[0][6].ToString();
                //photo. = dt.Rows[0][7].ToString();
                Image1.ImageUrl = "~/admin/upload/" + dt.Rows[0][7].ToString();

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
            string name = txtname.Text;
            string restaurantname = txtrname.Text;
            string address = txtaddr.Text;
            string phone = txtphone.Text;
            string pincode = txtpincode.Text;
            string emailid = txtemailid.Text;
          
            string gg ="update managerdetails set name='" + name + "' ,restaurantname ='" + restaurantname + "',address='" + address + "',pincode='" + pincode + "',emailid='" + emailid + "' where mid= "+a  ;
            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
                Response.Redirect("~/admin/edit.aspx");
            }
            else
            {
                Response.Write("insertion failed");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (photo.HasFile)
            {
                photo.SaveAs(Server.MapPath("~/admin/upload/" + photo.FileName));
                string managerphoto = photo.FileName;
                string gg = "update managerdetails set photo='" + managerphoto + "' where mid= " + a;
                int ab = db.exenonquery(gg);
            }
            else
            {
                Response.Write("<script> alert('please choose updated photo');</script>");
            }
        }
    }
}