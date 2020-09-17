V = ones(5);
V(1:3,2:end) = [-3 9 -27 81; -2 4 -8 16; -1 1 -1 1];
V(4,2:end) = 0;
y = zeros(5,1);
y(3:4) = [4 -6];

c = V\y;

x = -30:0.01:30;

f = [ones(size(x')) x' x'.^2 x'.^3 x'.^4]*c;

plot(x,f);