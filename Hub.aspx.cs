using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Hub : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Panel1.Height = GridView1.Height;
    }

    protected void HubSearchBox_TextChanged(object sender, EventArgs e)
    {
        string search = HubSearchBox.Text;
        if (search != string.Empty)
        {
            NewsPostsXML.XPath = "/NewsPosts/NewsPost[@Date<='20730214' and @*[contains(translate(., 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'abcdefghijklmnopqrstuvwxyz'), '" + search.ToLower() + "')]]";
        }
        else
        {
            NewsPostsXML.XPath = "/NewsPosts/NewsPost[@Date<='20730214']";
        }
        Panel1.Height = GridView1.Height;
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        Panel1.Height = GridView1.Height;
    }
}