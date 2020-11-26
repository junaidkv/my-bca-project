using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace foodordersystem.user
{
    public partial class adddelivery : System.Web.UI.Page
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
            //this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
           
            //string aa = "select * from orderdetails where lid="+Session ["l_id"].ToString() +"and status='orderplaced'";

            //DataTable de = db.exetable(aa);
            //string na = "";
            //int price=0;
            //for (int i = 0; i < de.Rows.Count; i++)
            //{
            //    na = na + de.Rows[i][2].ToString();
            //    price =Convert.ToInt32( price + de.Rows[i][4].ToString ());
            //}
           //txtitem .Text  = ;
           txttotalprice.Text = Session["price"].ToString ();

        }

        protected void add_Click(object sender, EventArgs e)
        {
            string lid = Session["l_id"].ToString();
            string name = txtname.Text;
            string address = txtaddress.Text;
            string email = txtemailid.Text;
            string phone = txtphone.Text;
            string pincode = txtpincode.Text;
            string gg = "insert into deliverydetails values('" + name + "','" + address + "','" + pincode + "','" + phone + "','" + email + "','" + lid + "')select @@IDENTITY";
            object ab = db.exescalar(gg);

            string[] pid= Session["prid"].ToString().Split(',') ;
            string[] qu = Session["qu"].ToString().Split(',');
            string[] mlid = Session["mlid"].ToString().Split(',');

            string total = Session["price"].ToString();



            string dd = "insert into orderdetails values(" + total + ",'orderplaced '," + lid + "," + ab + ",'" + Session["date"] + "')select @@IDENTITY";
            object  ac1 = db.exescalar(dd);

            int ac= 0;
            for (int i = 0; i < pid.Count(); i++)
            {
                string dr = "insert into orderdetails2 values(" + ac1 + "," + pid[i] + "," + qu[i] + "," + mlid[i] + "," + lid +  ")";
                 ac = db.exenonquery(dr);
            }

            string cartid = Session["cartid"].ToString(); 
            string[] car=new string[10];

             car= cartid.Split(',');

            for(int i=0;i<car.Count();i++)
            {
            string qry2 = "update cartdetails set status='1' where cartid=" +car[i];
            db.exenonquery(qry2);
            }
            

            if (ac > 0)
            {
                Response.Redirect("~/user/Cartadd.aspx");
            }

            //if (ab > 0)
            //{
            //    Response.Write("insert successfull");
            //}
            //else
            //{
            //    Response.Write("insertion failed");
            //}
            
        }
    }
}