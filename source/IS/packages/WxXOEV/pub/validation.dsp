<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WxXOEV</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY onLoad="setNavigation('/WxXOEV/validation.dsp', '../WmRoot/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm#context=is_help&topic=IS_Packages_WmXSLTpkg_Scrn');">
      <DIV class="position">
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXML &gt; Validation</TD>
            </TR>

  	     <TR>
        	<TD>
				<form name="validateform" class="form" action="validation-result.dsp" method="post">
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>XML Document Validation</TD></TR>
					<tr>
						<td width="10%" class="oddrow-l"><p class="label">XML Document</p></td>
						<td width="90%" class="oddrow-l"><textarea class="long-text" id="xmldoc" name="xmldoc" style="width:100%" type="text" rows="25" value="%value xmldocumentAsString%"></textarea></td>
					</tr>
					<tr>
						<td width="10%" class="evenrow-l"><p class="label">Preprocessing</p></td>
						<td width="90%" class="evenrow-l">
						<input id="decodeNone" name="preprocessing" type="radio" value="decodeNone" checked="checked"/>
						<label for="decodeNone" class="label">No preprocessing</label><br/>						
						<input id="decodeBase64" name="preprocessing" type="radio" value="decodeBase64"/>
						<label for="decodeBase64" class="label">Input is base64 encoded</label><br/>
						<input id="decodeTags" name="preprocessing" type="radio" value="decodeTags"/>
						<label for="decodeTags" class="label">Tag brackets are XML entities (&amp;lt; and &amp;gt; instead of &lt; and &gt;)</label><br/>
						</td>
					</tr>	
			  <TR>
				<TD class="action" colspan="2">
					  <INPUT type="hidden" name="action" value="import"/>
				  	<INPUT class="button" type="submit" name="validate" value="Validate"/>
				</TD>
			  </TR>									
			</TABLE>
			</form>
					  </TD>
					</TR>


					  </tr>
		</TABLE>
		</TD>
	      </TR>	
</TABLE>
</DIV>
</BODY>
</HTML>
