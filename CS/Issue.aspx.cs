using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class Issue : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		int comboBoxValue = Convert.ToInt32(ASPxComboBox1.Value);
		ASPxTextBox1_1.Visible = comboBoxValue != 2;
		ASPxTextBox1_2.Visible = comboBoxValue != 2;
		ASPxTextBox2_1.Visible = comboBoxValue != 1;
		ASPxTextBox2_2.Visible = comboBoxValue != 1;

    }
	protected void ASPxButton1_Click(object sender, EventArgs e) {
		ASPxEdit.ValidateEditorsInContainer(Form, "submit");
	}
}