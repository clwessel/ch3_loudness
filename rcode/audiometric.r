library(ggplot2)

p <- 1:5
f <- c(0.25, 0.5, 1, 2, 3, 4, 6, 8)
s <- c("Right", "Left")

df <- expand.grid("s" = s, "f" = f, "p" = p)
df <- df[,3:1]
df$f <- factor(df$f)

p1 <- c(0,0,-5,0,5,0,0,0,5,5,0,-5,5,0,5,-5)
p2 <- c(-5,5,0,5,-5,0,0,0,-5,-5,-5,0,10,5,0,5)
p3 <- c(0,-10,-5,-5,5,0,0,-5,0,-10,0,-5,-5,-10,0,-5)
p4 <- c(-5,-5,0,0,5,5,5,0,-5,-5,0,-5,-5,5,5,10)
p5 <- c(0,0,5,0,5,5,5,5,-5,0,5,-10,5,0,0,0)

df$dB <- c(p1, p2, p3, p4, p5)

df |> 
    ggplot(aes(f, dB, shape = s)) +
    geom_point(size = 4) +
    theme_classic() +
    facet_wrap(~p) +
    scale_y_reverse() +
    scale_shape_manual("Side", values = c(4, 1)) +
    labs(x = "Frequency (kHz)", y = "Hearing Level (dB)") +
    theme(panel.grid.major = element_line(color = "lightgray", linetype = 1), legend.position = "top")

ggsave("audiometric.svg", width = 8, height = 5)
