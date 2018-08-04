minetest = require("src.minetest")

require "src.assertions.node.node_registered";
require "src.assertions.node.node_has_description";
require "src.assertions.node.node_has_top_texture";
require "src.assertions.node.node_has_bottom_texture";
require "src.assertions.node.node_has_left_texture";
require "src.assertions.node.node_has_right_texture";
require "src.assertions.node.node_has_front_texture";
require "src.assertions.node.node_has_back_texture";
require "src.assertions.node.node_has_alias";

require "src.assertions.chat.chatmessage_sent_all";
require "src.assertions.chat.chatmessage_sent_player";
