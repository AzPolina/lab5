model lab5

parameter Real a = 0.28; // коэффициент естественной смертности хищников
parameter Real b = 0.028; // коэффициент естественного прироста жертв
parameter Real c = 0.29; // коэффициент увеличения числа хищников
parameter Real d = 0.029; // коэффициент смертности жертв

parameter Real x0 = 7.0;// начальная популяция хищников
parameter Real y0 = 21.0;// начальная популяция жертв

//parameter Real x0 = 0.29/0.029;// стационарое состояние хищников (c/d)
//parameter Real y0 = 0.28/0.028;// стационарое состояние жертв (a/b)

Real x(start=x0);// популяция хищников
Real y(start=y0);// популяция жертв

equation

der(x) = -a*x + b*x*y;
der(y) = c*y - d*x*y;

end lab5;
