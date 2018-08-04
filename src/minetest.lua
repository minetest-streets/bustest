minetest = {
    registered_nodes = {},
    sent_chatmessages = {
        global = {}
    },
    registered_alias = {}
}

function minetest.register_node(nodename, node_definition)
    if node_definition.tiles == nil then
        node_definition.tiles = {""}
    end

    if #node_definition.tiles == 1 then
        node_definition.tiles[2] = node_definition.tiles[1]
        node_definition.tiles[3] = node_definition.tiles[1]
        node_definition.tiles[4] = node_definition.tiles[1]
        node_definition.tiles[5] = node_definition.tiles[1]
        node_definition.tiles[6] = node_definition.tiles[1]
    elseif #node_definition.tiles == 2 then
        node_definition.tiles[3] = node_definition.tiles[1]
        node_definition.tiles[4] = node_definition.tiles[1]
        node_definition.tiles[5] = node_definition.tiles[1]
        node_definition.tiles[6] = node_definition.tiles[1]
    elseif #node_definition.tiles == 3 then
        node_definition.tiles[4] = node_definition.tiles[1]
        node_definition.tiles[5] = node_definition.tiles[1]
        node_definition.tiles[6] = node_definition.tiles[1]
    elseif #node_definition.tiles == 4 then
        node_definition.tiles[5] = node_definition.tiles[1]
        node_definition.tiles[6] = node_definition.tiles[1]
    elseif #node_definition.tiles == 5 then
        node_definition.tiles[6] = node_definition.tiles[1]
    end

    minetest.registered_nodes[nodename] = node_definition;
end

function minetest.chat_send_all(message)
    table.insert(minetest.sent_chatmessages.global, message)
end

function minetest.chat_send_player(name, message)
    if minetest.sent_chatmessages[name] == nil then
        minetest.sent_chatmessages[name] = {}
    end
    
    table.insert(minetest.sent_chatmessages[name], message)
end

function minetest.register_alias(oldname, newname)
    minetest.registered_alias[oldname] = newname
end

return minetest
