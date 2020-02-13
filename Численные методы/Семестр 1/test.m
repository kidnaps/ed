syms t

phi = cos(t);
ksi = sin(t);

a = 2;
R = 5;

OA = [a*sin(phi); a*cos(phi);0];
AM = [ksi*cos(phi); -ksi*sin(phi);0];

OM = OA + AM;

omega = [0,0,-diff(phi)];
Eps = [0;0;-diff(diff(phi))];

Vr = [diff(ksi)*cos(phi); -diff(ksi)*sin(phi);0];
Wr = [diff(diff(ksi))*cos(phi);-diff(diff(ksi))*sin(phi); 0];
We = cross(Eps, OM) + cross(omega,cross(omega, OM));

Wc = 2*cross(omega, Vr);

Wa = Wr + We + Wc;

W = diff(diff(OM));

t = 2;

Wa = eval(Wa);
W = eval(W);

