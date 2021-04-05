﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWork003
{
    public partial class Drone_Battery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                Header1.title = "電池管理資料表";
                DataTable dt = ConnectDB.ReadDroneBattery();
                this.DroneBatteryReater.DataSource = dt;
                this.DroneBatteryReater.DataBind();
            }

        }

        protected void Repeater1_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {

        }


        protected void DroneBatteryReater_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            string cmdName = e.CommandName;
            string cmdArgu = e.CommandArgument.ToString();

            if ("DeleteItem" == cmdName)
            {
                ConnectDB.DeleteBattery(cmdArgu);
            }

            if ("UpDateItem" == cmdName)
            {
                string targetUrl = "~/Drone_Battery_Create.aspx?ID=" + cmdArgu;

                Response.Redirect(targetUrl);
            }

            DataTable dt = ConnectDB.ReadDroneBattery();
            this.DroneBatteryReater.DataSource = dt;
            this.DroneBatteryReater.DataBind();
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {
            Response.Redirect("Drone_Battery_Create.aspx");
        }
    }
}