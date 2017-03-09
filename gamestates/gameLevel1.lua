bump = require 'libs.bump.bump'
Gamestate = require 'libs.hump.gamestate'

local Entities = require 'entities.Entities'
local Entity = require 'entities.Entity'

local gameLevel1 = Gamestate.new()

local Player = require 'entities.player'
local Ground = require 'entities.ground'
local Particle = require 'entities.particle'

particles = {}
world = nil

function gameLevel1:enter()
    world = bump.newWorld(16)

    Entities:enter()
    for i=1,1000 do
        table.insert(particles, Particle(world, 250, 250, 3, 3, 5))
    end

    Entities:addMany(particles)
end

function gameLevel1:update(dt)
    Entities:update(dt)
end

function gameLevel1:update(dt)
    Entities:update(dt)
end

function gameLevel1:draw()
    Entities:draw()
end

return gameLevel1
