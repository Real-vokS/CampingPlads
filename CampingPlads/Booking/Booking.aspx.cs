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
            string fornavn = inputFirstName.ToString();
            string efternavn = inputLastName.ToString();
            string email = inputLastName.ToString();
            string tlf = inputPhoneNumber.ToString();
            string bynavn = inputCity.ToString();
            string vejnavn = inputAddress.ToString();


        }
    }
}