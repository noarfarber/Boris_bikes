# Boris bikes

## User Stories

```
As a person,
So that I can use a bike,
I'd like a docking station to release a bike.
```

```
As a person,
So that I can use a good bike,
I'd like to see if a bike is working.
```

## Domain Model


| Objects         |  Messages     |
| -------------   |:-------------:|
| Person          | ask_for_bike  |
| Person          | pick_bike     |
| Person          | test_bike     |
| Person          | use_bike      |
| Bike            | working?      |
| Docking station | has_bike?     |
| Docking station | release       |
