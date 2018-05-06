Imports System
Imports System.Collections.Generic
Imports System.Linq
Imports System.Web
Imports System.Web.UI
Imports System.Web.UI.WebControls
Imports DevExpress.Web.ASPxEditors

Partial Public Class Solution
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
        Dim comboBoxValue As Integer = Convert.ToInt32(ASPxComboBox1.Value)
        ASPxTextBox1_1.ClientVisible = comboBoxValue <> 2
        ASPxTextBox1_2.ClientVisible = comboBoxValue <> 2
        ASPxTextBox2_1.ClientVisible = comboBoxValue <> 1
        ASPxTextBox2_2.ClientVisible = comboBoxValue <> 1
    End Sub
    Protected Sub ASPxTextBox_Validation(ByVal sender As Object, ByVal e As DevExpress.Web.ASPxEditors.ValidationEventArgs)
        Dim tb As ASPxTextBox = TryCast(sender, ASPxTextBox)
        If Not tb.ClientVisible Then
            e.IsValid = True
        End If
    End Sub

    Protected Sub ASPxButton1_Click(ByVal sender As Object, ByVal e As EventArgs)
        ASPxEdit.ValidateEditorsInContainer(Form, "submit")
    End Sub
End Class