using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Module1Exercise1
{
    public partial class Exercise3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // TODO 3.3 Set the text value of the finalGrade label to "Submit your grade percentage to see your final grade!". Watch out for post backs
        }

        protected void Unnamed2_Click(object sender, EventArgs e) {
            string percentage = percentageGrade.Text;
            if (double.TryParse(percentage, out double equi) && (equi >= 0 && equi <= 100)) {
                if (equi > 95.00 && equi <= 100) {
                    finalGrade.Text = "1.00";
                    Response.Write($"<script>alert('Congratulations! Your Final grade is {finalGrade.Text}')</script>");
                } else if (equi <= 95.00 && equi >= 90.00) finalGrade.Text = "1.25";
                else if (equi < 90.00 && equi >= 85.00) finalGrade.Text = "1.50";
                else if (equi < 85.00 && equi >= 80.00) finalGrade.Text = "1.75";
                else if (equi < 80.00 && equi >= 75.00) finalGrade.Text = "2.00";
                else if (equi < 75.00 && equi >= 70.00) finalGrade.Text = "2.25";
                else if (equi < 70.00 && equi >= 65.00) finalGrade.Text = "2.50";
                else if (equi < 65.00 && equi >= 63.00) finalGrade.Text = "2.75";
                else if (equi < 63.00 && equi >= 60.00) finalGrade.Text = "3.00";
                else if (equi < 60.00) finalGrade.Text = "5.00";
                
            } else {
                finalGrade.Text = "Invalid Input";
            }
        }
    }
}