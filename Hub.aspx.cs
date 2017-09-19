using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hub : System.Web.UI.Page
{
    protected int presentDate = 20730216;
    protected int startDate;
    protected int endDate;

    protected void Page_Load(object sender, EventArgs e)
    {
        TablePanel.Height = (Unit)1100;
        CurrentDateLiteral.Text = String.Format("{0:####-##-##}", presentDate);
    }

    protected void SaveSelectedDates()
    {
        
        StartDateHiddenField.Value = string.Concat(StartYearDropDown.SelectedValue + StartMonthDropDown.SelectedValue + StartDayDropDown.SelectedValue);
        startDate = Convert.ToInt32(StartDateHiddenField.Value);

        endDate = Convert.ToInt32(string.Concat(EndYearDropDown.SelectedValue + EndMonthDropDown.SelectedValue + EndDayDropDown.SelectedValue));
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

    protected void ApplyXPathToGridView() {
        string search = HubSearchBox.Text;
        SaveSelectedDates();
        int lastAllowedDate = Math.Min(endDate, presentDate);
        int firstAllowedDate = Math.Max(startDate, 20700101);
        if (lastAllowedDate == 0) {
            lastAllowedDate = presentDate;
        }

        if (search != string.Empty)
        {
            NewsPostsXML.XPath = "NewsPosts/NewsPost[@Date>=" + firstAllowedDate + " and @Date<=" + lastAllowedDate + " and @*[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + search.ToLower() + "')]]";
        }
        else
        {
            NewsPostsXML.XPath = "NewsPosts/NewsPost[@Date>=" + firstAllowedDate + " and @Date<=" + lastAllowedDate + "]";
        }
        TablePanel.Height = (Unit)1100;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        TablePanel.Height = (Unit)1100;
    }

    protected void ResetStartButton_Click(object sender, EventArgs e)
    {
        StartYearDropDown.SelectedValue = "2070";
        StartMonthDropDown.SelectedValue = "01";
        StartDayDropDown.SelectedValue = "01";
        startDate = 20700101;
        ApplyXPathToGridView();
    }

    protected void ResetEndButton_Click(object sender, EventArgs e)
    {
        EndYearDropDown.SelectedValue = presentDate.ToString().Substring(0, 4);
        EndMonthDropDown.SelectedValue = presentDate.ToString().Substring(4, 2);
        EndDayDropDown.SelectedValue = presentDate.ToString().Substring(6, 2);
        endDate = presentDate;
        ApplyXPathToGridView();
    }

    protected void ApplyFilterButton_Click(object sender, EventArgs e)
    {
        ApplyXPathToGridView();
    }
}