<HTML>
<HEAD>
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

<BODY CLASS="menu" onload="initMenu('schema-import.dsp');">
    <form name="urlsaver">
      <input type="hidden" name="helpURL" value="doc/OnlineHelp/WmRoot.htm#CS_Server_Statistics.htm">
    </form>

    <table class="menuTable" width="100%" cellspacing="0" cellpadding="0" border="0">

      
        <tbody><tr manualhide="false" onclick="toggle(this, 'WxXOEV_subMenu', 'WxXOEV_twistie');" onmouseover="this.className='cursor';" class="cursor">
  <td class="menusection menusection-expanded" id="elmt_WxXOEV_subMenu" style="background-color: rgb(20, 98, 159); color: rgb(255, 255, 255);">
    <img id="WxXOEV_twistie" src="../WmRoot/images/expanded.gif">
      &nbsp;
          WxXOEV
          </td>
</tr>
      
      
        <tr name="WxXOEV_subMenu_1" style="display: table-row;">
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
      
      <script>menuSelect('', 'schema-import.dsp')</script>


</tbody>
    </table>
</BODY>
</HTML>
