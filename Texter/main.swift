import Foundation

print("What would you like to text?")

// Collects the message from the user
guard let userTextMessage = readLine(stripNewline: true) else { exit(0) }

print("Which phone number would you like to send this message to?")

// Collects the number from the user
guard let toNumber = readLine(stripNewline: true) else { exit(0) }

sendTextMessage(userTextMessage, number: toNumber)