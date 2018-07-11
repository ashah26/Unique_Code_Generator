using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MECForm
{
    public partial class InvoiceForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Console.WriteLine("Hellow World");
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                string name = Request.Form["txtName"];
                string project = rdProject.SelectedValue;
                string college = ddlCollege.SelectedValue;
                DateTime dt = Convert.ToDateTime(Request.Form["txtDate"]);
                string date = dt.ToString("MMddyyyy");
                string qty = Request.Form["txtQty"];
                int price = (project.Equals("B") ? 35 : 40);

                string lastName = name.Split(' ')[1];
                string output = "";

                int amount = Convert.ToInt16(qty) * price;

                String uniqueId = college + project + lastName + date;
                String path = Path.Combine(Server.MapPath("."), "output.txt");

                output += "\t Invoice Detail" + Environment.NewLine + Environment.NewLine;
                output += "Date: \t\t" + dt.ToString("MM/dd/yyyy") + Environment.NewLine;
                output += "Name: \t\t" + name + Environment.NewLine;
                output += "College: \t" + ddlCollege.SelectedItem.Text + Environment.NewLine;
                output += "Project: \t" + rdProject.SelectedItem.Text + Environment.NewLine;
                output += "Unique Code: \t" + uniqueId + Environment.NewLine;
                output += "Amount: \t" + amount + "$";

                File.WriteAllText(path, output);
                Response.Redirect("/FormSubmitted.aspx");
            }
            catch (Exception ex)
            {
                Console.WriteLine(ex);
            }
        }
    }
}