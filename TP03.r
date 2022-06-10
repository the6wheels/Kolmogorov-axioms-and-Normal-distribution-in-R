# Declaration of variables
y=0
h=0
d=1
z=1:1000

# Generation of Random Normal Distribution Seed 
size=1000
mean = 1
SD =0.6
x = rnorm(size,mean,SD)
plot(z,x)
hist(x)
plot(density(x))

# Expectation of Squares
for(i in 1:1000)
y[i]=sum((x[1:i])^2)/i

# Squares of Expectations
for(i in 1:1000)
h[i]=sum(x[1:i]/i)^2

# Finding Standard Deviation
for(i in 1:1000)
d=sqrt(y-h)
d
plot(z,d)
