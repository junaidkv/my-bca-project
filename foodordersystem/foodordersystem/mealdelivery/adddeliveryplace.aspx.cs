using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.mealdelivery
{
    public partial class adddeliveryplace : System.Web.UI.Page
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
                db.fillgrid("select * from deliveryplace", GridView1);
            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            string catagoryname = txtcatagoryname.Text;
            DataTable dt = db.exetable("select * from deliveryplace where name='" + catagoryname + "'");
            if (dt.Rows.Count > 0)
            {
                Response.Write("<script>alert('place already existing');</script>");
            }
            else
            {

                //DataTable dtt = db.exetable("select * from mealdeliverydetails inner join managerdetails on mealdeliverydetails.mid=managerdetails.mid where mealdelivery.lid=" + Session["l_id"]);
                //string mid = dtt.Rows[0][0].ToString();

                string gg = "insert into deliveryplace values('" + catagoryname + "',"+Session["l_id"]+")";
                int ab = db.exenonquery(gg);
                if (ab > 0)
                {
                    Response.Write("insert successfull");
                    db.fillgrid("select * from deliveryplace", GridView1);
                }
                else
                {
                    Response.Write("insertion failed");
                }
            }
        }
    }
}