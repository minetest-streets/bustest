local assert = require("luassert")
local say = require("say")

local minetest = require("src.minetest")

say:set_namespace("en")

local function node_registered(state, arguments)
    local nodename = arguments[1]

    for current_nodename, _ in pairs(minetest.registered_nodes) do
        if current_nodename == nodename then return true end
    end

    return false
end

say:set("assertion.node_registered.positive",
        "Expected node %s to be registered, but it isn't!")

say:set("assertion.node_registered.negative",
        "Expected node %s not to be registered, but it is!")

assert:register("assertion", "node_registered", node_registered,
    "assertion.node_registered.positive",
    "assertion.node_registered.negative")
