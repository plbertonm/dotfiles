return {
  "nvim-mini/mini.splitjoin",
  config = function ()
    require('mini.splitjoin').setup({
      mappings = { toggle = 'gS' }
    })
  end
}
