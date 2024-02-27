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
                if (equi >= 96.00 && equi <= 100) {
                    finalGrade.Text = "1.00";
                    Response.Write($"<script>alert('Congratulations! Your Final grade is {finalGrade.Text}')</script>");
                } else if (equi <= 96.00 && equi >= 91.51) finalGrade.Text = "1.25";
                else if (equi < 91.51 && equi >= 87.01) finalGrade.Text = "1.50";
                else if (equi < 87.01 && equi >= 82.51) finalGrade.Text = "1.75";
                else if (equi < 82.51 && equi >= 78.01) finalGrade.Text = "2.00";
                else if (equi < 78.01 && equi >= 73.51) finalGrade.Text = "2.25";
                else if (equi < 73.51 && equi >= 69.01) finalGrade.Text = "2.50";
                else if (equi < 69.01 && equi >= 64.51) finalGrade.Text = "2.75";
                else if (equi < 64.51 && equi >= 60.00) finalGrade.Text = "3.00";
                else if (equi < 60.00) finalGrade.Text = "5.00";
                
            } else {
                finalGrade.Text = "Invalid Input";
            }
        }
    }
}