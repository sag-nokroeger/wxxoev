<META http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="../WxXOEV/WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<TITLE>WxXML</TITLE>
<SCRIPT src="../WmRoot/webMethods.js"></SCRIPT>
   </HEAD>
   <BODY onLoad="setNavigation('/WxXXML/schema-import.dsp', '../WmRoot/doc/OnlineHelp/wwhelp/wwhimpl/js/html/wwhelp.htm#context=is_help&topic=IS_Packages_WmXSLTpkg_Scrn');">
      <DIV class="position">
         <TABLE WIDTH="100%">
            <TR>
               <TD class="menusection-Solutions" colspan=2>WxXML &gt; Schema Import</TD>
            </TR>

  	     <TR>
        	<TD>
				<form name="importform" class="form" action="/invoke/com.softwareag.wx.schemaimporter.pub.ui:uploadSchema" method="post" enctype="multipart/form-data">
				<TABLE width="100%" class="tableView">

					<TR><TD class="heading" colspan=2>File Selection</TD></TR>
					<tr>
						<td width="10%" class="oddrow-l"><p class="label">Schema file(s)</p></td>
						<td width="90%" class="oddrow-l">
							<div class="fileinput-area" id="fileinput-area-schema">
							<input class="fileinput" type="file" multiple id="schemaFile" name="schemaFile" style="width:100%"/>
							<label class="button" for="schemaFile">Browse...</label> 
							<p id="filesForUpload">drop xsd files or zip files here...<p>
							</div>
						</td>
					</tr>
			  <TR>
				<TD class="action" colspan="2">
					<INPUT type="hidden" name="action" value="import"/>
					<INPUT type="hidden" name="schemaType" value="xml"/>
				  	<INPUT class="button" type="submit" name="import" value="Start import"/>
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
<script>
	function preventDefaults (e) {
 		 e.preventDefault()
  		e.stopPropagation()
	}

	function highlight(e) {
	dropArea.classList.add('highlight')
	}

	function unhighlight(e) {
	dropArea.classList.remove('highlight')
	}	

	let dropArea = document.getElementById('fileinput-area-schema')
	;['dragenter', 'dragover', 'dragleave', 'drop'].forEach(eventName => {
  		dropArea.addEventListener(eventName, preventDefaults, false)
	})

	;['dragenter', 'dragover'].forEach(eventName => {
	dropArea.addEventListener(eventName, highlight, false)
	})

	;['dragleave', 'drop'].forEach(eventName => {
	dropArea.addEventListener(eventName, unhighlight, false)
	})	

	dropArea.addEventListener('drop', handleDrop, false)

	function handleDrop(e) {
		let dt = e.dataTransfer
		let files = dt.files

		let schemaInput = document.getElementById('schemaFile')
		schemaInput.files = files
		let filesForUpload = document.getElementById('filesForUpload')
		fileNames = ""
		Array.from(files).forEach(file => { fileNames += (file.name + "<br/>") });
		filesForUpload.innerHTML = fileNames
	}	
</script>
</HTML>
