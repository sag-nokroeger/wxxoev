<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="../WxXOEV/WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WxXOEV</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY>
      <DIV class="position">
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXML &gt; Schema Import</TD>
            </TR>

  	     <TR>
        	<TD>			
				<form name="fileselectionform" class="form" action="/WxXOEV/schema-import-elementselection.dsp" method="post">
				%invoke com.softwareag.wx.schemaimporter.impl.util.string:makeFileAndPathList%
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>File Selection</TD></TR>
					%ifvar standardName -notempty%
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Standard</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value standardName%</p></td>
					</tr>
					%endifvar%
					%ifvar standardVersion -notempty%	
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Version</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value standardVersion%</p></td>
					</tr>
					%endifvar%
					%ifvar schemaFilesAsString -notempty%						
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Temporary directory</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value schemaTmpDir%</p></td>
					</tr>										
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Root file</p></td>
						<td width="80%" class="evenrow-l">
							<select style="width:100%" id="selectedFileIndex" name="selectedFileIndex" onchange="this.form.submit()">
									<option value="-1" selected="true">Please select...</option>
									%loop schemaFiles%
										<option value="%value $index%">%value schemaFiles%</option>
									%endloop%
							</select>						
						</td>
					</tr>
					%else%
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Result</p></td>
						<td width="80%" class="oddrow-l"><p class="label">No schema could be retrieved from xrepository for standard %value standardName% and version %value standardVersion%. Check <a target="_blank" href="https://www.xrepository.de/details/%value standardName%">xrepository</a> for the standard to see which versions exist.</p></td>
					</tr>					
					%endifvar%
			  <TR>
				<TD class="action" colspan="2">
					  <INPUT type="hidden" name="action" value="select-file"/>
					  <INPUT type="hidden" name="schemaFiles" value="%value schemaFilesAsString%"/>
					  <INPUT type="hidden" name="schemaPaths" value="%value schemaPathsAsString%"/>
					  <INPUT type="hidden" name="schemaTmpDir" value="%value schemaTmpDir%"/>
					  <INPUT type="hidden" name="standardName" value="%value standardName%"/>
					  <INPUT type="hidden" name="standardVersion" value="%value standardVersion%"/>
					  <INPUT type="hidden" name="schemaType" value="%value schemaType%"/>			  
				  	<!--<INPUT class="button" type="submit" name="continue" value="Continue"/>-->
				</TD>
			  </TR>									
			</TABLE>
			%endinvoke com.softwareag.wx.schemaimporter.impl.util.string:makeFileAndPathList%
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
