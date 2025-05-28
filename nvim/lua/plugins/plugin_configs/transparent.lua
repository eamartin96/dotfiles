return {
    "xiyaowong/transparent.nvim",
    config = function()
        require("transparent").setup({
            enable = true,
            extra_groups = {
                "NormalFloat",
                "NvimTreeNormal",
                "NvimTreeNormalNC",
                "TelescopeNormal",
                "Pmenu",
                "FloatBorder",
            },
            exclude = {},
        })
end
}
