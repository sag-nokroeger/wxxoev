<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>XSLT</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY>
      <DIV class="position">
		%invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:fetchRootElements%
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXOEV &gt; Schema Import</TD>
            </TR>

  	     <TR>
        	<TD>			
				<form name="elementselectionform" class="form" action="schema-import-packageselection.dsp" method="post">
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>Root Element Selection</TD></TR>
					<tr>
						<td width="20%" class="oddrow-l"><p>Standard</p></td>
						<td width="80%" class="oddrow-l"><p>%value standardName%</p></td>
					</tr>	
					<tr>
						<td width="20%" class="evenrow-l"><p>Version</p></td>
						<td width="80%" class="everow-l"><p>%value standardVersion%</p></td>
					</tr>						
					<tr>
						<td width="20%" class="oddrow-l"><p>Temporary directory</p></td>
						<td width="80%" class="oddrow-l"><p>%value schemaTmpDir%</p></td>
					</tr>
					<tr>
						<td width="20%" class="evenrow-l"><p>Selected File</p></td>
						<td width="80%" class="evenrow-l"><p>%value selectedSchemaFile%</p></td>
					</tr>						
					<tr>
						<td width="20%" class="oddrow-l"><p>Root Element</p></td>
						<td width="80%" class="oddrow-l">
							<select style="width:100%" id="selectedElementIndex" name="selectedElementIndex" onchange="this.form.submit()">
									<option value="-1" selected="true">Please select...</option>
									%loop rootElements%
										<option value="%value $index%">%value rootElements%</option>
									%endloop%
							</select>						
						</td>
					</tr>
			  <TR>
				<TD class="action" colspan="2">
					  <INPUT type="hidden" name="action" value="select-element"/>
					  <INPUT type="hidden" name="schemaFiles" value="%value schemaFilesAsString%"/>
					  <INPUT type="hidden" name="schemaPaths" value="%value schemaPathsAsString%"/>
					  <INPUT type="hidden" name="rootElements" value="%value rootElementsAsString%"/>
					  <INPUT type="hidden" name="schemaTmpDir" value="%value schemaTmpDir%"/>
					  <INPUT type="hidden" name="selectedSchemaFile" value="%value selectedSchemaFile%"/>
					  <INPUT type="hidden" name="selectedFileIndex" value="%value selectedFileIndex%"/>
					  <INPUT type="hidden" name="standardName" value="%value standardName%"/>
					  <INPUT type="hidden" name="standardVersion" value="%value standardVersion%"/>					  
				  	<!--<INPUT class="button" type="submit" name="continue" value="Continue"/>-->
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
%endinvoke com.softwareag.wx.xoev.xrepository.pub.service.ui:fetchRootElements%
</DIV>
</BODY>
</HTML>
