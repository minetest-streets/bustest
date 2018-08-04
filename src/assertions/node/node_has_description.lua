local assert = require("luassert")
local say = require("say")

local minetest = require("src.minetest")

say:set_namespace("en")

local function node_has_description(state, arguments)
    local nodename = arguments[1]
    local description = arguments[2]

    if minetest.registered_nodes[nodename] then
        if minetest.registered_nodes[nodename].description == description then
            return true;
        end
    end

    return false
end

say:set("assertion.node_has_description.positive",
        "Expected node %s to have %s as description!")

say:set("assertion.node_has_description.negative",
        "Expected node %s not to have %s as description!")
assert:register("assertion", "node_has_description", node_has_description,
    "assertion.node_has_description.positive",
    "assertion.node_has_description.negative")
