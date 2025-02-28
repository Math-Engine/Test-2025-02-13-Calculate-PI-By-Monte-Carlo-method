import sys
sys.set_int_max_str_digits(2147483647)

number_of_point = int(sys.argv[1])

from decimal import Decimal, getcontext
from fractions import Fraction

getcontext().prec = 1000

import random

not_inside_circle = 0
for i in range(0, number_of_point):
  if ( (((random.uniform(0, 2) - 1)**2) + ((random.uniform(0, 2) - 1)**2)) > 1 ):
    not_inside_circle = not_inside_circle + 1

inside_circle = number_of_point - not_inside_circle

print(f"number_of_point : {number_of_point}")
print(f"inside_circle : {inside_circle}")
print(f"not_inside_circle : {not_inside_circle}")

print("==========================================================================================")

fraction = Fraction(inside_circle * 4, number_of_point)
print(Decimal(fraction.numerator) / Decimal(fraction.denominator))
