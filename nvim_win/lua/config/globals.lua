local common = require("utils.commonUtils")

vim.g.mapleader = " " -- global leader
vim.g.maplocalleader = " " -- local leader
if vim.fn.has("win32") == 1 then
  vim.opt.shell = "pwsh"
  vim.opt.shellcmdflag =
    "-NoLogo -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.UTF8Encoding]::new();$PSDefaultParameterValues['Out-File:Encoding']='utf8';"
  vim.opt.shellredir = '2>&1 | %%{ "$_" } | Out-File %s; exit $LastExitCode'
  vim.opt.shellpipe = '2>&1 | %%{ "$_" } | Tee-Object %s; exit $LastExitCode'
  vim.opt.shellquote = ""
  vim.opt.shellxquote = ""
else
  vim.opt.shell = "/bin/zsh"
  vim.opt.shellcmdflag = "-ic"
  vim.opt.shellxquote = ""
end
vim.g.transparency = 0.8
vim.opt.textwidth = 0
-- y로 복사한 내용 클립보드에 복사
vim.opt.clipboard:append("unnamedplus")
-- 주석줄에서 Enter시 자동 주석 해제
vim.opt_local.formatoptions:remove("r")
-- lspconfig 경고모양 변경
common.sign({ name = "DiagnosticSignError", text = "🚨" })
common.sign({ name = "DiagnosticSignWarn", text = "⚠️" })
common.sign({ name = "DiagnosticSignHint", text = "✨" })
common.sign({ name = "DiagnosticSignInfo", text = "🔍" })

-- codewindow config
-- vim.api.nvim_set_hl(0, 'CodewindowBorder', { fg = '#ffff00' })         -- the border highlight
-- vim.api.nvim_set_hl(0, 'CodewindowBackground', { fg = '#ffff00' })     -- the background highlight
vim.api.nvim_set_hl(0, "CodewindowWarn", { fg = "#ffff00" }) -- the color of the warning dots
vim.api.nvim_set_hl(0, "CodewindowError", { fg = "#ff0000" }) -- the color of the error dots
vim.api.nvim_set_hl(0, "CodewindowAddition", { fg = "#00ff00" }) -- the color of the addition git sign
vim.api.nvim_set_hl(0, "CodewindowDeletion", { fg = "#cc0099" }) -- the color of the deletion git sign
vim.api.nvim_set_hl(0, "CodewindowUnderline", { fg = "#800000" }) -- the color of the underlines on the minimap
