<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WxXOEV</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY onLoad="setNavigation('/WxXOEV/configuration.dsp', '../WmRoot/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm#context=is_help&topic=IS_Packages_WmXSLTpkg_Scrn');">
      <DIV class="position">
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXML &gt; Configuration</TD>
            </TR>

	  	     <TR>
	        	<TD>
	        		%invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:viewConfiguration%
	        		<TABLE width="100%" class="tableView">
	        			<TR><TD id="wxxoev-serverconfiguration-header" class="heading heading-serverconfigurationok-%value isOK%" colspan="2">Server Configuration</TD></TR>
	        			%loop warnings%
	        			<TR><TD colspan="2">%value warnings%</TD></TR>
	        			%endloop%
	        			<TR><TD width="30%">watt.core.datatype.usejavaregex</TD><TD width="70%">%value watt.core.datatype.usejavaregex%</TD>
	        			<TR><TD colspan="2"><a href="/WmAdmin/#/integration/settings/es">Settings can be modified here and may require a restart to take effect</a></TD>
	        		</TABLE>
	        		<TABLE width="100%" class="tableView">
	        			<TR><TD id="wxxoev-wxxoevconfiguration-header" class="heading" colspan="2">WxXOEV Configuration</TD></TR>
	        			<TR><TD width="30%">wx.xoev.defaults.schemaimport.foldername</TD><TD width="70%">%value wx.xoev.defaults.schemaimport.foldername%</TD>
	        			<TR><TD width="30%">wx.xoev.defaults.schematronimport.foldername</TD><TD width="70%">%value wx.xoev.defaults.schematronimport.foldername%</TD>
	        			<TR><TD colspan="2"><a href="/WxConfig/listFiles.dsp?showPkg=WxXOEV">Settings can be modified here and take effect without a restart</a></TD>
	        		</TABLE>	        		
	        		%endinvoke%
				</TD>
				
		     </TR>	
		</TABLE>
</DIV>
</BODY>
</HTML>
