a = input('Введите начало отрезка = ');
b = input('Введите конец отрезка = ');
e = 0.01;
if sign(f(a)) == sign(f(b))
    error('Ошибка. Неверно выбран отрезок');
end

while (abs(a - b) > e)
   x = (b + a)/2;
   if sign(f(a)) == sign(f(x))
       a = x;
   else 
       b = x;
   end
   if f(x) == 0
       break;
   end
   if f(a) == 0
       x = a;
       break;
   end
   if f(b) == 0
       x = b;
       break;
   end 
end

disp(['Ответ', x]);

x = a1:0.01:b1;
y = f(x);
try
    plot(x,y);
catch ME
    disp(ME.message)
end

title('График фугкции (x-3)^3');
grid on;
xlabel('x');
ylabel('y=(x-3)^3');

