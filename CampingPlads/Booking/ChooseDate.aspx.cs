using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace CampingPlads.Booking
{
    public partial class ChooseDate : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (StartDateTextBox.Text == "")
            {
                StartDateTextBox.Text = DateTime.Now.ToShortDateString();
            }
            if(EndDateTextBox.Text == "")
            {
                EndDateTextBox.Text = DateTime.Now.ToShortDateString();
            }

        }

        protected void StartDate_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void EndDate_SelectionChanged(object sender, EventArgs e)
        {

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //table navn
            //ShowAvaibleSpots til alle pladser og hytter
        }
    }
}