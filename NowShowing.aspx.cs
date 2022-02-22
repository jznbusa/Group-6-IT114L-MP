using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace Group_6_IT114L_MP
{
    public partial class Movies : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (Session["usermail"] != null)
            {
                ((Label)Master.FindControl("UsernameLBL")).Text = Session["usermail"].ToString();
            }
        }

        protected void Purchase_Click(object sender, EventArgs e)
        {

            /*
             *  compute for quantity, add parking lots
             *  
             *  
            using (OleDbConnection xConn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; " +
                "Data Source=" + Server.MapPath("~/AppData/Cinema.mdb")))
            {
                using (OleDbCommand xCmd = new OleDbCommand())
                {
                    xCmd.Connection = xConn;
                    xCmd.CommandText = "INSERT INTO MovieChoice VALUES (@User_email, @Mov_name, " +
                            "@Mov_time, @Mov_date, @Parkingspace, @Total)";
                    xCmd.Parameters.AddWithValue("@User_email", Session["usermail"].ToString());
                    xCmd.Parameters.AddWithValue("@Mov_name", MovnameTB.Text);
                    xCmd.Parameters.AddWithValue("@Mov_name", Time1.Text);
                    xCmd.Parameters.AddWithValue("@Mov_date", Date1.Text);
                    // add chosen parking lots
                    xCmd.Parameters.AddWithValue("@Parkingspace", );
                    xCmd.Parameters.AddWithValue("@Total", int.Parse(Total.Text));
                    
                    xConn.Open();
                    xCmd.ExecuteNonQuery();
                }
            } 
            */
        }
    }
}