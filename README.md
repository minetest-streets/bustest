[![Build Status](https://travis-ci.org/minetest-streets/bustest.svg?branch=master)](https://travis-ci.org/minetest-streets/bustest)
# Bustest
Bustest aims at making unit-testing of minetest mods easier by providing additional assertions, that can be used by unit testing tools like *busted* and within a CI/CD pipeline.

**Please note that this is far away from stable and finished!**

## How does it work?
Bustest uses *luassert* and *say*. Luassert is used to register additional Minetest-related assertions, Say is used to register the assertion messages.

The *minetest* table is mocked, so a running Minetest environment is not needed to run the tests, which is very helpful for automating tests if you're using CI/CD.

## Implemented assertions
(Might be outdated)
- assert.node_registered(nodename)
- assert.node_has_alias(nodename, alias)
- assert.node_has_top_texture(nodename, texture_string)
- assert.node_has_bottom_texture(nodename, texture_string)
- assert.node_has_left_texture(nodename, texture_string)
- assert.node_has_right_texture(nodename, texture_string)
- assert.node_has_front_texture(nodename, texture_string)
- assert.node_has_back_texture(nodename, texture_string)
