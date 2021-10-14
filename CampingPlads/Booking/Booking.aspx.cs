using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
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
                if (i < 10)
                {
                    PladsDropDownList.Items.Add($"00{i}");
                }
                else if (i > 9 && i < 100)
                {
                    PladsDropDownList.Items.Add($"0{i}");
                }
                else
                {
                    PladsDropDownList.Items.Add($"{i}");
                }

                CleaningCheckBox.Enabled = false;


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
            int pris = 0;

            SqlConnection sqlCon = null;
            String SqlconString = ConfigurationManager.ConnectionStrings["Plads"].ConnectionString;

            using (sqlCon = new SqlConnection(SqlconString))
            {
                sqlCon.Open();
                SqlCommand sql_cmnd = new SqlCommand("Tilføj_Kunde", sqlCon);
                sql_cmnd.CommandType = CommandType.StoredProcedure;
                sql_cmnd.Parameters.AddWithValue("@Fornavn", SqlDbType.NVarChar).Value = fornavn;
                sql_cmnd.Parameters.AddWithValue("@Efternavn", SqlDbType.NVarChar).Value = efternavn;
                sql_cmnd.Parameters.AddWithValue("@Vejnavn", SqlDbType.Int).Value = vejnavn;
                sql_cmnd.Parameters.AddWithValue("@Bynavn", SqlDbType.NVarChar).Value = bynavn;
                sql_cmnd.Parameters.AddWithValue("@Telefon", SqlDbType.Char).Value = tlf;
                sql_cmnd.Parameters.AddWithValue("@Email", SqlDbType.Int).Value = email;
                sql_cmnd.ExecuteNonQuery();
                sqlCon.Close();
            }

            using (sqlCon = new SqlConnection(SqlconString))
            {
                DateTime start_Dato = StartDate.SelectedDate;
                string startDatoDB = start_Dato.ToString("yyyy-MM-dd");
                DateTime slut_Dato = EndDate.SelectedDate;
                string slutDatoDB = slut_Dato.ToString("yyyy-MM-dd");
                DateTime højSæsonStart = new DateTime(start_Dato.Year, 7, 14);
                string højSæsonStartDB = højSæsonStart.ToString("yyyy-MM-dd");
                DateTime højSæsonSlut = new DateTime(start_Dato.Year, 8, 15);
                string højSæsonSlutDB = højSæsonSlut.ToString("yyyy-MM-dd");
                sqlCon.Open();
                SqlCommand sql_cmnd = new SqlCommand("Tilføj_Booking", sqlCon);
                sql_cmnd.CommandType = CommandType.StoredProcedure;
                sql_cmnd.Parameters.AddWithValue("@Fornavn", fornavn);
                sql_cmnd.Parameters.AddWithValue("@Efternavn", efternavn);
                sql_cmnd.Parameters.AddWithValue("@Bynavn", bynavn);
                sql_cmnd.Parameters.AddWithValue("@Telefon", tlf);
                sql_cmnd.Parameters.AddWithValue("@Nummer", PladsDropDownList.SelectedValue);
                sql_cmnd.Parameters.AddWithValue("@Start_Dato", startDatoDB);
                sql_cmnd.Parameters.AddWithValue("@Slut_Dato", slutDatoDB);
                string sæson = "";
                for (DateTime i = start_Dato; i <= slut_Dato; i = i.AddDays(1))
                {
                    if (i < højSæsonSlut && i > højSæsonStart)
                    {
                        sæson = "Høj";
                        break;
                    }
                    else
                        sæson = "Lav";
                }
                sql_cmnd.Parameters.AddWithValue("@Sæson", sæson);
                for (DateTime i = start_Dato; i <= slut_Dato; i = i.AddDays(1))
                {
                    if (i < højSæsonSlut && i > højSæsonStart)
                    {
                        sæson = "Høj";
                    }
                    else
                        sæson = "Lav";

                    if (DropDown.SelectedIndex == 0)
                    {
                        if (sæson == "Høj")
                            pris += 60;
                        else if (sæson == "Lav")
                            pris += 50;
                    }
                    else if (DropDown.SelectedIndex == 1)
                    {
                        if (sæson == "Høj")
                            pris += 80;
                        else if (sæson == "Lav")
                            pris += 65;
                    }
                    else if (DropDown.SelectedIndex == 2)
                    {
                        if (sæson == "Høj")
                            pris += 500;
                        else if (sæson == "Lav")
                            pris += 350;
                    }
                    else if (DropDown.SelectedIndex == 3)
                    {
                        if (sæson == "Høj")
                            pris += 850;
                        else if (sæson == "Lav")
                            pris += 600;
                    }
                }
                pris += (Convert.ToInt32(BadelandVoksen.Text) * 30) + (Convert.ToInt32(BadelandBarn.Text) * 15) + (Convert.ToInt32(CykelLeje.Text) * 200) + (Convert.ToInt32(KajakLeje.Text) * 100) + (Convert.ToInt32(KanoLeje.Text) * 150) + (Convert.ToInt32(SengelinnedLeje.Text) * 30);
                if (CleaningCheckBox.Checked)
                    pris += 150;
                sql_cmnd.Parameters.AddWithValue("@Pris",  pris);
                sql_cmnd.Parameters.AddWithValue("@Type", DropDown.SelectedValue);
                //sql_cmnd.Parameters.AddWithValue("@Type", SqlDbType.NVarChar).Value = type;



                sql_cmnd.ExecuteNonQuery();
                sqlCon.Close();
            }

            using (sqlCon = new SqlConnection(SqlconString))
            {
                sqlCon.Open();
                SqlCommand sql_cmnd = new SqlCommand("Tilføj_Tilvalg", sqlCon);
                

                    sql_cmnd.CommandType = CommandType.StoredProcedure;
                    sql_cmnd.Parameters.AddWithValue("@Fornavn", SqlDbType.NVarChar).Value = fornavn;
                    sql_cmnd.Parameters.AddWithValue("@Efternavn", SqlDbType.NVarChar).Value = efternavn;
                    sql_cmnd.Parameters.AddWithValue("@Bynavn", SqlDbType.NVarChar).Value = bynavn;
                    sql_cmnd.Parameters.AddWithValue("@Telefon", SqlDbType.Char).Value = tlf;
                for (int i = 1; i < 7; i++)
                {
                    string type = "";
                    if (i == 1)
                        type = "Adgang til badeland (b)";
                    else if (i == 2)
                        type = "Adgang til badeland (v)";
                    else if (i == 3)
                        type = "Cykelleje (Pr. dag)";
                    else if (i == 4)
                        type = "Kajak (Pr. dag)";
                    else if (i == 5)
                        type = "Kano (Pr. dag)";
                    else if (i == 6)
                        type = "Sengelinned (Pr. ophold)";

                    sql_cmnd.Parameters.AddWithValue("@Type", SqlDbType.NVarChar).Value = type;
                    switch (i)
                    {
                        case 1:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(BadelandBarn.Text));
                            break;
                        case 2:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(BadelandVoksen.Text));
                            break;
                        case 3:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(CykelLeje.Text));
                            break;
                        case 4:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(KajakLeje.Text));
                            break;
                        case 5:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(KanoLeje.Text));
                            break;
                        case 6:
                            sql_cmnd.Parameters.AddWithValue("@Antal", Convert.ToInt32(SengelinnedLeje.Text));
                            break;
                    }
                    sql_cmnd.ExecuteNonQuery();
                    sql_cmnd.Parameters.RemoveAt("@Type");
                    sql_cmnd.Parameters.RemoveAt("@Antal");

                }
                sql_cmnd.Parameters.AddWithValue("@Type", SqlDbType.NVarChar).Value = "Slutrengøring";
                int rengøring = 0;
                if (CleaningCheckBox.Checked)
                    rengøring = 1;
                sql_cmnd.Parameters.AddWithValue("@Antal", SqlDbType.NVarChar).Value = rengøring;
                sql_cmnd.ExecuteNonQuery();
                sqlCon.Close();
            }

            ScriptManager.RegisterStartupScript(this, this.GetType(), "Pop", "showModal();", true);

            TakKunde.Text = "Tak for din reservation" + fornavn;
            Bestilt.Text = "Din reservation er blevet sendt. Din samlet pris bliver " + pris + " kr.";

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
            Test.Text = DropDown.SelectedValue;
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
                        if (i < 10)
                        {
                            PladsDropDownList.Items.Add($"00{i}");
                        }
                        else if (i > 9 && i < 100)
                        {
                            PladsDropDownList.Items.Add($"0{i}");
                        }
                        else
                        {
                            PladsDropDownList.Items.Add($"{i}");
                        }
                        
                    }
                    CleaningCheckBox.Enabled = false;
                    if (CleaningCheckBox.Checked == true)
                    {
                        CleaningCheckBox.Checked = false;
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
                        if (i < 10)
                        {
                            PladsDropDownList.Items.Add($"00{i}");
                        }
                        else if (i > 9 && i < 100)
                        {
                            PladsDropDownList.Items.Add($"0{i}");
                        }
                        else
                        {
                            PladsDropDownList.Items.Add($"{i}");
                        }
                    }
                    CleaningCheckBox.Enabled = false;
                    if (CleaningCheckBox.Checked == true)
                    {
                        CleaningCheckBox.Checked = false;
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
                        PladsDropDownList.Items.Add($"H0{i}");
                    }
                    CleaningCheckBox.Enabled = true;
                    break;
                case 3:
                    PladsDropDownList.Items.Clear();
                    for (int i = 10; i < 16; i++)
                    {
                        PladsDropDownList.Items.Add($"H{i}");
                    }
                    CleaningCheckBox.Enabled = true;
                    break;

            }
        }

        protected void kajakLeje_TextChanged(object sender, EventArgs e)
        {
            KajakLejeLabel.Text = "Pris: " + Convert.ToInt32(KajakLeje.Text) * 100 + " kr.";

        }

        protected void sengelinnedLeje_TextChanged(object sender, EventArgs e)
        {
            SengelinnedLejeLabel.Text = "Pris: " + Convert.ToInt32(SengelinnedLeje.Text) * 30 + " kr.";

        }

        protected void kanoLeje_TextChanged(object sender, EventArgs e)
        {
            KanoLejeLabel.Text = "Pris: " + Convert.ToInt32(KanoLeje.Text) * 150 + " kr.";

        }

        protected void cykelLeje_TextChanged(object sender, EventArgs e)
        {
            CykelLejeLabel.Text = "Pris: " + Convert.ToInt32(CykelLeje.Text) * 200 + " kr.";

        }

        protected void badelandVoksen_TextChanged(object sender, EventArgs e)
        {

            BadelandVoksenLabel.Text = "Pris: " + Convert.ToInt32(BadelandVoksen.Text) * 30 + " kr.";
        }

        protected void badelandBarn_TextChanged(object sender, EventArgs e)
        {
            BadelandBarnLabel.Text = "Pris: " + Convert.ToInt32(BadelandBarn.Text) * 15 + " kr.";
        }

        protected void CleaningCheckBox_CheckedChanged(object sender, EventArgs e)
        {
            if (CleaningCheckBox.Checked)
            {
                CleaningLabel.Text = "Pris: 150 kr.";
            }
            else
            {
                CleaningLabel.Text = "Pris: 0 kr.";
            }
        }
        protected void Close_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Index.aspx");
        }
        }
}