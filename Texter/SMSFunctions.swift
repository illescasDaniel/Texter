import Foundation

// Sends SMS via HTTP
func sendTextMessage (message: String, number: String) {
	
	// Clockwork SMS API - https://www.clockworksms.com
	let APIkey = "YOUR_API_HERE!"
	
	// Request example: https://api.clockworksms.com/http/send.aspx?key=KEY&to=441234567890&content=Hello+World
	var clockWorkNSURLString = "https://api.clockworksms.com/http/send.aspx?"
		+ "key=\(APIkey)"
		+ "&to=\(number)"
		+ "&content=\(message)"
	clockWorkNSURLString = clockWorkNSURLString.stringByReplacingOccurrencesOfString(" ", withString: "+")
	
	let clockWorkSMSURL = NSURL(string: clockWorkNSURLString)
	
	if clockWorkSMSURL != nil {
		
		let responseData = NSData(contentsOfURL: clockWorkSMSURL!)
		
		if responseData != nil {
			
			// Converts the NSData object into a String object
			let responseString = String(data: responseData!, encoding: NSUTF8StringEncoding)
			
			if responseString != nil {
				print(responseString!)
			}
		}
	}
}