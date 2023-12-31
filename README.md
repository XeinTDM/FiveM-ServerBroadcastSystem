## About the Script
This Lua script, `ServerBroadcast.lua`, for FiveM servers adds a server-wide announcement feature. It allows authorized users, such as admins and moderators, to send messages to all players on the server. This enhances communication and server management.

## Features
- Server-wide announcements.
- Permission-based access to prevent misuse.
- Customizable message support.

## Installation
Follow these steps to install and integrate `ServerBroadcast.lua` into your FiveM server:
1. Add the `ServerBroadcast.lua` script file to the server's resource directory.
2. Configure the server to load the script on startup by adding `start ServerBroadcast.lua` to your `server.cfg` file.
3. Modify the authorized IDs in the script file as needed.

## Usage
Use the `/announce` command in the following way:
```lua
/announce [Your message here]
```

Here are a couple of examples of how the command might be used:
- /announce Server will restart in 10 minutes!
- /announce New features have been added to the server. Check them out!

This will broadcast the message to all players on the server.

## Configuration
Configure the list of authorized IDs in `ServerBroadcast.lua` to control who can use the announcement command. Replace the placeholder IDs with actual Steam or license IDs of the authorized users.

Here's an example configuration:
```lua
local authorizedIDs = {
    ['steam:1234567890abcdef'] = true,   -- Example SteamID
    ['license:abcdef1234567890'] = true,   -- Example LicenseID
    -- Add more authorized identifiers here
}
```

### Finding Your SteamID or LicenseID
To find a user's SteamID or LicenseID:

- Have the user join your FiveM server.
- Use a server command or log to retrieve their identifiers.
- Replace the placeholders in the `authorizedIDs` table with these identifiers.

Remember, each identifier should be in its respective format (`steam:` or `license:`) followed by the actual ID. The `true` value indicates that the ID is authorized to use the `/announce` command.

### Adding Multiple IDs
You can add multiple IDs to the list for different users. For example:
```lua
local authorizedIDs = {
    ['steam:1234567890abcdef'] = true,   -- Admin's SteamID
    ['license:abcdef1234567890'] = true,   -- Moderator's LicenseID
    ['steam:fedcba0987654321'] = true,    -- Another admin's SteamID
    -- Continue adding IDs as needed
}
```

Each line represents a different user, allowing multiple people to be authorized to use the announcement feature.

## Contribution
I welcome contributions! If you're interested in helping:
- Fork the repository and make your changes.
- Adhere to the coding standards and style guides.
- Submit a pull request with a clear and concise description of your improvements.

## License
This script is released under the [MIT License](LICENSE). For more details, see the LICENSE file in the repository.

## Support and Help
For questions, support, or bug reporting, please [open an issue](../../issues) in the repository.
