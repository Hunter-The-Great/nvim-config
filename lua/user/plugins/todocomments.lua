return {
	"folke/todo-comments.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {
		keywords = {
			FIX = {
				icon = " ", -- icon used for the sign, and in search results
				color = "error", -- can be a hex color, or a named color (see below)
				alt = { "FIXME", "BUG", "FIXIT", "ISSUE" }, -- a set of other keywords that all map to this FIX keywords
				-- signs = false, -- configure signs for some keywords individually
			},
			TODO = { icon = " ", color = "info" },
			HACK = { icon = " ", color = "warning" },
			WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
			PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
			NOTE = { icon = " ", color = "hint", alt = { "MEETING" } },
			TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
		},
	},

	config = function(opts)
		require("todo-comments").setup(opts)
		vim.keymap.set("n", "<leader>qt", "<cmd>TodoQuickFix<cr>", { desc = "Todos" })

		vim.keymap.set("n", "<leader>qn", function()
			require("todo-comments").jump_next()
		end, { desc = "Next todo comment" })

		vim.keymap.set("n", "<leader>qp", function()
			require("todo-comments").jump_prev()
		end, { desc = "Previous todo comment" })
	end,
}

-- FIX: test
-- TODO: test
-- HACK: test
-- WARN: test
-- PERF: test
-- NOTE: test
-- TEST: test
