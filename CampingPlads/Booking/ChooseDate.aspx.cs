using System;
using System.Collections.Generic;
using System.Drawing;
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
            if (EndDateTextBox.Text == "")
            {
                EndDateTextBox.Text = DateTime.Now.ToShortDateString();
            }

        }

        protected void StartDate_SelectionChanged(object sender, EventArgs e)
        {
            StartDateTextBox.Text = StartDate.SelectedDate.ToShortDateString();


            if (StartDate.SelectedDate > EndDate.SelectedDate)
            {
                EndDate.SelectedDate = StartDate.SelectedDate.AddDays(+1);
                EndDateTextBox.Text = EndDate.SelectedDate.ToShortDateString();

            }
        }

        protected void EndDate_SelectionChanged(object sender, EventArgs e)
        {
            EndDateTextBox.Text = EndDate.SelectedDate.ToShortDateString();
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            //table navn
            //ShowAvaibleSpots til alle pladser og hytter
        }

        protected void StartDate_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date < DateTime.Now.AddDays(-1))
            {

                e.Cell.BackColor = ColorTranslator.FromHtml("#a9a9a9");

                e.Day.IsSelectable = false;
            }

        }

        protected void EndDate_DayRender(object sender, DayRenderEventArgs e)
        {

            if (e.Day.Date < StartDate.SelectedDate)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml("#a9a9a9");

                e.Day.IsSelectable = false;
            }
        }
    }
}

