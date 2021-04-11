import math
import decimal

def float_range(start, stop, step):
      while start < stop:
          yield float(start)
          start += decimal.Decimal(step)    

x=[]
y1=[]
y2=[]
for i in float_range(-1,1,'0.1'):
    x.append(i)
    y1.append(round(4 * ( math.sqrt(abs(i)) + math.sqrt( 1-(i**2) ) ) / 5,2))
    y2.append(round(4 * ( math.sqrt(abs(i)) - math.sqrt( 1-(i**2) ) ) / 5,2))
dist=[]



print(y2)

