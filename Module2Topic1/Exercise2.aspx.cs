using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e) {
            if (FileUpload1.HasFile) {
                Response.Write("<script>alert('Successful');</script>");
                StringBuilder sb = new StringBuilder();

                if (FileUpload1.HasFile) {
                    try {
                        //saving the file
                        //FileUpload1.SaveAs("<c:\\SaveDirectory>" + FileUpload1.FileName);

                    } catch (Exception ex) {
                        Response.Write("<script>alert('Unsuccessful');</script>");
                    }
                } else {
                    Response.Write("<script>alert('end');</script>");
                }

            }
        }
    }
}