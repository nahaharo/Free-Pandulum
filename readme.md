# Lagrangian of Pendalum

In this system, we can write kinetic energy and potential energy like below

![kinetic energy](https://latex.codecogs.com/gif.download?T%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20m%20%5Cdot%7Br%7D%5E2%20+%20%5Cfrac%7B1%7D%7B2%7Dm%5Cleft%28%20r%20%5Cdot%7B%5Ctheta%7D%5E2%20%5Cright%29)

![potential](https://latex.codecogs.com/gif.download?U%20%3D%20-mgr%20%5Ccos%20%5Ctheta%20-%20U_r%20%28r%29)



In potential energy equation, ![U_r](https://latex.codecogs.com/gif.download?U_r) can be ![heavi](https://latex.codecogs.com/gif.download?%5Cfrac%7B1%7D%7B2%7D%20k%20%28r-l%29%5E2%20H%28r-l%29) or ![quad](https://latex.codecogs.com/gif.download?%5Cfrac%7B1%7D%7B2%7D%20k%20%28r-l%29%5E2)where ![unit step](https://latex.codecogs.com/gif.download?H(r)) is unit step fucntion.

And now, Lagrangian can write lagrangian like this.

![lagrangian](https://latex.codecogs.com/gif.download?L%20%3D%20T-U%20%3D%20%5Cfrac%7B1%7D%7B2%7D%20m%20%5Cdot%7Br%7D%5E2%20+%20%5Cfrac%7B1%7D%7B2%7Dm%5Cleft%28%20r%20%5Cdot%7B%5Ctheta%7D%5E2%20%5Cright%29%20+%20mgr%20%5Ccos%5Ctheta%20-%20U_r%28r%29)

By Euler equation,

![Euler equation](https://latex.codecogs.com/gif.download?%5Cbegin%7Bcases%7D%5Cfrac%7Bd%7D%7Bdt%7D%20%5Cleft%28%20%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20%5Cdot%7Br%7D%7D%5Cright%29%20-%20%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20r%7D%20%3D%20-b%20%5Cdot%7Br%7D%5C%5C%5Cfrac%7Bd%7D%7Bdt%7D%20%5Cleft%28%20%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20%5Cdot%7B%5Ctheta%7D%7D%5Cright%29%20-%20%5Cfrac%7B%5Cpartial%20L%7D%7B%5Cpartial%20%5Ctheta%7D%20%3D%20-b%20r%20%5Cdot%7B%5Ctheta%7D%5Cend%7Bcases%7D)

![Euler equation2](https://latex.codecogs.com/gif.download?%5Cbegin%7Bcases%7Dm%20%5Cddot%7Br%7D-mr%5Cdot%7B%5Ctheta%7D%5E2%20-%20m%20g%20%5Ccos%20%5Ctheta%20+%5Cfrac%7B%5Cpartial%20U_r%28r%29%7D%7B%5Cpartial%20r%7D%3D-b%5Cdot%7Br%7D%5C%5Cm%5Cleft%282%20r%20%5Cdot%7B%5Ctheta%7D+r%5E2%20%5Cddot%7B%5Ctheta%7D%5Cright%29+mgr%20%5Csin%20%5Ctheta%20%3D%20-%20b%20r%20%5Cdot%7B%5Ctheta%7D%20%5Cend%7Bcases%7D)

Final equation is this.

![final equation](https://latex.codecogs.com/gif.download?%5Cbegin%7Bcases%7D%5Cdot%7Br%7D%20%3D%20%5Cdot%7Br%7D%5C%5C%5Cddot%7Br%7D%20%3D%20r%20%5Cdot%7B%5Ctheta%7D%5E2%20+g%5Ccos%20%5Ctheta%20-%20%5Cfrac%7Bk%7D%7Bm%7D%5Cfrac%7B%5Cpartial%20U_r%20%28r%29%7D%7B%5Cpartial%20r%7D%20-%20%5Cfrac%7Bb%7D%7Bm%7D%20%5Cdot%7Br%7D%20%5C%5C%20%5Cdot%7B%5Ctheta%7D%20%3D%20%5Cdot%7B%5Ctheta%7D%5C%5C%20%5Cddot%7B%5Ctheta%7D%3D-2%20%5Cfrac%7B%5Cdot%7Br%7D%7D%7Br%7D%5Cdot%7B%5Ctheta%7D%20-%20%5Cfrac%7Bg%7D%7Br%7D%20%5Csin%20%5Ctheta%20-%20%5Cfrac%7Bb%7D%7Bm%7D%20%5Cfrac%7B%5Cdot%7B%5Ctheta%7D%7D%7Br%7D%20%5Cend%7Bcases%7D)





