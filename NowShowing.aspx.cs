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

        private string MovieTime()
        {
            if (MovieDDL.SelectedValue == Name1.Text)
                return Time1.Text;
            else if (MovieDDL.SelectedValue == Name2.Text)
                return Time2.Text;
            else if (MovieDDL.SelectedValue == Name3.Text)
                return Time3.Text;
            else
                return "";
        }

        private string MovieDate()
        {
            if (MovieDDL.SelectedValue == Name1.Text)
                return Date1.Text;
            else if (MovieDDL.SelectedValue == Name2.Text)
                return Date2.Text;
            else if (MovieDDL.SelectedValue == Name3.Text)
                return Date3.Text;
            else
                return "";
        }

        private void AddtoDatabase()
        {
            // Get selected parking lots
            string selectedLots = "";
            foreach (ListItem item in ParkingLotCBL.Items)
            {
                if (item.Selected)
                    selectedLots += item.Value + " ";
            }
            // insert to database
            try
            {
                using (OleDbConnection xConn = new OleDbConnection("Provider=Microsoft.Jet.OLEDB.4.0; " +
                "Data Source=" + Server.MapPath("~/AppData/Cinema.mdb")))
                {
                    using (OleDbCommand xCmd = new OleDbCommand())
                    {
                        xCmd.Connection = xConn;
                        xCmd.CommandText = "INSERT INTO MovieChoice VALUES (@User_email, @Mov_name, " +
                                "@Mov_time, @Mov_date, @Parkingspace, @Total)";
                        xCmd.Parameters.AddWithValue("@User_email", Session["usermail"].ToString());
                        xCmd.Parameters.AddWithValue("@Mov_name", MovieDDL.SelectedValue);
                        xCmd.Parameters.AddWithValue("@Mov_time", MovieTime());
                        xCmd.Parameters.AddWithValue("@Mov_date", MovieDate());
                        xCmd.Parameters.AddWithValue("@Parkingspace", selectedLots);
                        xCmd.Parameters.AddWithValue("@Total", int.Parse(Total.Text));

                        xConn.Open();
                        xCmd.ExecuteNonQuery();
                    }
                }
                Response.Write("<script>alert('Added to cart.');</script>");
                Reset(); //Clear values
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
                
        }

        protected void Purchase_Click(object sender, EventArgs e)
        {
            if (MovieDDL.SelectedValue == "Select a movie")
                Response.Write("<script>alert('No movie selected!');</script>");
            else
                AddtoDatabase();
        }

        // Compute for total
        protected void QuantityTB_TextChanged(object sender, EventArgs e)
        {
            double Quantity = Convert.ToDouble(QuantityTB.Text);

            if (MovieDDL.SelectedValue == Name1.Text)
                Total.Text = Convert.ToString(Quantity * 500);

            else if (MovieDDL.SelectedValue == Name2.Text)
                Total.Text = Convert.ToString(Quantity * 550);
            
            else if (MovieDDL.SelectedValue == Name3.Text)
                Total.Text = Convert.ToString(Quantity * 600);
            
        }

        // Limit the selection based on the amount of ticket
        protected void ParkingLotCBL_SelectedIndexChanged(object sender, EventArgs e)
        {
            int a = ParkingLotCBL.Items.Count;
            int count = 0;
            for (int i = 0; i < a; i++)
            {
                if (ParkingLotCBL.Items[i].Selected == true)
                    count++;
            }
            
            if (count > int.Parse(QuantityTB.Text))
            {
                for (int i = 0; i < a; i++)
                {
                    if (ParkingLotCBL.Items[i].Selected == true)
                    {
                        ParkingLotCBL.Items[i].Selected = false;
                        break;
                    }
                }
            }
        }

        private void Reset()
        {
            MovieDDL.ClearSelection();
            QuantityTB.Text = "";
            ParkingLotCBL.ClearSelection();
            Total.Text = "";
        }

        // Reset values
        protected void Cancel_Click(object sender, EventArgs e)
        {
            Reset();
        }
    }
}