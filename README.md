# NewtonX

This is a Newtonian, rigid body physics engine.

Wanted to call this PhysX, but Nvidia already have a physics engine by that name. 

## Usage

At the moment, you can run a simulation running `main` in ghci or running the executable (`stack exec newtonX`) which will step through the simulation with a second gap between each step without ever stopping. 

```
Particle {pid = 1, position = Vector2 {x = 10.0, y = 9990.19}, velocity = Vector2 {x = 0.0, y = -9.81}, mass = 1.0}
Time = {getTime = 1.0}

Particle {pid = 1, position = Vector2 {x = 10.0, y = 9970.57}, velocity = Vector2 {x = 0.0, y = -19.62}, mass = 1.0}
Time = {getTime = 2.0}
```

Alternatively, you can run `step` in ghci, specifying the particles and number of times to run through the simulation.

```
step [particle1, particle2] 5 
```

which will run through the simulation 10 times for particles 1 and 2.

```
[Particle {pid = 1, position = Vector2 {x = 10.0, y = 10000.0}, velocity = Vector2 {x = 0.0, y = 0.0},mass = 1.0},Particle {pid = 2, position = Vector2 {x = 10.0, y = 100000.0}, velocity = Vector2 {x = 0.0, y = 0.0}, mass = 1.0},Particle {pid = 1, position = Vector2 {x = 10.0, y = 9990.19}, velocity = Vector2 {x = 0.0, y = -9.81}, mass = 1.0},Particle {pid = 2, position = Vector2 {x = 10.0, y = 99990.19}, velocity = Vector2 {x = 0.0, y = -9.81}, mass = 1.0},Particle {pid = 1, position = Vector2 {x = 10.0, y = 9970.57}, velocity = Vector2 {x = 0.0, y = -19.62}, mass = 1.0},Particle {pid = 2, position = Vector2 {x = 10.0, y = 99970.57}, velocity = Vector2 {x = 0.0, y = -19.62}, mass = 1.0},Particle {pid = 1, position = Vector2 {x = 10.0, y = 9941.14}, velocity = Vector2 {x = 0.0, y = -29.43}, mass = 1.0}, Particle {pid = 2, position = Vector2 {x = 10.0, y = 99941.14000000001}, velocity = Vector2 {x = 0.0, y = -29.43}, mass = 1.0},Particle {pid = 1, position = Vector2 {x = 10.0, y = 9901.9}, velocity = Vector2 {x = 0.0, y = -39.24}, mass = 1.0},Particle {pid = 2, position = Vector2 {x = 10.0, y = 99901.90000000001}, velocity = Vector2 {x = 0.0, y = -39.24}, mass = 1.0}]
```

A particle consists of a position (a Vector2), a velocity (a Vector2), and a mass (a double).

```
let p1 = Particle (Vector2 10 20) (Vector2 5 0) 2
```

says that there is a particle at position (x: 10, y: 20) with a velocity (x: 5, y: 0) and a mass of 2.

```
stack build
stack exec newtonX
```
