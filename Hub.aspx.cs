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
        
    }

    protected void HubSearchBox_TextChanged(object sender, EventArgs e)
    {
        string search = HubSearchBox.Text;
        if (search != string.Empty)
        {
            NewsPostsXML.XPath = "/NewsPosts/NewsPost[@*[contains(., '" + search + "')]]";
        }
        else
        {
            NewsPostsXML.XPath = "";
        }
    }
}