/*
* Copyright (c) 2012, The British Library Board
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:
* Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
* Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the documentation and/or other materials provided with the distribution.
* Neither the name of The British Library nor the names of its contributors may be used to endorse or promote products derived from this software without specific prior written permission.
*
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*/

//
// Overview
//
For an overview of this project please visit http://sanddragon.bl.uk

//
// SanddragonItemViewer Installation
//

1. Ensure that SanddragonWidget website has been installed and is working.
2. Build the SanddragonItemViewer application using Visual Studio 2010 and then build the deployment package, the default zip location will be obj\Debug\Package\SanddragonItemViewer.zip.
3. Use the Web Deploy feature in IIS 7 to import the SanddragonItemViewer application onto your web server.
4. Update the following values in the web.config, modify values in [value] where necessary
	- Server - http://[SanddragonItemViewer server]/
	- ViewerServer - [SanddragonItemViewer website]/
	- ImageServer - [SanddragonImageService website]/
	- WidgetServer - [SanddragonWidget website]/

	NB - it is assumed that the SanddragonItemViewer, SanddragonWidget and SanddragonImageService, all reside on the same server, 
		if this is not the case you will need to modify the init function in SanddragonItemViewerController.js.

5. Update the BASE tag in Default.aspx so that the website can pick up the javascript files - 
	- <base href="http://[SanddragonItemViewer server]/[SanddragonItemViewer website]/"/>

6. Update the function getItemMetadata in SanddragonItemViewerController.js to return json values that will provide data to the itemViewer -
	It should follow this pattern -

        var metadata = '{"ID":"[Book ID]","ImageList":[';
		metadata += '{"PageID":"[Page 1 ID]","ImageID":"[Image 1 filename without extension]","RoleType":"Page"}';
		metadata += ',{"PageID":"[Page 2 ID]","ImageID":"[Image 1 filename without extension]","RoleType":"Title"}";
        metadata += ',{"PageID":"[Page 3 ID]","ImageID":"[Image 1 filename without extension]","RoleType":"Page"}';
		...
        metadata += ',{"PageID":"[Page 51 ID]","ImageID":"[Image 1 filename without extension]","Label":"48","RoleType":"Page"}';        
        metadata += '],"BookMetadata":{"Author":"[Author]","Title":"[Book Title]","PublicationDetails":"[Publication Details]","[Any other fields]":"[Other fields]"}}';