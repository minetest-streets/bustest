[![Build Status](https://travis-ci.org/minetest-streets/bustest.svg?branch=master)](https://travis-ci.org/minetest-streets/bustest)
# Bustest
Bustest aims at making unit-testing of minetest mods easier by providing additional assertions, that can be used by unit testing tools like *busted*.

**Please not that this is far away from stable and finished!**

## Implemented assertions
- assert.node_registered(nodename)
- assert.node_has_alias(nodename, alias)
- assert.node_has_top_texture(nodename, texture_string)
- assert.node_has_bottom_texture(nodename, texture_string)
- assert.node_has_left_texture(nodename, texture_string)
- assert.node_has_right_texture(nodename, texture_string)
- assert.node_has_front_texture(nodename, texture_string)
- assert.node_has_back_texture(nodename, texture_string)
