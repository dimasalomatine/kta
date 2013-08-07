simpex
is acronim for simple prediction executor
======
Using BPN to predict TA market index 25
input series ta25(d),nasdak100(d-1),s&p500(d-1),dax(d),vix(d),vix(d-1) (close/open/hi/lo changes in %)
output ta25 predicted changes

======
example of input series
create on day N
ta25(o/c-1,c/o,h/h-1,h/lo,lo/lo-1,a/a-1)
same for other indexes exept last param set to 0 as irelevant
and wallstret idx Changes calculate to d-2


