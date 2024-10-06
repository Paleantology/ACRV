
k <- c(1, 1, 10, 100)
mu <- c(10, 1, 1, 1)
theta <- mu/k
plot("Probability Density", "Gamma", xlim = c(0, 10), ylim = c(0, 4), type = "n")

typs <- c("aa", "dashed", "dotted", "solid")
colos <- c("black", "darkgrey", "black", "darkgrey")

for(i in seq_along(k))
   curve(dgamma(x, shape = k[i], scale = theta[i]), from = 0, to = 10, lwd = 2,  add = TRUE, col=colos[i], lty=typs[i])

legend(7.5, 4, legend=c("0.1", "1", "10", "100"), col=c("black", "darkgrey", "black", "darkgrey"), 
       lty=c("aa", "dashed", "dotted", "solid"), cex=0.8)