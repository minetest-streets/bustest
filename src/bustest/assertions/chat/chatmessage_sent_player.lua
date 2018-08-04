local assert = require("luassert")
local say = require("say")

local minetest = require("src.minetest")

say:set_namespace("en")

local function chatmessage_sent_player(state, arguments)
    local player = arguments[1]
    local message = arguments[2]

    if minetest.sent_chatmessages[player] ~= nil then
        for _, current_message in pairs(minetest.sent_chatmessages[player]) do
            if current_message == message then return true end
        end
    end

    return false
end

say:set("assertion.chatmessage_sent_player.positive",
        "Expected chat message %s to be sent to player %s, but it wasn't!")

say:set("assertion.chatmessage_sent_player.negative",
        "Expected chat message not %s to be sent to player %s, but it was!")

assert:register("assertion", "chatmessage_sent_player", chatmessage_sent_player,
    "assertion.chatmessage_sent_player.positive",
    "assertion.chatmessage_sent_player.negative")