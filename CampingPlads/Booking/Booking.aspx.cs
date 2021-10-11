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
            if (EndDateTextBox.Text == "")
            {
                EndDateTextBox.Text = DateTime.Now.ToShortDateString();
            }
            else
            {
            }
        }

        protected void StartDate_SelectionChanged(object sender, EventArgs e)
        {

            string startDate;

            startDate = StartDate.SelectedDate.ToShortDateString();
        }

        protected void EndDate_SelectionChanged(object sender, EventArgs e)
        {
            string endDate;

            endDate = StartDate.SelectedDate.ToShortDateString();
            
            EndDateTextBox.Text = endDate;



        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
        }

    }
}