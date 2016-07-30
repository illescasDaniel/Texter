import Foundation

// Send SMS via HTTP
func sendTextMessage (message: String, number: String) {
	
	// Clockwork SMS API - https://www.clockworksms.com
	let APIkey = "YOUR_API_KEY_HERE!!"
	
	// Request example: https://api.clockworksms.com/http/send.aspx?key=KEY&to=441234567890&content=Hello+World
	var clockWorkNSURLString = "https://api.clockworksms.com/http/send.aspx?"
		+ "key=\(APIkey)"
		+ "&to=\(number)"
		+ "&content=\(message)"
	
	clockWorkNSURLString = clockWorkNSURLString.stringByReplacingOccurrencesOfString(" ", withString: "+")
	
	if let clockWorkSMSURL = NSURL(string: clockWorkNSURLString), responseData = NSData(contentsOfURL: clockWorkSMSURL) {
		print(String(data: responseData, encoding: NSUTF8StringEncoding))
	}
}
