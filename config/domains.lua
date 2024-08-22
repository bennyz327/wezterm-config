return {
  -- ref: https://wezfurlong.org/wezterm/config/lua/SshDomain.html
  -- ssh_domains = {
  --   {
  --     multiplexing = "None",
  --     name = " 5025 Server",
  --     remote_address = "192.168.50.25:22",
  --     username = "ubuntu",
  --   },
  -- },

  -- ref: https://wezfurlong.org/wezterm/multiplexing.html#unix-domains
  unix_domains = {},

  -- ref: https://wezfurlong.org/wezterm/config/lua/WslDomain.html
  wsl_domains = {
    {
      name = "WSL:benny",
      distribution = "Ubuntu",
      username = "benny",
      default_cwd = "/home/benny",
      default_prog = { "fish" },
      -- default_prog = { "fish" },
    },
  },
}
 