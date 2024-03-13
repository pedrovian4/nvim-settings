vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	use({
		'rose-pine/neovim',
		as = 'rose-pine',
		config = function()
			vim.cmd("colorscheme rose-pine")
		end 
	})


		use ('nvim-treesitter/nvim-treesitter', {run =  ':TSUpdate' })
		use 'theprimeagen/harpoon'
		use {
			"jiaoshijie/undotree",
			config = function()
				require('undotree').setup()
			end,
			requires = {
				"nvim-lua/plenary.nvim",
			},
		}
		use "FabijanZulj/blame.nvim"
		use {
			'nvim-lualine/lualine.nvim',
			requires = { 'nvim-tree/nvim-web-devicons', opt = true }
		}
		use "stevearc/dressing.nvim"
	end)

