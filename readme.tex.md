# Lagrangian of Pendalum

In this system, we can write kinetic energy and potential energy like below

$T = \frac{1}{2} m \dot{r}^2 + \frac{1}{2}m\left( r \dot{\theta}^2 \right)$

$U = -mgr \cos \theta  - U_r (r) $



In potential energy equation, $U_r(r)$ can be $\frac{1}{2} k (r-l)^2 H(r-l)$ or $\frac{1}{2} k (r-l)^2$ where $H(r)$ is unit step fucntion.

And now, Lagrangian can write lagrangian like this.

$L = T-U = \frac{1}{2} m \dot{r}^2 + \frac{1}{2}m\left( r \dot{\theta}^2 \right) + mgr \cos\theta - U_r(r)$

By Euler equation,

$\begin{cases}\frac{d}{dt} \left( \frac{\part L}{\part \dot{r}}\right) - \frac{\part L}{\part r} = -b \dot{r}\\\frac{d}{dt} \left( \frac{\part L}{\part \dot{\theta}}\right) - \frac{\part L}{\part \theta} = -b r \dot{\theta}\end{cases}$

$\begin{cases}m \ddot{r}-mr\dot{\theta}^2 - m g \cos \theta +\frac{\part U_r(r)}{\part r}=-b\dot{r}\\m\left(2 r \dot{\theta}+r^2 \ddot{\theta}\right)+mgr \sin \theta = - b r \dot{\theta} \end{cases} $

Final equation is this.

$\begin{cases}\dot{r} = \dot{r}\\\ddot{r} = r \dot{\theta}^2 +g\cos \theta - \frac{k}{m}\frac{\part U_r (r)}{\part r} - \frac{b}{m} \dot{r} \\ \dot{\theta} = \dot{\theta}\\ \ddot{\theta}=-2 \frac{\dot{r}}{r}\dot{\theta} - \frac{g}{r} \sin \theta - \frac{b}{m} \frac{\dot{\theta}}{r} \end{cases}$

