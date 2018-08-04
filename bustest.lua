minetest = require("src.bustest.minetest")

require "src.bustest.assertions.node.node_registered";
require "src.bustest.assertions.node.node_has_description";
require "src.bustest.assertions.node.node_has_top_texture";
require "src.bustest.assertions.node.node_has_bottom_texture";
require "src.bustest.assertions.node.node_has_left_texture";
require "src.bustest.assertions.node.node_has_right_texture";
require "src.bustest.assertions.node.node_has_front_texture";
require "src.bustest.assertions.node.node_has_back_texture";
require "src.bustest.assertions.node.node_has_alias";

require "src.bustest.assertions.chat.chatmessage_sent_all";
require "src.bustest.assertions.chat.chatmessage_sent_player";
