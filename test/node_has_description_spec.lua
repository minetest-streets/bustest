require("bustest")

describe('A node', function()
    local nodename = "default:dirt"
    local node_def = {
        description = "Dirt"
    }

    it("should have a description", function()
        minetest.register_node(nodename, node_def)

        assert.node_has_description(nodename, node_def.description)
    end)
end)