local assert = require("luassert")
local say = require("say")

local minetest = require("src.bustest.minetest")

say:set_namespace("en")

local function node_has_alias(state, arguments)
    local oldname = arguments[1]
    local newname = arguments[2]

    for current_oldname, current_newname in pairs(minetest.registered_alias) do
        if current_oldname == oldname and current_newname == newname then return true end
    end

    return false
end

say:set("assertion.node_has_alias.positive",
        "Expected the following alias for node %s: %s!")

say:set("assertion.node_has_alias.negative",
        "Did not expect the following alias for node %s: %s!")

assert:register("assertion", "node_has_alias", node_has_alias,
    "assertion.node_has_alias.positive",
    "assertion.node_has_alias.negative")
