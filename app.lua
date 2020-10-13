local lapis = require("lapis")
local db = require("lapis.db")
local util = require('lapis.util')

local app = lapis.Application()

app:get("/", function()
	return {
		json={
			message='Welcome',
			version=require('lapis.version'),
			db_ok=type(db) == 'table'
		}
	}
end)

return app
