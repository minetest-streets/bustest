require("bustest")

local nodename = "bustest:test"
local node_def = {}
local alias = "test"

describe('Registering a node alias', function()
    it("should make the node available as the alias", function()
        minetest.register_alias("bustest:test", "test")

        assert.node_has_alias(nodename, alias);
    end)
end)
