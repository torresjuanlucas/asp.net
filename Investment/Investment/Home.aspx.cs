using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Investment
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if (!IsPostBack)
            {
                for(int i =50; i<=500; i+=50)
                {
                    ddlInvestment.Items.Add(i.ToString());
                }
            }

        }

        protected void btReset_Click(object sender, EventArgs e)
        {
            tbRate.Text = "";
            tbYears.Text = "";
            ddlInvestment.SelectedIndex = 0;
            lbValue.Text = "";
        }

        protected void btCalculate_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                int monthlyInvestment = Int32.Parse(ddlInvestment.SelectedValue);
                decimal interest = Decimal.Parse(tbRate.Text);
                int years = Int32.Parse(tbYears.Text);

                lbValue.Text = CalculateValue(monthlyInvestment, interest, years).ToString("c");
            }
        }

        protected decimal CalculateValue(int monthlyInvestment, decimal yearlyInterestRate, int years)
        {
            int months = years * 12;
            decimal monthlyInterestRate = yearlyInterestRate / 12 / 100;
            decimal futureValue = 0;
            for (int i = 0; i < months; i++)
            {
                futureValue = (futureValue + monthlyInvestment) * (1 + monthlyInterestRate);
            }
            return futureValue;
        }

    }
}