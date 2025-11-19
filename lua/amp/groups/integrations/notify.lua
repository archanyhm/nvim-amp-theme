local M = {}

function M.get(colors, config)
    return {
        NotifyERRORBorder = { fg = colors.red },
        NotifyWARNBorder = { fg = colors.yellow },
        NotifyINFOBorder = { fg = colors.blue },
        NotifyDEBUGBorder = { fg = colors.bright_black },
        NotifyTRACEBorder = { fg = colors.purple },
        
        NotifyERRORIcon = { fg = colors.red },
        NotifyWARNIcon = { fg = colors.yellow },
        NotifyINFOIcon = { fg = colors.blue },
        NotifyDEBUGIcon = { fg = colors.bright_black },
        NotifyTRACEIcon = { fg = colors.purple },
        
        NotifyERRORTitle = { fg = colors.red },
        NotifyWARNTitle = { fg = colors.yellow },
        NotifyINFOTitle = { fg = colors.blue },
        NotifyDEBUGTitle = { fg = colors.bright_black },
        NotifyTRACETitle = { fg = colors.purple },
        
        NotifyERRORBody = { fg = colors.fg },
        NotifyWARNBody = { fg = colors.fg },
        NotifyINFOBody = { fg = colors.fg },
        NotifyDEBUGBody = { fg = colors.fg },
        NotifyTRACEBody = { fg = colors.fg },
    }
end

return M
