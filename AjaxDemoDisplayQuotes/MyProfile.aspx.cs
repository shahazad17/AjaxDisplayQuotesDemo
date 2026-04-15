using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace AjaxDemoDisplayQuotes
{

    public partial class MyProfile : System.Web.UI.Page
    { 

     List<String> quotes = new List<string>(); 
        Random rnd = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {
        lblname.Text = "Nikhil Gawandi";
        lblaboutme.Text = " I am a Student";
        lblqualification.Text = "MCA";
        lblhobbies.Text = "football , carrom , crickrt";
        quotes.Add("save water drink chai");
        quotes.Add("green mumbai save mumbai");
        quotes.Add("time is money");
        quotes.Add("everything is possible");

        lblquotes.Text = quotes[rnd.Next(quotes.Count)];
    }

        protected void Timer1_Tick(object sender, EventArgs e)
        {
         lblquotes.Text = quotes[rnd.Next(quotes.Count)]; 
        }

        protected void btnLoadData_Click(object sender, EventArgs e)
        {
            // Simulate a delay to show progress
            Thread.Sleep(3000);
            lblMessage.Text = "Data loaded successfully at " + DateTime.Now.ToString();
        }
    }
    }


/*
 *   <!--
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick" />
                </Triggers>
                    -->
*/