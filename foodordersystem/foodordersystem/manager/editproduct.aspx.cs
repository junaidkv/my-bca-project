using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.manager
{
    public partial class editproduct : System.Web.UI.Page
    {

        dboperation db = new dboperation();
        string a;
        protected void Page_Load(object sender, EventArgs e)
        {
            // this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            //if (!IsPostBack)
            //{
            //    db.fillddl("select * from catagory", txtcategory, "catagoryname", "ctid");
            //    db.fillgrid("select * from productdetails inner join catagory on catagory.ctid=productdetails.category where productdetails.lid=" + Session["l_id"], GridView1);
               
            //}
             //this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
            a = Request.QueryString["pid"].ToString();
            if (!IsPostBack)
            { 
                string sr = "select * from productdetails where pid =" + a + "";
                DataTable dt = db.exetable(sr);
                txtname.Text = dt.Rows[0][1].ToString();
                txtprice.Text = dt.Rows[0][2].ToString();
                 //txtcategory.SelectedItem.Value= dt.Rows[0][3].ToString();
                //txtphone.Text = dt.Rows[0][4].ToString();
               txtdescription.Text = dt.Rows[0][4].ToString();
                //txtemailid.Text = dt.Rows[0][6].ToString();
                //photo. = dt.Rows[0][7].ToString();
                Image1.ImageUrl = "~/manager/upload/" + dt.Rows[0][5].ToString();
                db.fillddl("select * from catagory", txtcategory, "catagoryname", "ctid");
                txtcategory.SelectedValue = dt.Rows[0][3].ToString();
             }
        }

        protected void registor_Click(object sender, EventArgs e)
        {
        string name = txtname.Text;
            string price = txtprice.Text;
            string category = txtcategory.SelectedItem.Value;
           string description = txtdescription.Text;
           string gg = "update productdetails set name='" + name + "' ,price ='" + price + "',category='" + category + "',description='" + description + "' where pid= " + a;
            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
                Response.Redirect("~/manager/edit.aspx");
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
                photo.SaveAs(Server.MapPath("~/manager/upload/" + photo.FileName));
                string managerphoto = photo.FileName;
                string gg = "update productdetails set photo='" + managerphoto + "' where pid= " + a;
                int ab = db.exenonquery(gg);
            }
            else
            {
                Response.Write("<script> alert('please choose updated photo');</script>");
            }
        }

        protected void txtcategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        
    }
}