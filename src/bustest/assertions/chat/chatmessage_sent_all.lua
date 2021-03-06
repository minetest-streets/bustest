local assert = require("luassert")
local say = require("say")

local minetest = require("src.bustest.minetest")

say:set_namespace("en")

local function chatmessage_sent_all(state, arguments)
    local message = arguments[1]

    for _, current_message in pairs(minetest.sent_chatmessages.global) do
        print("Evaluating " .. current_message)
        if current_message == message then return true end
    end

    return false
end

say:set("assertion.chatmessage_sent_all.positive",
        "Expected chat message %s to be sent to all, but it wasn't!")

say:set("assertion.chatmessage_sent_all.negative",
        "Expected chat message not %s to be sent to all, but it was!")

assert:register("assertion", "chatmessage_sent_all", chatmessage_sent_all,
    "assertion.chatmessage_sent_all.positive",
    "assertion.chatmessage_sent_all.negative")
