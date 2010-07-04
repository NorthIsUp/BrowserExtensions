if (true){
	console.log("sending Request")
  	chrome.extension.sendRequest({msg: "SkypePing", href: location.href});
}