require("bustest")

describe('A node', function()
    local nodename = "default:dirt"
    local node_def = {
        tiles = {"top", "bottom", "right", "left", "back", "front"}
    }

    it("should have a right texture", function()
        minetest.register_node(nodename, node_def)

        assert.node_has_right_texture(nodename, "right")
    end)
end)