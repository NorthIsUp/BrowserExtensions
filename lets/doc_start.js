if (true){
	console.log("sending Request")
  	chrome.extension.sendRequest({msg: "letsIcon", href: location.href});
}