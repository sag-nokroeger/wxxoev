<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WmXOEV</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY onLoad="setNavigation('/WxXOEV/validation.dsp', '../WmRoot/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm#context=is_help&topic=IS_Packages_WmXSLTpkg_Scrn');">
      <DIV class="position">
	  %invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:validate%
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXOEV &gt; Validation</TD>
            </TR>

  	     <TR>
        	<TD>
				<TABLE width="100%" class="tableView">

					<TR><TD id="wxxoev-schemavalidationresult-header" class="heading heading-validation-%value schemaValidation%" colspan=3>Schema Validation %value schemaValidation%</TD></TR>
					%loop schemaValidationErrors%
						<tr>
							<td width="10%" class="oddrow-l">%value errorCode%</td>
							<td width="60%" class="oddrow-l">%value errorMessage%
							%ifvar schemaImportLink%
								<a href="%value schemaImportLink%">Try importing the schema.</a>
							%endifvar%
							</td>
							<td width="30%" class="oddrow-l">%value pathName%</td>
						</tr>
					%endloop%	
								
			</TABLE>
					  </TD>
					</TR>

 	     <TR>
        	<TD>
				<TABLE width="100%" class="tableView">
					<TR><TD id="wxxoev-schematronvalidationresult-header" class="heading-validation-%value schematronValidation% heading" colspan=3>Schematron Validation %value schematronValidation%</TD></TR>
					%loop schematronErrors%
						<tr>
							<td width="10%" class="oddrow-l">%value errorCode%</td>
							<td width="60%" class="oddrow-l">%value errorMessage%</td>
							<td width="30%" class="oddrow-l">%value pathName%</td>
						</tr>
					%endloop%	
								
			</TABLE>
					  </TD>
					</TR>					


					  </tr>
		</TABLE>
		</TD>
	      </TR>	
</TABLE>
%endinvoke com.softwareag.wx.xoev.xrepository.pub.service.ui:validate%
</DIV>
</BODY>
</HTML>
