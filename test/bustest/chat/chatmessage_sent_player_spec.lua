require("bustest")

describe('When calling minetest.chat_send_player()', function()
    it("the chat message should be sent to the recipient", function()
        local player1 = "player1"
        local player2 = "player2"
        local msg = "Lorem Ipsum dolor sit amet"

        minetest.chat_send_player(player1, msg)

        assert.chatmessage_sent_player(player1, msg)
    end)

    it("the chat message should not be sent to other players", function()
        local player1 = "player1"
        local player2 = "player2"
        local msg = "Lorem Ipsum dolor sit amet"

        minetest.chat_send_player(player1, msg)

        assert.not_chatmessage_sent_player(player2, msg)
    end)

    it("the chat message should not be sent to the global chat", function()
        local msg = "Lorem Ipsum dolor sit amet"

        minetest.chat_send_all(player1, msg)

        assert.not_chatmessage_sent_all(msg)
    end)
end)

