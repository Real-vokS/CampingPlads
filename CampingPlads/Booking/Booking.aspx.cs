using System;
using System.Collections.Generic;
using System.Drawing;
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

            if (StartDateTextBox.Text == "")
            {
                StartDateTextBox.Text = DateTime.Now.ToShortDateString();
            }
            if (EndDateTextBox.Text == "")
            {
                EndDateTextBox.Text = DateTime.Now.AddDays(1).ToShortDateString();
            }

            for (int i = 1; i < 227; i++)
            {
                if (i == 51)
                {
                    i = 81;
                }
                else if (i == 118)
                {
                    i = 138;
                }
                else if (i == 152)
                {
                    i = 157;
                }
                else if (i == 166)
                {
                    i = 175;
                }
                PladsDropDownList.Items.Add($"{i}");
            }
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            string fornavn = inputFirstName.Value;
            string efternavn = inputLastName.Value;
            string email = inputLastName.Value;
            string tlf = inputPhoneNumber.Value;
            string bynavn = inputCity.Value;
            string vejnavn = inputAddress.Value;

            Response.Redirect("/Booking/");

        }

        protected void StartDate_SelectionChanged(object sender, EventArgs e)
        {
            StartDateTextBox.Text = StartDate.SelectedDate.ToShortDateString();


            if (StartDate.SelectedDate >= EndDate.SelectedDate)
            {
                EndDate.SelectedDate = StartDate.SelectedDate.AddDays(+1);
                EndDateTextBox.Text = EndDate.SelectedDate.ToShortDateString();

            }
        }

        protected void EndDate_SelectionChanged(object sender, EventArgs e)
        {
            EndDateTextBox.Text = EndDate.SelectedDate.ToShortDateString();
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

            if (e.Day.Date < DateTime.Now)
            {

                e.Cell.BackColor = ColorTranslator.FromHtml("#a9a9a9");

                e.Day.IsSelectable = false;
            }

            if (e.Day.Date <= StartDate.SelectedDate)
            {
                e.Cell.BackColor = ColorTranslator.FromHtml("#a9a9a9");

                e.Day.IsSelectable = false;
            }
        }

        protected void DropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (DropDown.SelectedIndex)
            {
                case 0:
                    PladsDropDownList.Items.Clear();
                    for (int i = 1; i < 227; i++)
                    {
                        if (i == 51)
                        {
                            i = 81;
                        }
                        else if (i == 118)
                        {
                            i = 138;
                        }
                        else if (i == 152)
                        {
                            i = 157;
                        }
                        else if (i == 166)
                        {
                            i = 175;
                        }
                        PladsDropDownList.Items.Add($"{i}");
                    }
                    break;
                case 1:
                    PladsDropDownList.Items.Clear();
                    for (int i = 51; i < 237; i++)
                    {
                        if (i == 81)
                        {
                            i = 118;
                        }
                        else if (i == 138)
                        {
                            i = 152;
                        }
                        else if (i == 157)
                        {
                            i = 166;
                        }
                        else if (i == 175)
                        {
                            i = 227;
                        }
                        PladsDropDownList.Items.Add($"{i}");
                    }
                    break;
                case 2:
                    PladsDropDownList.Items.Clear();
                    for (int i = 1; i < 9; i++)
                    {
                        if (i == 6)
                        {
                            i = 7;
                        }
                        PladsDropDownList.Items.Add($"Hytte {i}");
                    }
                    break;
                case 3:
                    PladsDropDownList.Items.Clear();
                    for (int i = 10; i < 16; i++)
                    {
                        PladsDropDownList.Items.Add($"Hytte {i}");
                    }
                    break;

            }
        }
    }
}