package = "bustest"
version = "scm-1"
source = {
   url = "git+https://github.com/minetest-streets/bustest"
}
description = {
   homepage = "https://github.com/minetest-streets/bustest",
   license = "MIT"
}
dependencies = {
    "luassert", "say"
}
build = {
   type = "builtin",
   modules = {
      ["bustest.assertions.chat.chatmessage_sent_all"] = "src/bustest/assertions/chat/chatmessage_sent_all.lua",
      ["bustest.assertions.chat.chatmessage_sent_player"] = "src/bustest/assertions/chat/chatmessage_sent_player.lua",
      ["bustest.assertions.node.node_has_alias"] = "src/bustest/assertions/node/node_has_alias.lua",
      ["bustest.assertions.node.node_has_back_texture"] = "src/bustest/assertions/node/node_has_back_texture.lua",
      ["bustest.assertions.node.node_has_bottom_texture"] = "src/bustest/assertions/node/node_has_bottom_texture.lua",
      ["bustest.assertions.node.node_has_description"] = "src/bustest/assertions/node/node_has_description.lua",
      ["bustest.assertions.node.node_has_front_texture"] = "src/bustest/assertions/node/node_has_front_texture.lua",
      ["bustest.assertions.node.node_has_left_texture"] = "src/bustest/assertions/node/node_has_left_texture.lua",
      ["bustest.assertions.node.node_has_right_texture"] = "src/bustest/assertions/node/node_has_right_texture.lua",
      ["bustest.assertions.node.node_has_top_texture"] = "src/bustest/assertions/node/node_has_top_texture.lua",
      ["bustest.assertions.node.node_registered"] = "src/bustest/assertions/node/node_registered.lua",
      ["bustest.minetest"] = "src/bustest/minetest.lua"
   }
}
