return {
  {
    "rcarriga/nvim-dap-ui",
    event="VeryLazy",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dap, dapui = require("dap"), require("dapui")
      dapui.setup()
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    event="VeryLazy",
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-dap",
    },
    opts = {
      handlers = {},
      ensure_installed = {
        "codelldb"
      }
    }
  },
  {
    "mfussenegger/nvim-dap",
    config = function()
      vim.keymap.set('n', '<leader>dp', '<cmd> DapToggleBreakpoint <CR>', {})
      vim.keymap.set('n', '<leader>dr', '<cmd> DapContinue <CR>', {})
    end
  }
}
