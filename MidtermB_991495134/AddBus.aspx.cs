using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermB_991495134
{
    public partial class AddBus : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        void ConnectDB()
        {
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\ABCTourDB_991495134.mdf;Integrated Security=True");
            con.Open();
        }

        void InsertDB()
        {
            string ins = "Insert into Bus values (@Class,@SeatCount)";
            ConnectDB();
            SqlCommand cmd = new SqlCommand(ins, con);
            cmd.Parameters.AddWithValue("@Class", tbClass.Text);
            cmd.Parameters.AddWithValue("@SeatCount", tbSeats.Text);
            cmd.ExecuteNonQuery();
            con.Close();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            InsertDB();
            lbSuccess.Visible = true;
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bus.aspx");
        }
    }
}