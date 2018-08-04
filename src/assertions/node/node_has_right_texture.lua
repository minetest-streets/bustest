local assert = require("luassert")
local say = require("say")

local minetest = require("src.minetest")

say:set_namespace("en")

local function node_has_right_texture(state, arguments)
    local nodename = arguments[1]
    local expected_tile = arguments[2]

    --  top, bottom, right, left, back, front
    if minetest.registered_nodes[nodename] then
        if minetest.registered_nodes[nodename].tiles[3] == expected_tile then
            return true
        end
    end

    return false
end

say:set("assertion.node_has_right_texture.positive",
        "Expected node %s to have %s as right texture!")

say:set("assertion.node_has_right_texture.negative",
        "Expected node %s not to have %s as right texture!")
assert:register("assertion", "node_has_right_texture", node_has_right_texture,
    "assertion.node_has_right_texture.positive",
    "assertion.node_has_right_texture.negative")
