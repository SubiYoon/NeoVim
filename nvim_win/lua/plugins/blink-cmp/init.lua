return {
  "saghen/blink.cmp",
  opts = {
    keymap = {
      -- ESC를 누르면 자동완성만 닫고 Insert 모드 유지
      ["<Esc>"] = {
        function(cmp)
          if cmp.is_visible() then
            cmp.hide()
            return true -- 이벤트 소비 (Normal 모드 전환 방지)
          end

          return false -- 기본 동작 수행 (Normal 모드로 전환)
        end,
        "fallback",
      },
    },
  },
}
