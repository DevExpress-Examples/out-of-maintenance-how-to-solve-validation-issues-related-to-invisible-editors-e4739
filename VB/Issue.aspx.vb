Imports Microsoft.VisualBasic
Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxEditors

Partial Public Class Issue
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		Dim comboBoxValue As Integer = Convert.ToInt32(ASPxComboBox1.Value)
		ASPxTextBox1_1.Visible = comboBoxValue <> 2
		ASPxTextBox1_2.Visible = comboBoxValue <> 2
		ASPxTextBox2_1.Visible = comboBoxValue <> 1
		ASPxTextBox2_2.Visible = comboBoxValue <> 1

	End Sub
	Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
		ASPxEdit.ValidateEditorsInContainer(Form, "submit")
	End Sub
End Class