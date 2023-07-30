return {
  {
    "johmsalas/text-case.nvim",
    keys = {
      { "gau", function() require("textcase").current_word "to_upper_case" end, desc = "To upper case" },
      { "gal", function() require("textcase").current_word "to_lower_case" end, desc = "To lower case" },
      { "gas", function() require("textcase").current_word "to_snake_case" end, desc = "To snake case" },
      { "gad", function() require("textcase").current_word "to_dash_case" end, desc = "To dash case" },
      { "gan", function() require("textcase").current_word "to_constant_case" end, desc = "To constant case" },
      { "gaa", function() require("textcase").current_word "to_phrase_case" end, desc = "To phrase case" },
      { "gac", function() require("textcase").current_word "to_camel_case" end, desc = "To camel case" },
      { "gap", function() require("textcase").current_word "to_pascal_case" end, desc = "To pascal case" },
      { "gat", function() require("textcase").current_word "to_title_case" end, desc = "To title case" },
      { "gaf", function() require("textcase").current_word "to_path_case" end, desc = "To path case" },
    },
  },
  {
    "keaising/im-select.nvim",
    event = "BufRead",
    config = function()
      require("im_select").setup()
    end,
  },
}
