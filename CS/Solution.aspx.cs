using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

public partial class Solution : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
		int comboBoxValue = Convert.ToInt32(ASPxComboBox1.Value);
		ASPxTextBox1_1.ClientVisible = comboBoxValue != 2;
		ASPxTextBox1_2.ClientVisible = comboBoxValue != 2;
		ASPxTextBox2_1.ClientVisible = comboBoxValue != 1;
		ASPxTextBox2_2.ClientVisible = comboBoxValue != 1;
    }
	protected void ASPxTextBox_Validation(object sender, DevExpress.Web.ValidationEventArgs e) {
		ASPxTextBox tb = sender as ASPxTextBox;
		if(!tb.ClientVisible){
			e.IsValid  = true;
		}		
	}
	
	protected void ASPxButton1_Click(object sender, EventArgs e) {
		ASPxEdit.ValidateEditorsInContainer(Form, "submit");
	}
}