using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MyFirstASPNETApp
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                //When we'll load the page, we'll load the values in the DropDownList
                for (int i = 10; i < 100; i += 10)
                    ddlMonthlyInvestment.Items.Add(i.ToString());

            }
        }


        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int monthlyInterestInvestment = Convert.ToInt32(ddlMonthlyInvestment.SelectedValue);
                decimal yearlyIntresetRate = Convert.ToDecimal(txtInterestRate.Text);
                int allYears = Convert.ToInt32(txtYears.Text);

                decimal allFuturedProfit = CalculateProfit(monthlyInterestInvestment, allYears, yearlyIntresetRate);
                lblFutureValue.Text = allFuturedProfit.ToString("C");

            }
        }
        protected decimal CalculateProfit(int monthlyIntrestInvestment, int allYears, decimal yearlyIntrestRate)
        {
            int months = allYears * 12;
            decimal monthlyIntrestRate = yearlyIntrestRate / 12 / 100;

            decimal futureProfit = 0;
            for (int i = 0; i < months; i++)
            {

                futureProfit = (futureProfit + monthlyIntrestInvestment) * (monthlyIntrestRate + 1);
            }

            return futureProfit;
        }
        protected void btnClear_Click(object sender, EventArgs e)
        {
            ddlMonthlyInvestment.SelectedIndex = 0;
            txtInterestRate.Text = "";
            txtYears.Text = "";
            lblFutureValue.Text = "";
        }

    }
}