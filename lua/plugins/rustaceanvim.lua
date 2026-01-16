return {
    'mrcjkb/rustaceanvim',
    version = '^6', -- Recommended
    lazy = false, -- This plugin is already lazy
    config = function()
        -- local mason_registry = require("mason-registry")
        -- local codelldb = mason_registry.get_package("codelldb")
        local packages_root = require("mason.settings").current.install_root_dir .. "/share"
        local extension_path = packages_root .. "/codelldb/extension/"
        local codelldb_path = extension_path .. "adapter/codelldb"
        local liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
        local cfg = require("rustaceanvim.config")

        vim.g.rustaceanvim = {
            dap = {
                adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path)
            },
        }
    end
}
