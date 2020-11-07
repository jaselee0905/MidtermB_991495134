using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MidtermB_991495134
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnBus_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bus.aspx");
        }

        protected void btnTour_Click(object sender, EventArgs e)
        {
            Response.Redirect("Tour.aspx");
        }
    }
}