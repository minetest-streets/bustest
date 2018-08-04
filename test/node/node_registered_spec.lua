require("bustest")

describe('Registering a node', function()
    local nodename = "default:dirt"
    local node_def = {}

    it("should register the node in minetest.registered_nodes", function()
        minetest.register_node(nodename,node_def)

        assert.node_registered(nodename)
    end)
end)