﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HomeWork003
{
    public partial class Drone_Battery_Create : System.Web.UI.Page
    {
        protected void Page_Init(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];

            DataTable dt = ConnectDB.ReadSingleBattery(id);

            if (id == null)
            {
                return;
            }

            this.TextBatteryName.Text = dt.Rows[0]["battery_Name"].ToString();
            this.TextBatteryStatus.Text = dt.Rows[0]["status"].ToString();
            this.TextStop.Text = dt.Rows[0]["stopReason"].ToString();

            this.title.InnerHtml = "編輯電池資料";
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Create_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            string name = this.TextBatteryName.Text;
            string Status = this.TextBatteryStatus.Text;
            string StopReason = this.TextStop.Text;


            if (id == null)
            {
                ConnectDB.InsertIntoDroneBattery(name, Status, StopReason);
                Response.Redirect("Drone_Battery.aspx");
            }

            if (id != null)
            {

                ConnectDB.UpDateBattery(id, name, Status, StopReason);
                Response.Redirect("Drone_Battery.aspx");
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            string id = Request.QueryString["ID"];
            string name = this.TextBatteryName.Text;
            string Status = this.TextBatteryStatus.Text;
            string StopReason = this.TextStop.Text;

            ConnectDB.UpDateBattery(id, name, Status, StopReason);
            //Response.Redirect("Drone_Detail.aspx");
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("Drone_Battery.aspx");
        }
    }
}