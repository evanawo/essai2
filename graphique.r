if (!requireNamespace("ggplot2", quietly = TRUE)) {
  install.packages("ggplot2")
}

library(ggplot2)

data("iris")

p <- ggplot(iris, aes(x = Petal.Length, y = Petal.Width, color = Species)) +
  geom_point(size = 3) +  
  labs(title = "Dimensions des Pétales des Iris",
       x = "Longueur du Pétale",
       y = "Largeur du Pétale",
       color = "Espèce") +
  theme_minimal() + 
  theme(plot.title = element_text(hjust = 0.5))

print(p)
