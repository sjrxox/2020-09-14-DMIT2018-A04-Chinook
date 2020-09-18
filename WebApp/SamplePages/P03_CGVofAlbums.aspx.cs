﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp.SamplePages
{
    public partial class P03_CGVofAlbums : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            // The cells represent what would be shown on the label

            GridViewRow agvrow = GridView1.Rows[GridView1.SelectedIndex];
            string colValue = agvrow.Cells[2].Text.Trim();
            MessageLabel.Text = colValue;
        }
    }
}