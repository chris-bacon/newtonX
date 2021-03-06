module Particle.Particle where

import Vector.Vector
import Particle.Types
import Rules.Constants

calcVelocity :: Particle -> Particle
calcVelocity p = 
    Particle (pid p)
             (position p) 
             (Vector2 (xV + xAccerlation) (yV + yAccerlation)) 
             (mass p)
    where
        xV = x $ velocity p
        yV = y $ velocity p
        f = force (mass p) gravityAcc
        xAccerlation = (0 / mass p) * deltaTime
        yAccerlation = (f / mass p) * deltaTime

calcPosition :: Particle -> Particle
calcPosition p = 
    Particle (pid p)
             (Vector2 xPosition yPosition)
             (velocity p)
             (mass p)
    where
        pPosition = position p
        xPosition = ((x $ pPosition) + (x $ velocity p)) * deltaTime 
        yPosition = ((y $ pPosition) + (y $ velocity p)) * deltaTime

updateParticle :: Particle -> Particle
updateParticle = calcPosition . calcVelocity

