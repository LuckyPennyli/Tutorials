install.packages("cluster")
install.packages("ClusterR")
library(ClusterR)
library(cluster)
iris
iris4 <- iris[, 1:4]
iris4
kmeansiris <- kmeans(iris4, centers = 3, nstart = 20)
kmeansiris
plot(iris4[c("Sepal.Length", "Sepal.Width")])
plot(iris4[c("Sepal.Length", "Sepal.Width")], 
     col = kmeansiris$cluster)
plot(iris4[c("Sepal.Length", "Sepal.Width")], 
     col = kmeansiris$cluster, 
     main = "K-means with 3 clusters")
points(kmeansiris$centers[, c("Sepal.Length", "Sepal.Width")], 
       col = 1:3, pch = 8, cex = 3)
kmeans_cluster <- kmeansiris$cluster
clusplot(iris4[, c("Sepal.Length", "Sepal.Width")],
         kmeans_cluster,
         lines = 0,
         labels = 2,
         shade = TRUE,
         color = TRUE,
         plotchar = FALSE,
         main = paste("Cluster iris"),
         xlab = 'Sepal.Length',
         ylab = 'Sepal.Width')

