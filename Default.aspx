<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SanddragonItemViewer.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- /*
* Copyright (c) 2012, The British Library Board
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of The British Library nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/ -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The IIIF British Library Item Viewer</title>
<link rel="stylesheet" type="text/css" media="print" href="~/css/SanddragonItemViewer.print.css" />
<link rel="stylesheet" type="text/css" media="screen" href="~/css/SanddragonItemViewer.css" />
<base href="http://localhost/SanddragonItemViewer/"/>   
<script type="text/javascript" src="JS/prototype.js">
</script>
<script type="text/javascript" src="JS/drag.js">
    /**************************************************
    * dom-drag.js
    * 09.25.2001
    * www.youngpup.net
    * Script featured on Dynamic Drive (http://www.dynamicdrive.com) 12.08.2005
    * License terms found here - http://www.dynamicdrive.com/notice.htm
    **************************************************/
</script>
<script type="text/javascript" src="JS/dragresize.js">
</script>
<script type="text/javascript" src="JS/slider.js">
</script>
<script type="text/javascript" src="JS/animation.js">
</script>
<script type="text/javascript" src="JS/fade.js">
</script>
<script type="text/javascript" src="JS/SanddragonItemViewer.js">
</script>
        <script type="text/javascript"> 
            function init() { 
                var itemid = document.getElementById("ItemID").value;
                var pageid = document.getElementById("PageID").value;
                var viewtype = document.getElementById("ViewType").value;

                try {
                    controller = new SanddragonItemViewer("controller", "SanddragonItemViewer", itemid, pageid, viewtype, true);
                    controller.init();
                }
                catch (exception) {
                    alert(exception);
                }
            }
            window.onload = init;                         
        </script>
</head>
<body>
    <form id="form1" runat="server" onsubmit="return false;">
        <asp:HiddenField ID="ItemID" runat="server" />
        <asp:HiddenField ID="PageID" runat="server" />
        <asp:HiddenField ID="ViewType" runat="server" />
        <asp:HiddenField ID="itemViewerServer" runat="server" />
        <asp:HiddenField ID="ViewerServer" runat="server" />
        <asp:HiddenField ID="ImageServer" runat="server" />
        <asp:HiddenField ID="WidgetServer" runat="server" />
        <div id="SanddragonItemViewer"></div>
    </form>
</body>
</html>
