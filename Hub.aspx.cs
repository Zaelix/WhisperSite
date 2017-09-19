using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hub : System.Web.UI.Page
{
    protected int presentDate = 20730214;
    protected int startDate;
    protected int endDate;

    protected void Page_Load(object sender, EventArgs e)
    {
        TablePanel.Height = (Unit)1000;
        CurrentDateLiteral.Text = String.Format("{0:####-##-##}", presentDate);
        //EndDateSanityCheck();
        //LoadSelectedDates();
        TestDateLabel.Text = "Start Date: " + startDate + ", End Date: " + endDate;
    }

    protected void EndDateSanityCheck() {
        if (EndYearDropDown.SelectedValue == "2070" && EndMonthDropDown.SelectedValue == "01" && EndDayDropDown.SelectedValue == "01")
        {
            EndYearDropDown.SelectedValue = "2073";
            EndMonthDropDown.SelectedValue = "02";
            EndDayDropDown.SelectedValue = "14";
            endDate = presentDate;
        }
    }

    protected void SaveSelectedDates(object sender, EventArgs e)
    {
        
        StartDateHiddenField.Value = string.Concat(StartYearDropDown.SelectedValue + StartMonthDropDown.SelectedValue + StartDayDropDown.SelectedValue);
        startDate = Convert.ToInt32(StartDateHiddenField.Value);

        endDate = Convert.ToInt32(string.Concat(EndYearDropDown.SelectedValue + EndMonthDropDown.SelectedValue + EndDayDropDown.SelectedValue));
        TestDateLabel.Text = "Start Date: " + startDate + ", End Date: " + endDate;
    }

    protected string[] ConvertNumberToDateStringArray(int num) {
        string[] date = new string[3];
        date[0] = startDate.ToString().Substring(0, 4);
        date[1] = startDate.ToString().Substring(4, 2);
        date[2] = startDate.ToString().Substring(6, 2);
        return date;
    }

    protected void LoadSelectedDates()
    {
        startDate = Convert.ToInt32(StartDateHiddenField.Value);
        if (startDate >= 10000000)
        {
            string[] date = ConvertNumberToDateStringArray(startDate);
            StartYearDropDown.SelectedValue = date[0];
            StartMonthDropDown.SelectedValue = date[1];
            StartDayDropDown.SelectedValue = date[2];
        }
    }

    protected void HubSearchBox_TextChanged(object sender, EventArgs e)
    {
        string search = HubSearchBox.Text;
        if (search != string.Empty)
        {
            NewsPostsXML.XPath = "NewsPosts/NewsPost[@Date<="+ presentDate + " and @*[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + search.ToLower() + "')]]";
        }
        else
        {
            NewsPostsXML.XPath = "NewsPosts/NewsPost[@Date<=" + presentDate + "]";
        }
        TablePanel.Height = (Unit)1000;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TablePanel.Height = (Unit)1000;
    }

    protected void ResetStartButton_Click(object sender, EventArgs e)
    {
        StartYearDropDown.SelectedValue = "2070";
        StartMonthDropDown.SelectedValue = "01";
        StartDayDropDown.SelectedValue = "01";
        startDate = 20700101;
    }

    protected void ResetEndButton_Click(object sender, EventArgs e)
    {
        EndYearDropDown.SelectedValue = "2073";
        EndMonthDropDown.SelectedValue = "02";
        EndDayDropDown.SelectedValue = "14";
        endDate = presentDate;
    }
}