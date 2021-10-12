using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads.Booking
{
    public partial class Booking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string fornavn = inputFirstName.Value;
            string efternavn = inputLastName.Value;
            string email = inputLastName.Value;
            string tlf = inputPhoneNumber.Value;
            string bynavn = inputCity.Value;
            string vejnavn = inputAddress.Value;

            Response.Redirect("/Booking/ChooseDate.aspx");

        }
    }
}