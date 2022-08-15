local status, n = pcall(require, 'neosolarized')
if(not status) then return end

n.setup ({ commit_italics = true })
local colorbuddy = require ('colorbuddy.init')
local Color = colorbuddy.Color
local colors = colorbuddy.colors 
local Group = colorbuddy.Group
local groups = colorbuddy.groups
local styles =  colorbuddy. styles


Color.new ('black', '#000000')
Group.new ('CursorLine', colors.none, colors.base03, styles.NONE, colors.base1)
Group.new ('CursorLineNr', colors.yellow, colors.black,styles.NONE, colors.base1)
Group.new ('Visual', colors.none, colors.base03, styles.reverse)

local cErro = groups.Error.fg
local cInfo = groups.Information.fg
local cWarn = groups.Warning.fg
local cHint = groups.Hint.fg


Group.new("DiagnosticVirutalTextError", cErro, cErro:dark():dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirutalTextInfo", cInfo, cInfo:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticVirtualTextWarm", cWarn, cWarn:dark():dark():dark(), styles.NONE) 
Group.new("DiagnosticVirtualTextHint", cHint, cHint:dark():dark():dark(), styles.NONE)
Group.new("DiagnosticUnderlineError", colors.none, colors.none, styles.undercurl, cErro)
Group.new("diagnosticUnderlineWarn", colors.none, colors.none, styles.undercurl, cWarn)
Group.new("diagnosticUnderlineInfo", colors.none, colors.none, styles.undercurl, cInfo)
Group.new("diagnosticUnderlineHint", colors.none, colors.none, styles.undercurl, cHint)
