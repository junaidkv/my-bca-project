using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.admin
{
    public partial class edituser : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        string a;
       // string customerphoto;
        protected void Page_Load(object sender, EventArgs e)
        {
            this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
           
                a = Request.QueryString["cid"].ToString();
                if (!IsPostBack)
                {
                string sr = "select * from customerdetails where cid =" + a + "";
                DataTable dt = db.exetable(sr);
                txtname.Text = dt.Rows[0][1].ToString();
                txtemailid.Text = dt.Rows[0][2].ToString();
                txtphone.Text = dt.Rows[0][3].ToString();
               // TextBox1.Text = dt.Rows[0][5].ToString();
                //txtemailid.Text = dt.Rows[0][6].ToString();
               // customerphoto = dt.Rows[0][4].ToString();
                Image1.ImageUrl = "~/user/upload/" + dt.Rows[0][4].ToString();
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
            string emailid = txtemailid.Text;
           
            string phone = txtphone.Text;
            //string pin = TextBox1.Text;

            string gg = "update customerdetails set name='" + name + "' ,emailid ='" + emailid + "',phone='" + phone + "' where cid=" + a;
            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
                //Response.Write("insert successfull");
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
                photo.SaveAs(Server.MapPath("~/user/upload/" + photo.FileName));
           string  customerphoto = photo.FileName;

                string gg = "update customerdetails set photo='" + customerphoto + "' where cid= " + a;
                int ab = db.exenonquery(gg);
            }
            else
            {
                Response.Write("<script> alert('please choose updated photo');</script>");
            }
        }
    }
}