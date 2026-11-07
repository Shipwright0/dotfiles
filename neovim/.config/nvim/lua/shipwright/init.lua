require("shipwright.remap")
require("shipwright.set")
require("autoclose").setup()
require("colorizer").setup()

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.bend= {
  install_info = {
    url = "$HOME/temp/tree-sitter-bend/", -- local path or git repo
    files = {"src/parser.c"}, -- note that some parsers also require src/scanner.c or src/scanner.cc
	branch = "main", -- default branch in case of git repo if different from master
  }
}
