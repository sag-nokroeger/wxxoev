<HTML>
<HEAD>
<LINK REL="stylesheet" TYPE="text/css" HREF="WxXOEV.css">
<LINK REL="stylesheet" TYPE="text/css" HREF="../WmRoot/webMethods.css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<META HTTP-EQUIV="Expires" CONTENT="-1">
<style>
body {     border-top: 1px solid #97A6CB; }
</style>
    <script src="../WmRoot/common-menu.js"></script>
    <script src="../WmRoot/csrf-guard.js"></script>
    <script type="text/javascript">
var selected = null;
var menuInit = false;

function menuSelect(object, id) {
  selected = menuext.select(object, id, selected);
}

function menuMouseOver(object, id) {
  menuext.mouseOver(object, id, selected);
}

function menuMouseOut(object, id) {
  menuext.mouseOut(object, id, selected);
}

function initMenu(firstImage) {
    menuInit = true;
    return true;
}
</script>

</HEAD>

<BODY CLASS="menu" onload="initMenu('../WxSchemaImport/schema-import2.dsp');">
    <form name="urlsaver">
      <input type="hidden" name="helpURL" value="doc/OnlineHelp/WmRoot.htm#CS_Server_Statistics.htm">
    </form>

    <table class="menuTable" width="100%" cellspacing="0" cellpadding="0">

      
        <tbody>

          <tr manualhide="false" onclick="toggle(this, 'WxXML_subMenu', 'WxXML_twistie');" onmouseover="this.className='cursor';" class="cursor">
            <td class="menusection menusection-expanded" id="elmt_WxXML_subMenu"  style="background-color: rgb(20, 98, 159); color: rgb(255, 255, 255);">
              <img id="WxXML_twistie" src="../WmRoot/images/expanded.gif">
              &nbsp;
              WxXML
            </td>
          </tr>

        <tr name="WxXML_subMenu" style="display: table-row;">
  <td id="iwxxml_schema-import.dsp" class="menuitem " onmouseover="menuMouseOver(this, 'wxxml_schema-import.dsp');" onmouseout="menuMouseOut(this, 'wxxml_schema-import.dsp');" onclick="menuSelect(this, 'wxxml_schema-import.dsp'); document.all['awxxml_schema-import.dsp'].click();" style="background-color: rgb(23, 118, 191);">
            
          
          
            <script>
              if (is_csrf_guard_enabled && needToInsertToken) {
                createFormWithTargetAndSetProperties("htmlform_menu_subelement_WxXML_SchemaImport", "../WxSchemaImporter/schema-import.dsp", "POST", "BODY", "body");
                setFormProperty("htmlform_menu_subelement_WxXML_SchemaImport", _csrfTokenNm_, _csrfTokenVal_);
                document.write('<a id="awxxml_schema-import.dsp" href="javascript:htmlform_menu_subelement_WxXML_SchemaImport.submit()" style="color: rgb(255, 255, 255);"> Schema Import </a>');
              } else {
                document.write('<a id="awxxml_schema-import.dsp" target="body" href="../WxSchemaImporter/schema-import.dsp" style="color: rgb(255, 255, 255);"> Schema Import </a>');
              }
            </script>
                              
        </td>
      </tr>

        <tr name="WxXML_subMenu" style="display: table-row;">
  <td id="ivalidation.dsp" class="menuitem " onmouseover="menuMouseOver(this, 'validation.dsp');" onmouseout="menuMouseOut(this, 'validation.dsp');" onclick="menuSelect(this, 'validation.dsp'); document.all['avalidation.dsp'].click();">
            
          
          
            <script>
              if (is_csrf_guard_enabled && needToInsertToken) {
                createFormWithTargetAndSetProperties("htmlform_menu_subelement_WxXML_Validation", "validation.dsp", "POST", "BODY", "body");
                setFormProperty("htmlform_menu_subelement_WxXML_Validation", _csrfTokenNm_, _csrfTokenVal_);
                document.write('<a id="avalidation.dsp" href="javascript:htmlform_menu_subelement_WxXML_Validation.submit()"> Validation </a>');
              } else {
                document.write('<a id="avalidation.dsp" target="body" href="validation.dsp"> Validation </a>');
              }
            </script>
                              
        </td>
      </tr>    

          <tr manualhide="true" onclick="toggle(this, 'WxXOEV_subMenu', 'WxXOEV_twistie');" onmouseover="this.className='cursor';" class="cursor">
            <td class="menusection" id="elmt_WxXOEV_subMenu" style="background-color: rgb(255, 255, 255); color: rgb(20, 98, 159);"">
              <img id="WxXOEV_twistie" src="../WmRoot/images/collapsed_blue.gif">
              &nbsp;
              WxXOEV
            </td>
          </tr>
      
      
        <tr name="WxXOEV_subMenu" style="display: none;">
  <td id="ischema-import.dsp" class="menuitem " onmouseover="menuMouseOver(this, 'schema-import.dsp');" onmouseout="menuMouseOut(this, 'schema-import.dsp');" onclick="menuSelect(this, 'schema-import.dsp'); document.all['aschema-import.dsp'].click();" style="background-color: rgb(23, 118, 191);">
            
          
          
            <script>
              if (is_csrf_guard_enabled && needToInsertToken) {
                createFormWithTargetAndSetProperties("htmlform_menu_subelement_WxXOEV_SchemaImport", "schema-import.dsp", "POST", "BODY", "body");
                setFormProperty("htmlform_menu_subelement_WxXOEV_SchemaImport", _csrfTokenNm_, _csrfTokenVal_);
                document.write('<a id="aschema-import.dsp" href="javascript:htmlform_menu_subelement_WxXOEV_SchemaImport.submit()"> Schema Import </a>');
              } else {
                document.write('<a id="aschema-import.dsp" target="body" href="schema-import.dsp"> Schema Import </a>');
              }
            </script>
                              
        </td>
      </tr>
    
      %invoke com.softwareag.wx.xoev.xrepository.pub.service.ui:isWmTNInstalledAndEnabled%
      %ifvar exists equals('true')%
      %ifvar enabled equals('true')%
        <tr name="WxXOEV_subMenu" style="display: table-row;">
  <td id="itn-doctypes.dsp" class="menuitem " onmouseover="menuMouseOver(this, 'tn-doctypes.dsp');" onmouseout="menuMouseOut(this, 'tn-doctypes.dsp');" onclick="menuSelect(this, 'tn-doctypes.dsp'); document.all['atn-doctypes.dsp'].click();" style="background-color: rgb(255, 255, 255);">
            
          
          
            <script>
              if (is_csrf_guard_enabled && needToInsertToken) {
                createFormWithTargetAndSetProperties("htmlform_menu_subelement_WxXOEV_TNDocumentTypes", "tn-doctypes.dsp", "POST", "BODY", "body");
                setFormProperty("htmlform_menu_subelement_WxXOEV_TNDocumentTypes", _csrfTokenNm_, _csrfTokenVal_);
                document.write('<a id="atn-doctypes.dsp" href="javascript:htmlform_menu_subelement_WxXOEV_TNDocumentTypes.submit()"> TN Document Types </a>');
              } else {
                document.write('<a id="atn-doctypes.dsp" target="body" href="tn-doctypes.dsp"> TN Document Types </a>');
              }
            </script>
                              
        </td>
      </tr>
      %endfifvar%
      %endifvar%
      %endinvoke com.softwareag.wx.xoev.xrepository.pub.service.ui:isWmTNInstalledAndEnabled%                   
      
      <script>menuSelect('', '../WxSchemaImporter/schema-import.dsp2')</script>


</tbody>
    </table>
</BODY>
</HTML>
