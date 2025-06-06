# hikvision-osd-ntp

A utility for setting  the On-Screen Display (OSD) text of Hikvision IP cameras and the Network Time Protocol (NTP) server settings, ensuring accurate timestamp overlays on video streams.

## Overview

Many Hikvision IP cameras allow the display of a timestamp overlay (OSD) on their video feed. However, due to the absolute age of the devices and lack of modern support, the OSD is painful to set, NTP settings are mostly to help debug network issues for the NTP queries.

## Features

- Updates camera OSD
- Supports multiple cameras and auth via configuration.
- Compatible with Hikvision IP cameras supporting ISAPI.
- Command-line interface for simplicity.

## Requirements

- Bash
- Curl
- 1password if you use the optmpl file and update it yourself.

## Installation

Clone the repository and install dependencies:

```bash
git clone https://github.com/na4ma4/hikvision-osd-ntp.git
cd hikvision-osd-ntp
```

create a `.secrets` with the `HIK_USER` and `HIK_PASS` environment variables.

## Usage

```bash
./setOSD.sh
```

```bash
./testNTP.sh
```

```bash
./setNTP.sh
```

## Security Notes

- **Never expose camera credentials to the public internet.**
- Store credentials securely and use strong passwords.
- The tool uses HTTP Digest Auth to communicate with cameras, which isn't great, but is (slightly) better than HTTP Basic Auth.

## Limitations

- Only tested with Hikvision cameras supporting ISAPI.
- Some camera firmware versions might not support OSD updates via API.
- This tool only updates the OSD overlay and NTP settings.

## Troubleshooting

- Ensure your user account has permission to configure OSD settings.
- Camera and host running this utility must be on the same network or have proper routing.

## License

[MIT License](LICENSE)

## Author(s)

- [na4ma4](https://github.com/na4ma4)

## Contributions

Feel free to open issues or pull requests for improvements or bug fixes.
