require("bustest")

describe('When calling minetest.chat_send_all()', function()
    it("the chat message should be sent to global chat", function()
        local msg = "Lorem Ipsum dolor sit amet"

        minetest.chat_send_all(msg)

        assert.chatmessage_sent_all(msg);
    end)
end)
