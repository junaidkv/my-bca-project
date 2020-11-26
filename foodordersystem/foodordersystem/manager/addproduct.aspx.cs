using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace foodordersystem.manager
{
    public partial class addproduct : System.Web.UI.Page

    {
        dboperation db=new dboperation() ;
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
            if (!IsPostBack)
            {
                db.fillddl("select * from catagory", txtcategory, "catagoryname", "ctid");
                db.fillgrid("select * from productdetails inner join catagory on catagory.ctid=productdetails.category where productdetails.lid=" + Session["l_id"], GridView1);
            }

        }

        protected void registor_Click(object sender, EventArgs e)
        {
            string lid = Session["l_id"].ToString();
            string name = txtname.Text;
            string price = txtprice.Text;
            string category = txtcategory.SelectedItem.Value;
            photo.SaveAs(Server.MapPath("~/manager/upload/" + photo.FileName));
            string productphoto = photo.FileName;
            string description = txtdescription.Text;
            string gg = "insert into productdetails values('" + name + "','" + price + "','" + category + "','" + description + "','" + productphoto + "','" + lid + "')";
            int ab = db.exenonquery(gg);
            if (ab > 0)
            {
                //Response.Write("insert successfull");
                Response.Write("<script>alert('Product added successfully');</script>");
            }
            else
            {
                Response.Write("insertion failed");
            }

            db.fillgrid("select * from productdetails inner join catagory on catagory.ctid=productdetails.category where productdetails.lid=" + Session["l_id"], GridView1);
        }

        protected void txtcategory_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            GridViewRow item = (GridViewRow)(((LinkButton)sender).NamingContainer);

            LinkButton lbt = (LinkButton)item.FindControl("LinkButton2");

            string pid = lbt.CommandArgument;
            Response.Redirect("~/manager/editproduct.aspx?pid=" + pid);
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}