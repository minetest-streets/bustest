require("bustest")

describe('A node', function()
    local nodename = "default:dirt"
    local node_def = {
        tiles = {"top", "bottom", "right", "left", "back", "front"}
    }

    it("should have a back texture", function()
        minetest.register_node(nodename, node_def)

        assert.node_has_back_texture(nodename, "back")
    end)
end)