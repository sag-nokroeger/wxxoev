<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WxXOEV</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY>
      <DIV class="position">
		%invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:fetchSchematronWithCustomUrl%
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXOEV &gt; Schema Import</TD>
            </TR>
  	     <TR>
        	<TD>
			%ifvar hasSchematron equals('true')%			
			<form name="schematronimportform" class="form" action="schematron-import-finish.dsp" method="post">
			%else%
			<form name="schematronimportform" class="form" action="schematron-import-customurl.dsp" method="post">
			%endifvar%
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>Schema Import</TD></TR>
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Standard</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value standardName%</p></td>
					</tr>	
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Version</p></td>
						<td width="80%" class="everow-l"><p class="label">%value standardVersion%</p></td>
					</tr>					
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Temporary directory</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value schemaTmpDir%</p></td>
					</tr>
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Selected File</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value selectedSchemaFile%</p></td>
					</tr>						
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Root Element</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value selectedRootElement%</p></td>
					</tr>
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Target Folder</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value importFolder%</p></td>
					</tr>					
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Target Package</p></td>
						<td width="80%" class="oddrow-l"><p class="label">%value selectedPackage%</p></td>
					</tr>					
					<tr>
						<td widht="20%" class="evenrow-l"><p class="label">Schematron URL</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value schematronCustomUrl%</p></td>
					<tr>
					<tr>
						<td widht="20%" class="oddrow-l"><p class="label">Result</p></td>
						<td width="80%" class="oddrow-l">
						%loop result%
							<p class="long-text">%value result%</p>
						%endloop%
						</td>
					</tr>
					%ifvar hasSchematron equals('true')%
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Schematron Target Folder</p></td>
						%invoke com.softwareag.wx.xoev.xrepository.pub.service:getDefaultFolderForSchematronImport%
						<td width="80%" class="evenrow-l"><input class="text" id="schematronImportFolder" name="schematronImportFolder" style="width:100%" type="text" value="%value schematronImportFolder%"/></td>					
						%endinvoke com.softwareag.wx.xoev.xrepository.pub.service:getDefaultFolderForSchematronImport%
					</tr>					
					<tr>
						<td width="20%" class="oddrow-l"><p class="label">Schematron Rules</p></td>
						<td width="80%" class="oddrow-l">
							<select style="width:100%" id="selectedFileIndex" name="selectedFileIndex" onchange="this.form.submit()">
									<option value="-1" selected="true">Please select...</option>
									%loop schematronFiles%
										<option value="%value $index%">%value schematronFiles%</option>
									%endloop%
							</select>						
						</td>
					</tr>
			  <TR>
				<TD class="action" colspan="2">
					  <INPUT type="hidden" name="action" value="select-schematron"/>
					  <INPUT type="hidden" name="schemaFiles" value="%value schemaFiles%"/>
					  <INPUT type="hidden" name="schemaPaths" value="%value schemaPaths%"/>
					  <INPUT type="hidden" name="rootElements" value="%value rootElements%"/>
					  <INPUT type="hidden" name="schemaTmpDir" value="%value schemaTmpDir%"/>
					  <INPUT type="hidden" name="selectedRootElement" value="%value selectedRootElement%"/>
					  <INPUT type="hidden" name="selectedSchemaFile" value="%value selectedSchemaFile%"/>
					  <INPUT type="hidden" name="selectedFileIndex" value="%value selectedFileIndex%"/>					  
					  <INPUT type="hidden" name="standardName" value="%value standardName%"/>
					  <INPUT type="hidden" name="standardVersion" value="%value standardVersion%"/>		
					  <INPUT type="hidden" name="schematronFiles" value="%value schematronFilesAsString%"/>
					  <INPUT type="hidden" name="schematronPaths" value="%value schematronPathsAsString%"/>	
					  <INPUT type="hidden" name="selectedPackage" value="%value selectedPackage%"/>		  
					  <INPUT type="hidden" name="xmlNamespace" value="%value xmlNamespace%"/>		  
					  <INPUT type="hidden" name="doctypeName" value="%value doctypeName%"/>		  					  					  
					  <INPUT type="hidden" name="importFolder" value="%value importFolder%"/>
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
%endinvoke com.softwareag.wx.xoev.xrepository.pub.service.ui:fetchSchematronWithCustomUrl%
</DIV>
</BODY>
</HTML>
