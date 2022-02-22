using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;
using System.Data;

namespace Group_6_IT114L_MP
{
    public partial class Cart : System.Web.UI.Page
    {
        DataTable tb = new DataTable();
        DataRow dr;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usermail"] != null)
            {
                ((Label)Master.FindControl("UsernameLBL")).Text = Session["usermail"].ToString();
                
                if()
            }
        }
        // Display the ticket purchased
        private void Show()
        {
            using (OleDbConnection xConn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; " +
                "Data Source=" + Server.MapPath("~/AppData/Cinema.mdb")))
            {
                using (OleDbCommand xCmd = new OleDbCommand())
                {
                    xCmd.Connection = xConn;
                    xConn.Open();
                    xCmd.CommandText = "Select * from MovieChoice WHERE xEmail = '" + 
                        Session["usermail"].ToString() + "';";
                    OleDbDataReader xReader = xCmd.ExecuteReader();
                    datata

                    if (xReader.HasRows)
                    {
                        xReader.Read();
                        Session["usermail"] = xReader["xEmail"].ToString();
                    }
                    else
                    {
                        
                    }
                    xReader.Close();
                }
            }

        }
    }
}