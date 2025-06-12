local M = {}

--- Create a key mapping with enhanced defaults
-- @param mode string|table The mode(s) ('n', 'i', 'v', etc. or list like {'n', 'v'})
-- @param lhs string Left-hand side (key combination)
-- @param rhs string|function Right-hand side (command or Lua function)
-- @param opts table|nil Additional options (desc, expr, buffer, etc.)
function M.map(mode, lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = opts.noremap == nil and true or opts.noremap
	opts.silent = opts.silent == nil and true or opts.silent

	-- Support both string modes and mode tables
	if type(mode) == "table" then
		for _, m in ipairs(mode) do
			vim.keymap.set(m, lhs, rhs, opts)
		end
	else
		vim.keymap.set(mode, lhs, rhs, opts)
	end
end

--- Create a buffer-local key mapping
-- @param bufnr number Buffer number (0 for current)
-- @param mode string|table The mode(s)
-- @param lhs string Left-hand side
-- @param rhs string|function Right-hand side
-- @param opts table|nil Additional options
function M.map_buf(bufnr, mode, lhs, rhs, opts)
	opts = opts or {}
	opts.noremap = opts.noremap == nil and true or opts.noremap
	opts.silent = opts.silent == nil and true or opts.silent
	opts.buffer = bufnr

	M.map(mode, lhs, rhs, opts)
end

--- Create multiple mappings from a table
-- @param mappings table List of {mode, lhs, rhs, opts}
function M.map_all(mappings)
	for _, mapping in ipairs(mappings) do
		local mode, lhs, rhs, opts = unpack(mapping)
		M.map(mode, lhs, rhs, opts)
	end
end

--- Create multiple buffer mappings from a table
-- @param bufnr number Buffer number
-- @param mappings table List of {mode, lhs, rhs, opts}
function M.map_buf_all(bufnr, mappings)
	for _, mapping in ipairs(mappings) do
		local mode, lhs, rhs, opts = unpack(mapping)
		M.map_buf(bufnr, mode, lhs, rhs, opts)
	end
end

--- Setup global access to mapping functions
function M.setup()
	_G.map = M.map
	_G.map_buf = M.map_buf
	_G.map_all = M.map_all
	_G.map_buf_all = M.amp_buf_all
end

return M
