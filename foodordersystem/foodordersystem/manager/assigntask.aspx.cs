using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.manager
{
    public partial class assigntask : System.Web.UI.Page
    {
        dboperation db = new dboperation();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                db.fillddl("select distinct (orderdetails.oid) from orderdetails2 INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid where orderdetails.status='orderplaced'and orderdetails2.mid="+Session["l_id"].ToString(),txtitem,"oid","oid");
                db.fillddl("select * from mealdeliverydetails where mlid=" + Session["l_id"].ToString(), txtmealdelivery, "name", "mdid");
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
            string item = txtitem.SelectedItem.Value;
            string mealdelivery = txtmealdelivery.SelectedItem.Value;
            string lid = Session["l_id"].ToString();
            string gg = "insert into assign values('" + item + "','" + mealdelivery + "','" + lid + "')";
            int ab = db.exenonquery(gg);
            string qry2 = "update orderdetails set status='task assigned' where oid=" + txtitem.SelectedItem.Value; 
            db.exenonquery(qry2);
           
            if (ab > 0)
            {
                Response.Write(" successfull");
            }
            else
            {
                Response.Write(" failed");
            }
            db.fillddl("select distinct (orderdetails.oid) from orderdetails2 INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid where orderdetails.status='orderplaced'and orderdetails2.mid=" + Session["l_id"].ToString(), txtitem, "oid", "oid");
            db.fillddl("select * from mealdeliverydetails where mlid=" + Session["l_id"].ToString(), txtmealdelivery, "name", "mdid");
        }

        protected void txtitem_SelectedIndexChanged(object sender, EventArgs e)
        {
            DataTable dt2 = db.exetable("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid where orderdetails2.mid= " + Session["l_id"].ToString());
            if (dt2.Rows.Count > 0)
            {
                db.fillgrid("select * from orderdetails2 INNER JOIN productdetails on orderdetails2.pid=productdetails.pid INNER JOIN orderdetails on orderdetails2.oid=orderdetails.oid  where orderdetails.oid= " + txtitem.SelectedItem.Value, GridView1);
            }
            else
            {
                Literal2.Text = "<h2>No Item Found</h2>";

            }
        }
    }
}