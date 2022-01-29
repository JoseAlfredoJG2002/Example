# recursive
def factorial(n):
    if n == 1:
        return 1
    return n * factorial(n - 1)

print("   3!=", factorial(3))
print("  30!=", factorial(30))
print(" 300!=", factorial(300))
#print("3000!=", factorial(3000))
# Python recursive max stack is 1000

#% python factorial_recursivo.py                                                    19-01-25 - 21:47:26
#('   3!=', 6)
#('  30!=', 265252859812191058636308480000000L)
#(' 300!=', 306057512216440636035370461297268629388588804173576999416776741259476533176716867465515291422477573349939147888701726368864263907759003154226842927906974559841225476930271954604008012215776252176854255965356903506788725264321896264299365204576448830388909753943489625436053225980776521270822437639449120128678675368305712293681943649956460498166450227716500185176546469340112226034729724066333258583506870150169794168850353752137554910289126407157154830282284937952636580145235233156936482233436799254594095276820608062232812387383880817049600000000000000000000000000000000000000000000000000000000000000000000000000L)
#
# 3000!
# File "factorial_recursivo.py", line 5, in factorial
#    return n * factorial(n - 1)

#i= 999
#while(i<1000):
#  print("Calculando factorial de ",i)
#  f = factorial(i)
#  i += 1
#
#('Calculando factorial de ', 999)