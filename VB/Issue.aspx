<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Issue.aspx.vb" Inherits="Issue" %>

<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>






<%@ Register Assembly="DevExpress.Web.v15.1, Version=15.1.15.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title>Hidden editor validation operates incorrectly</title>
	<script language="javascript" type="text/javascript">
		function OnClick(s, e) {
			e.processOnServer = ASPxClientEdit.ValidateGroup("submit", true);
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
		<div>
			<h2>Problematic page</h2>
			<br />
			- Click the Submit button;
			<br />
			- Select another value in the ASPxCombroBox;
			<br />
			- Click the Submit buttom again.
			<br />
			<br />
			Hidden controls are still <b>invalid</b>
			<br /><br />
			<dx:ASPxCallbackPanel ID="ASPxCallbackPanel1" runat="server" Width="400px" ClientInstanceName="cp">
				<PanelCollection>
					<dx:PanelContent runat="server" SupportsDisabledAttribute="True">
						<dx:ASPxPageControl ID="ASPxPageControl1" runat="server" ActiveTabIndex="1" Width="398px">
							<TabPages>
								<dx:TabPage>
									<ContentCollection>
										<dx:ContentControl>
											<dx:ASPxTextBox ID="ASPxTextBox1" runat="server" Width="170px">
												<ValidationSettings ValidationGroup="submit">
													<RequiredField ErrorText="text box on the first tab is required" IsRequired="true" />
												</ValidationSettings>
											</dx:ASPxTextBox>
										</dx:ContentControl>
									</ContentCollection>
								</dx:TabPage>
								<dx:TabPage>
									<ContentCollection>
										<dx:ContentControl>
											<dx:ASPxComboBox ID="ASPxComboBox1" runat="server" Height="21px" Width="232px">
												<ClientSideEvents SelectedIndexChanged="function(s, e) {
	cp.PerformCallback();	
}" />
												<Items>
													<dx:ListEditItem Text="ShowAll" Value="0" Selected="true" />
													<dx:ListEditItem Text="Show the first couple of editors" Value="1" />
													<dx:ListEditItem Text="Show the last couple of editors" Value="2" />
												</Items>
											</dx:ASPxComboBox>
											<br />
											<br />
											<dx:ASPxTextBox ID="ASPxTextBox1_1" runat="server" Width="170px" NullText="Editor 1">
												<ValidationSettings ValidationGroup="submit">
													<RequiredField ErrorText="text1 is required" IsRequired="true" />
												</ValidationSettings>
											</dx:ASPxTextBox>
											<dx:ASPxTextBox ID="ASPxTextBox1_2" runat="server" Width="170px" NullText="Editor 2">
												<ValidationSettings ValidationGroup="submit">
													<RequiredField ErrorText="text2 is required" IsRequired="true" />
												</ValidationSettings>
											</dx:ASPxTextBox>
											<dx:ASPxTextBox ID="ASPxTextBox2_1" runat="server" Width="170px" NullText="Editor 3">
												<ValidationSettings ValidationGroup="submit">
													<RequiredField ErrorText="text3 is required" IsRequired="true" />
												</ValidationSettings>
											</dx:ASPxTextBox>
											<dx:ASPxTextBox ID="ASPxTextBox2_2" runat="server" Width="170px" NullText="Editor 4">
												<ValidationSettings ValidationGroup="submit">
													<RequiredField ErrorText="text4 is required" IsRequired="true" />
												</ValidationSettings>
											</dx:ASPxTextBox>
										</dx:ContentControl>
									</ContentCollection>
								</dx:TabPage>
							</TabPages>
						</dx:ASPxPageControl>
					</dx:PanelContent>
				</PanelCollection>
			</dx:ASPxCallbackPanel>

			<dx:ASPxButton ID="ASPxButton1" runat="server" Text="Submit" OnClick="ASPxButton1_Click">
				<ClientSideEvents Click="OnClick" />
			</dx:ASPxButton>
			<dx:ASPxValidationSummary ID="ASPxValidationSummary1" runat="server" ValidationGroup="submit"></dx:ASPxValidationSummary>
			<br /><a href="Solution.aspx">Solution page</a>
		</div>
	</form>
</body>
</html>