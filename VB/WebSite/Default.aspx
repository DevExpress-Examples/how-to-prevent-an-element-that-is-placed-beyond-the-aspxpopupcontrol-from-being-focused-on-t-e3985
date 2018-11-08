<%@ Page Language="vb" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxPopupControl" TagPrefix="dx" %>
<%@ Register Assembly="DevExpress.Web.v13.1, Version=13.1.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a"
	Namespace="DevExpress.Web.ASPxEditors" TagPrefix="dx" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
	<title></title>
	<script type="text/javascript">
		function OnInputFocus() {
			firstEditor.Focus();
		}
	</script>
</head>
<body>
	<form id="form1" runat="server">
	<div>
		<table>
			<tr>
				<td>
					<dx:ASPxButton ID="btShowPopup" runat="server" Text="Show Popup" AutoPostBack="false">
						<ClientSideEvents Click="function (s, e) { popup.Show(); }" />
					</dx:ASPxButton>
				</td>
				<td>
					<dx:ASPxTextBox ID="txOutsideSample" runat="server" Width="170px">
					</dx:ASPxTextBox>
				</td>
			</tr>
		</table>
		<dx:ASPxPopupControl ID="ppctlPopup" runat="server" ClientInstanceName="popup" Modal="True"
			PopupHorizontalAlign="WindowCenter" PopupVerticalAlign="WindowCenter">
			<ContentCollection>
				<dx:PopupControlContentControl ID="PopupControlContentControl1" runat="server" SupportsDisabledAttribute="True">
					<table width="100%">
						<tr>
							<td>
								TextBox
							</td>
							<td>
								ComboBox
							</td>
						</tr>
						<tr>
							<td>
								<dx:ASPxTextBox ID="txSample" runat="server" Width="170px" ClientInstanceName="firstEditor">
								</dx:ASPxTextBox>
							</td>
							<td>
								<dx:ASPxComboBox ID="cbSample" runat="server" Width="170px">
									<Items>
										<dx:ListEditItem Text="Item 1" />
										<dx:ListEditItem Text="Item 2" />
										<dx:ListEditItem Text="Item 3" />
									</Items>
								</dx:ASPxComboBox>
							</td>
						</tr>
						<tr>
							<td colspan="2" align="center">
								<dx:ASPxButton ID="btClosePopup" runat="server" Text="OK" AutoPostBack="false">
									<ClientSideEvents Click="function(s, e) { popup.Hide(); }" />
								</dx:ASPxButton>
							</td>
						</tr>
					</table>
					<%--Dummy input to move a focus to the first form element--%>
					<input type="text" onfocus="OnInputFocus();" style="width: 0px; height: 0px; padding-top: 0px;
						padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px;
						border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px;" />
				</dx:PopupControlContentControl>
			</ContentCollection>
		</dx:ASPxPopupControl>
	</div>
	</form>
</body>
</html>