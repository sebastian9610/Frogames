# Pregunta 1
print('Pregunta 1')
curve(x^2-3*x+30, -15, 15, main = "Una parabola",xlab =expression(x), ylab =expression(y = x^2-3*x+30))

#Pregunta 2
print('Pregunta 2')
f =function(x){ x^2-3*x+30}
I =c(-15:15)
plot(I,f(I), type = "l",  main = "Una parabola",xlab =expression(x), ylab =expression(y = x^2-3*x+30))

# Pregunta 3
print('Pregunta 3')
curve(5*2^x, -10, 25, log = "y", ylab =expression(y = 5%.%2^x), xlab = "")

# Pregunta 4
print('Pregunta 4')
curve(3*x, -10, 20, xlab = "", ylab = "",col = "blue", main = "2 rectas", sub = "Dos rectas con pendiente opuesto")
curve(-3*x, col = "green", add = TRUE)
legend(13, 10, legend =c("3x","-3x"), lty =c(1, 1), col =c("blue", "green"))

#Pregunta 5
print('Pregunta 5')
abline(h = 0, col = "red", lwd = 5)

# Pregunta 6
print('Pregunta 6')
abline(7, 2, col = "blue", lwd = 2)
