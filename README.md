# Wther CLI

A simple command-line tool to fetch weather information, packaged as a Snap.
[![wther](https://snapcraft.io/wther/badge.svg)](https://snapcraft.io/wther)

[![Get it from the Snap Store](https://snapcraft.io/en/dark/install.svg)](https://snapcraft.io/wther)

```bash
sudo snap install wther
```

![Description](https://github.com/xanmoy/wther/blob/main/screenshots/img1.png)

## Features
- Location-Based Weather
- Fetch weather for any specific city or region
- Auto-detects your location if no input is given

-  Smart Time-Based Greeting
-  Greets the user based on system time (Good morning, Good evening, etc.)
-  Displays the username dynamically

-  Real-Time Weather Data
- Shows temperature, wind speed, humidity, and visibility
-  Supports metric and imperial units automatically

-  Terminal-Friendly UI
-  Displays ASCII-based weather visuals
-  Works smoothly in any Linux terminal

-  Network Efficient
-  Uses cURL to fetch lightweight weather reports
- No API keys required – runs out-of-the-box

-  Simple & Customizable
-  Written in Bash – easy to modify & extend
-  Works with Snapcraft packaging for easy installation

## Installation

### Build and Install Locally
```bash
snapcraft
sudo snap install ./wther-cli_1.0_amd64.snap --dangerous
```
### Run the Application

```bash
weather [LOCATION]
```
Example:

```bash
weather Kolkata
```

## License
This project is licensed under the MIT License.

Let me know if you need any changes! 🚀