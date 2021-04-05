using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWork003
{

    public partial class Header1 : System.Web.UI.UserControl
    {
        public static string title { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {
            this.tableName.InnerText = title;
        }
    }
}