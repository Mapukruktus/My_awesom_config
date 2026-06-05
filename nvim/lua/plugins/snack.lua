return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        -- This explicitly overrides the default "neovim" logo
        header = [[
                                                                                          
												  
	██▄  ▄██  ▄▄▄  ▄▄▄▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄▄▄ ▄▄ ▄▄  ▄▄▄▄                     
	██ ▀▀ ██ ██▀██ ██▄█▀ ██ ██ ██▄█▀ ██▄█▄ ██ ██ ██▄█▀   ██   ██ ██ ███▄▄                     
	██    ██ ██▀██ ██    ▀███▀ ██ ██ ██ ██ ▀███▀ ██ ██   ██   ▀███▀ ▄▄██▀                     
												  
                                                                           ]],
      },
      sections = {
        { section = 'header', indent = 15 },
        { section = 'keys', gap = 1, padding = 1 },
        { section = 'startup' },
      },
    },
  },
}
