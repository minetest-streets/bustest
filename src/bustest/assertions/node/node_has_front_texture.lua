local assert = require("luassert")
local say = require("say")

local minetest = require("src.bustest.minetest")

say:set_namespace("en")

local function node_has_front_texture(state, arguments)
    local nodename = arguments[1]
    local expected_tile = arguments[2]

    --  top, bottom, right, left, back, front
    if minetest.registered_nodes[nodename] then
        if minetest.registered_nodes[nodename].tiles[6] == expected_tile then
            return true
        end
    end

    return false
end

say:set("assertion.node_has_front_texture.positive",
        "Expected node %s to have %s as front texture!")

say:set("assertion.node_has_front_texture.negative",
        "Expected node %s not to have %s as front texture!")
assert:register("assertion", "node_has_front_texture", node_has_front_texture,
    "assertion.node_has_front_texture.positive",
    "assertion.node_has_front_texture.negative")
