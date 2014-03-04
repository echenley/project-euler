# What is the first term in the Fibonacci sequence to contain 1000 digits?

fib = [1,1,2]
digits = 1000

while (fib[-1] / (10 ** (digits - 1))) < 1
  fib.push(fib[-1] + fib[-2])
end

p fib.length
