using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.manager
{
    public partial class addcategory : System.Web.UI.Page
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


            if (!IsPostBack)
            {
                db.fillgrid("select * from catagory", GridView1);
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string catagoryname = txtcatagoryname.Text;
            DataTable dt = db.exetable("select * from catagory where catagoryname='" + catagoryname + "'");
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('Catagory already existing');</script>");
            }
            else
            {

                string gg = "insert into catagory values('" + catagoryname + "','1')";
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
  }
