local M = {}

function M.setup()
    -- Comments
    vim.cmd('syntax match RidlComment "#.*"')
    vim.cmd('highlight link RidlComment Comment')

    -- Keywords
    vim.cmd('syntax match RidlKeyword "^webrpc"')
    vim.cmd('syntax match RidlKeyword "^name"')
    vim.cmd('syntax match RidlKeyword "^version"')
    vim.cmd('syntax match RidlKeyword "^enum"')
    vim.cmd('syntax match RidlKeyword "^struct"')
    vim.cmd('syntax match RidlKeyword "^service"')
    vim.cmd('syntax match RidlKeyword "^error"')
    vim.cmd('highlight link RidlKeyword Keyword')

    -- Types - somtimes trailing , occurs
    vim.cmd('syntax region RidlTypes start=": "rs=s+2,hs=s+2 end="\\s\\|\\n\\|)"he=s-1')
    vim.cmd('highlight link RidlTypes Special')

    -- Fields
    vim.cmd('syntax match RidlField "- [a-zA-Z0-9.]*"ms=s+2')
    vim.cmd('highlight link RidlField PreProc')

    vim.cmd('syntax match RidlFieldDetail "+ [a-zA-Z0-9.]*"ms=s+2')
    vim.cmd('highlight link RidlFieldDetail String')

    -- Optional
    vim.cmd('syntax match RidlOptional "?"')
    vim.cmd('highlight link RidlOptional WarningMsg')

    -- Arrow
    vim.cmd('syntax match RidlArrow "=>"')
    vim.cmd('highlight link RidlArrow Constant')

    -- HTTP Status Codes
    vim.cmd('syntax match RidlHTTPStatus " HTTP "')
    vim.cmd('highlight link RidlHTTPStatus Special')

    -- Numbers, they are not perfect, but for now it is ok
    vim.cmd('syntax match RidlNumber "\\s\\d\\+\\s\\|\\n"')
    vim.cmd('syntax match RidlNumber "\\d\\+\\n"me=e-1')
    vim.cmd('highlight link RidlNumber Constant')

    -- Strings -- too powerfull
    vim.cmd('syntax match RidlString +".*"+')
    vim.cmd('highlight link RidlString String')
end

return M
