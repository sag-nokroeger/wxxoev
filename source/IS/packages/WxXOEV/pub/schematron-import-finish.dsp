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
		%invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:doImportSchematron%
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXOEV &gt; Schema Import</TD>
            </TR>

  	     <TR>
        	<TD>			
			<form name="schematronimportform" class="form" action="schematron-import-finish.dsp" method="post">
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>Schematron Import</TD></TR>
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
						<td width="20%" class="evenrow-l"><p class="label">Schematron Target Folder</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value schematronImportFolder%</p></td>
					</tr>					
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Schematron Rules</p></td>
						<td width="80%" class="evenrow-l"><p class="label">%value selectedSchematronFile%</p></td>
					</tr>							
					<tr>
						<td width="20%" class="evenrow-l"><p class="label">Result</p></td>
						<td width="80%" class="evenrow-l">
						%loop result%
							<p class="long-text">%value result%</p>
						%endloop%
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
					  <INPUT type="hidden" name="schematronTmpDir" value="%value schematronTmpDir%"/>		  					  					  
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
%endinvoke com.softwareag.wx.xoev.xrepository.pub.service.ui:doImportSchematron%
</DIV>
</BODY>
</HTML>
