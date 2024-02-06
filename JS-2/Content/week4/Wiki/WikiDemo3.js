const ISOK = 200;
var request = new XMLHttpRequest();

function getJSONAsync(searchArg) {
	if (searchArg == "") {
		alert("Enter valid search argument");
		return;
	}

	// use an anonymous function as the event handler
	request.onload = function() {
		if (request.status === ISOK) {
			var jsObject = JSON.parse(request.responseText);
			var countResults = jsObject.query.search.length;
			var template = '<a href="_url" target="_blank">_title</a><br><br>';
			
			// clear div container
			document.getElementById("outputDiv").innerHTML = "";
			
			if (countResults > 0) {
				for (var i = 0; i < countResults; i++) {
					var link = "https://en.wikipedia.org/?curid=" + jsObject.query.search[i].pageid;
					var titleText = template.replace("_url", link);
					titleText = i + 1 + ". " + titleText.replace("_title", jsObject.query.search[i].title);
					document.getElementById("outputDiv").innerHTML += titleText;
					
					var snipText = jsObject.query.search[i].snippet + "...<br><br>";
					document.getElementById("outputDiv").innerHTML += snipText;
					document.getElementById("outputDiv").style.visibility = "visible";
				}
			}
		}
	};
	
	var url = "https://en.wikipedia.org/w/api.php?action=query&list=search&prop=info&inprop=url&utf8=&format=json&origin=*&srlimit=20&srsearch=" + searchArg;
	request.open("GET", url, true);
	request.send();
}

function callBack() {
	
}

function doSearch() {
	var searchArg = document.getElementById("txtSearch").value;
	getJSONAsync(searchArg);
	
}

function filterText() {
	if (window.event.keyCode === 13) {
		document.getElementById("outputDiv").style.visibility = "hidden";
		doSearch();
	}
}