Imports Microsoft.VisualBasic
Imports System
Imports System.Threading

Partial Public Class _Default
	Inherits System.Web.UI.Page
	Protected Sub Page_Load(ByVal sender As Object, ByVal e As EventArgs)
		If IsPostBack Then
            ' Emulate a long time postback.
			Thread.Sleep(500)
		Else
			Session("Count") = Nothing
		End If
		lbl.Text = GetPostBackCount()
	End Sub

	Private Function GetPostBackCount() As String
		Dim count As Integer = 0
		If Session("Count") IsNot Nothing Then
			count = CInt(Fix(Session("Count"))) + 1
			Session("Count") = count
		Else
			Session("Count") = 0
		End If
		Return count.ToString()
	End Function

	Protected Sub btn_Click(ByVal sender As Object, ByVal e As EventArgs)
        ' Some code.
	End Sub
End Class