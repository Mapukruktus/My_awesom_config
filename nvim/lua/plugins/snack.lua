return {
  'folke/snacks.nvim',
  priority = 1000,
  lazy = false,
  opts = {
    dashboard = {
      preset = {
        header = [[
                                                                                          
                                                                                                  
        ██▄  ▄██  ▄▄▄  ▄▄▄▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄  ▄▄ ▄▄ ▄▄ ▄▄ ▄▄▄▄▄▄ ▄▄ ▄▄  ▄▄▄▄                     
        ██ ▀▀ ██ ██▀██ ██▄█▀ ██ ██ ██▄█▀ ██▄█▄ ██ ██ ██▄█▀   ██   ██ ██ ███▄▄                     
        ██    ██ ██▀██ ██    ▀███▀ ██ ██ ██ ██ ▀███▀ ██ ██   ██   ██   ▀███▀ ▄▄██▀                     
                                                                                                  
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
