﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed5_Click(object sender, EventArgs e) {
            if (!(age.Text == "" || email.Text == "" || confirmEmail.Text == "")) result.Text = $"<br />Name: {fullName.Text}<br/>Age: {age.Text}<br/>Email: {email.Text}";
            else result.Text = $"Make sure all fields are filled out!";
        }
    }
}