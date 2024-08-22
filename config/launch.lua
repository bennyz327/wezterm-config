local platform = require("utils.platform")()

local options = {
  default_prog = {},
  launch_menu = {},
}

if platform.is_win then
  options.default_prog = { "wsl.exe" }
  options.launch_menu = {
    { label = " PowerShell v1", args = { "powershell" } },
    { label = " PowerShell v7", args = { "pwsh.exe", "-NoLogo" } },
    { label = " Cmd", args = { "cmd" } },
    { label = " WSL", args = { "wsl.exe" } },
    {
      label = " GitBash",
      args = { "C:\\Users\\chainmeans-01\\AppData\\Local\\Programs\\Git\\git-bash.exe" },
    },
    {
      label = " 5025 Server",
      args = { "ssh", "ubuntu@192.168.50.25", "-p", "22" },
    },
    { label = " Nushell", args = { "nu" } },
  }
elseif platform.is_mac then
  options.default_prog = { "/opt/homebrew/bin/fish" }
  options.launch_menu = {
    { label = " Bash", args = { "bash" } },
    { label = " Fish", args = { "/opt/homebrew/bin/fish" } },
    { label = " Nushell", args = { "/opt/homebrew/bin/nu" } },
    { label = " Zsh", args = { "zsh" } },
  }
end

return options
