# Automation Apple Script  | Connecting to VPN

The objective is a get the IP of the Jenkins in internal network our client.

## Explanation

1 - Script connect:  

```tell application "/Applications/Tunnelblick.app"  
	activate  
	disconnect ("name_your_network_tunnelblick")  
 end tell```

Basically you change name_your_network_tunnelblick to your network both files (connect and disconnect)  

Need Tools:

OS Mac OS with AppleScript and VPN configured with Tunnelblick

# Make Automation CI

## You need config actions in Github or use Gitlab CI (recommended)

1- Gitlab CI - Ready  
2- Github Action - TODO
