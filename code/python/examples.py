import random
import time
# assignment commands

x = random.randint(-2, 3)
y = 3

sausage = "farcimen"

# conditions

print("x =", x)

if x < 0 or y == x:
    x = 0
    z = 10

else:
    x = 1
    z = 11

print("Oi, ye need to know that x =", x, "ye " + sausage)
print("And also y = ", y, "... and z = ", z, "... ye " + sausage)

# iteration
done = False
i = 0
while not done:
    x += 1
    i += 1
    if x > 5:
        done = True

times = 10
while (times >= 0):
    print("T-" + str(times))
    time.sleep(1)
    times -= 1

print("Pointless countdown end")

# procedure call

def blosab(melt, droll, fortasse = 1):
    if melt > 0:
        droll = 2
    else:
        droll -= fortasse
    print(droll)

blosab(random.randint(-2,3), z)

def fun(a, b, c, x):
    answer = (a * x * x) + (b * x) + c
    return answer

print(fun(1, 3, 4, x))

