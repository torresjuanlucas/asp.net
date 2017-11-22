using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace QuotationBuilder
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btCalculate_Click(object sender, EventArgs e)
        {
            decimal discountAmount = Decimal.Parse(tbPrice.Text) * Decimal.Parse(tbPercent.Text) / 100;
            decimal totalPrice = Decimal.Parse(tbPrice.Text) - discountAmount;

            lbDiscountAmount.Text = discountAmount.ToString("c");
            lbTotalPrice.Text = totalPrice.ToString("c");
        }
    }
}