## ----setup,echo=F--------------------------------------------------------
knitr::opts_chunk$set(comment=NA, echo=FALSE, fig.width=6, fig.height=6)

## ----birch,fig.height=2,fig.width=6----------------------------------------------------------------------------
library(clusteringdatasets)
data(birch1)
data(birch2)
data(birch3)
par(mfrow = c(1, 3), mar = c(0,0,1,0))
plot(birch1, cex = 0.0000005, main = "birch1", xlab = "", ylab = NULL, xaxt='n', yaxt = 'n')
plot(birch2, cex = 0.0000005, main = "birch2", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(birch3, cex = 0.0000005, main = "birch3", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

## ----ssets,fig.height=4,fig.width=4----------------------------------------------------------------------------
data(s1)
data(s2)
data(s3)
data(s4)
par(mfrow = c(2, 2), mar = c(0,0,1,0))
plot(s1[, 1:2], cex = 0.0001, col = s1$labels, main = "s1", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(s2[, 1:2], cex = 0.0001, col = s2$labels, main = "s2", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(s3[, 1:2], cex = 0.0001, col = s3$labels, main = "s3", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(s4[, 1:2], cex = 0.0001, col = s4$labels, main = "s4", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

## ----asets,fig.height=2,fig.width=6----------------------------------------------------------------------------
data(a1)
data(a2)
data(a3)
par(mfrow = c(1, 3), mar = c(0,0,1,0))
plot(a1[, 1:2], cex = 0.0001, col = s1$labels, main = "a1", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(a2[, 1:2], cex = 0.0001, col = s2$labels, main = "a2", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(a3[, 1:2], cex = 0.0001, col = s3$labels, main = "a3", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

## ----shapesets,fig.height=6,fig.width=6------------------------------------------------------------------------
data("Aggregation")
data("spiral")
data("D31")
data(Compound)
data(pathbased)
data(jain)
data(flame)
data(R15)
par(mfrow = c(3, 3), mar = c(0,0,1,0))
plot(Aggregation[, 1:2], cex = 0.1, col = Aggregation$label, main = "Aggregation", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(spiral[, 1:2], cex = 0.1, col = spiral$label, main = "spiral", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(D31[, 1:2], cex = 0.1, col = D31$label, main = "D31", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(Compound[, 1:2], cex = 0.1, col = Compound$label, main = "Compound", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(pathbased[, 1:2], cex = 0.1, col = pathbased$label, main = "pathbased", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(jain[, 1:2], cex = 0.1, col = jain$label, main = "jain", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(flame[, 1:2], cex = 0.1, col = flame$label, main = "flame", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(R15[, 1:2], cex = 0.1, col = R15$label, main = "R15", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

## ----t48k,fig.height=3,fig.width=3-----------------------------------------------------------------------------
data("t48k")
par(mfrow = c(1, 1), mar = c(0,0,1,0))
plot(t48k, cex = 0.001, main = "t48k", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

## ----toproc,eval=F---------------------------------------------------------------------------------------------
#  library(largeVis)
#  library(clusteringdatasets)
#  library(ggplot2)
#  data(glass)
#  data(wdbc)
#  data(breast)
#  data(yeast)
#  data(wine)
#  data(thyroid)
#  toproc <- list(glass, wdbc, breast, yeast, wine, thyroid)
#  vises <- list()
#  clusters <- list()
#  for (i in 1:length(toproc)) {
#  	dat <- t(scale(as.matrix(toproc[[i]])))
#  	if (ncol(dat) < 50000) vis <- largeVis(dat, K = 50, verbose = TRUE)
#  	else vis <- largeVis(dat, K = 100, verbose = TRUE)
#  	neighbors <- randomProjectionTreeSearch(dat, K = 50)
#  	edges <- buildEdgeMatrix(data = dat, neighbors = neighbors)
#  	print(str(edges))
#  	cluster <- hdbscan(edges = edges,neighbors = neighbors, K = 5, minPts = 10, verbose = TRUE)
#  	vises[[i]] <- vis
#  	clusters[[i]] <- cluster
#  }

## ----highd1----------------------------------------------------------------------------------------------------
library(ggplot2)
load(system.file("extdata/vises.Rda", package = "clusteringdatasets"))
load(system.file("extdata/clusters.Rda", package = "clusteringdatasets"))
names <- c("glass", "wdbc", "breast", "yeast", "wine", "thyroid")
par(mfrow = c(2, 3), mar = c(0,0,1,0))
for (i in 1:length(names)) {
	df <- data.frame(t(vises[[i]]$coords))
	colnames(df) <- c("x", "y")
	df$label <- clusters[[i]]$clusters
	if (length(unique(df$label)) > 1) {
		plot(df[, 1:2], cex = 0.005, col = df$label, main = names[i], xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
	} else {
		plot(df[, 1:2], cex = 0.005, col = df$label, main = names[i], xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
	}
}

## ----kdcupbio,eval=F-------------------------------------------------------------------------------------------
#  data("kddcup04bio")
#  library(largeVis)
#  load("./kddvis.Rda")
#  dat <- t(scale(as.matrix(kddcup04bio)))
#  vis <- largeVis(dat, K = 50, n_trees = 50, tree_threshold = 50, max_iter = 2, verbose = TRUE)

## ----showkdcupbio----------------------------------------------------------------------------------------------
load(system.file("extdata/kdvis.Rda", package = "clusteringdatasets"))
par(mfrow = c(1, 1), mar = c(0,0,1,0))
plot(kdvis[, 1:2], cex = 0.0001, col = df$label, main = "kddcup04bio", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n', 
		 xlim = c(-20, 18), ylim = c(-20, 30))

## ----mopsi-----------------------------------------------------------------------------------------------------
data("mopsifinland")
data("mopsijoensu")
par(mfrow = c(1, 2), mar = c(0,0,1,0))
plot(mopsifinland[, 1:2], cex = 0.01,  main = "mopsifinland", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')
plot(mopsijoensu[, 1:2], cex = 0.05,  main = "mopsifinland", xlab = NULL, ylab = NULL, xaxt='n',yaxt = 'n')

