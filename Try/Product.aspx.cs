using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using PayPal.Api;

namespace Try
{
    public partial class Product : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnPurchase_Click(object sender, EventArgs e)
        {

            decimal postagePackagingCost = 3.95m;
            decimal productPrice = 10.00m;
            decimal quantityOfProduct = int.Parse(ddlQuantity.SelectedValue);
            decimal subTotal = (quantityOfProduct * productPrice);
            decimal total = subTotal + postagePackagingCost;

            var clientId = "AVt620HYECzDcRrkXXjgo8uOnMpDo0eP9CRyIhy9q7-IlN8eqjyAloSy4hjtAg4EJ8H1AQwLhlFTniji";
            var clientSecret = "EFK7hYOvEelCIYmMEqvV2nR1UPDcut9PHNcx8-DeN-P3riMxGDVfqMB2bn0f7lb5mfbW71jR0oNESuhU";
            var sdkConfig = new Dictionary<string, string>{
                { "mode", "sandbox" },
                { "clientId", "clientId"},
                { "clientSecret", "clientSecret" }
            };

            var accessToken = new OAuthTokenCredential(clientId, clientSecret, sdkConfig).GetAccessToken();
            var apiContext = new APIContext(accessToken);
            apiContext.Config = sdkConfig;

            var productItem = new Item();
            productItem.name = "Product 1";
            productItem.currency = "USD";
            productItem.price = productPrice.ToString();
            productItem.sku = "PRO1";
            productItem.quantity = quantityOfProduct.ToString();

            var transactionDetails = new Details();
            transactionDetails.tax = "0";
            transactionDetails.shipping = postagePackagingCost.ToString();
            transactionDetails.subtotal = subTotal.ToString("0.00");

            var transactionAmount = new Amount();
            transactionAmount.currency = "USD";
            transactionAmount.total = total.ToString("0.00");
            transactionAmount.details = transactionDetails;


            var transaction = new Transaction();
            transaction.description = "Your order of Product";
            transaction.invoice_number = Guid.NewGuid().ToString();
            transaction.amount = transactionAmount;
            transaction.item_list = new ItemList
            {
                items = new List<Item> { productItem }
            };

            var payer = new Payer();
            payer.payment_method = "paypal";

            var redirectUrls = new RedirectUrls();
            redirectUrls.cancel_url = "http://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath + "/Default.aspx";
            redirectUrls.return_url = "http://" + HttpContext.Current.Request.Url.Authority + HttpContext.Current.Request.ApplicationPath + "/CompletePurchase.aspx";

            var payment = Payment.Create(apiContext, new Payment
            {
                intent = "sale",
                payer = payer,
                transactions = new List<Transaction> { transaction },
                redirect_urls = redirectUrls
            });

         Session["paymentId"] = payment.id;

            foreach (var link in payment.links)
            {
                if (link.rel.ToLower().Trim().Equals("approval_url"))
                {
                    Response.Redirect(link.href);
                }
            }
        }
    }
}