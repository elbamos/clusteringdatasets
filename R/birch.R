#' @title BIRCH clustering datasets.
#'
#' @details Synthetic 2-d data with N=100,000 vectors and M=100 clusters
#' See Zhang et al., "BIRCH: A new data clustering algorithm and its applications", Data Mining and Knowledge Discovery, 1 (2), 141-182, 1997.
#'
#' @format Data frame of x, y coordinates
#'
#' @description Clusters in regular grid structure
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @rdname birch
"birch1"

#' @description Clusters at a sine curve
#' @rdname birch
"birch2"

#'@description Random sized clusters in random locations
#'@rdname birch
"birch3"


#' @title Shape sets
#'
#' @description Various sets of points that form shapes.  Good for testing density-based clustering methods.
#'
#' @format Data frame of x, y coordinates and label
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @rdname shapesets
#' @references A. Gionis, H. Mannila, and P. Tsaparas, Clustering aggregation. ACM Transactions on Knowledge Discovery from Data (TKDD), 2007. 1(1): p. 1-30.
"Aggregation"

#' @rdname shapesets
#' @references C.T. Zahn, Graph-theoretical methods for detecting and describing gestalt clusters. IEEE Transactions on Computers, 1971. 100(1): p. 68-86.
"Compound"

#' @rdname shapesets
#' @references H. Chang and D.Y. Yeung, Robust path-based spectral clustering. Pattern Recognition, 2008. 41(1): p. 191-203.
"pathbased"

#' @rdname shapesets
#' @references H. Chang and D.Y. Yeung, Robust path-based spectral clustering. Pattern Recognition, 2008. 41(1): p. 191-203.
"spiral"

#' @rdname shapesets
#' @references A. Jain and M. Law, Data clustering: A user's dilemma. Lecture Notes in Computer Science, 2005. 3776: p. 1-10.
"jain"

#' @rdname shapesets
#' @references L. Fu and E. Medico, FLAME, a novel fuzzy clustering method for the analysis of DNA microarray data. BMC bioinformatics, 2007. 8(1): p. 3.
"flame"

#' @rdname shapesets
#' @references C.J. Veenman, M.J.T. Reinders, and E. Backer, A maximum variance cluster algorithm. IEEE Trans. Pattern Analysis and Machine Intelligence 2002. 24(9): p. 1273-1280.
"D31"

#' @rdname shapesets
#' @references C.J. Veenman, M.J.T. Reinders, and E. Backer, A maximum variance cluster algorithm. IEEE Trans. Pattern Analysis and Machine Intelligence 2002. 24(9): p. 1273-1280.
"R15"

#' @title S-sets
#' @description Synthetic 2-d data with N=5000 vectors and M=15 Gaussian clusters with different degree of cluster overlapping. Centroids are found in the data object \code{centroids}.
#' @format Data frame of x, y coordinates and labels
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @rdname ssets
#' @references P. Fränti and O. Virmajoki, "Iterative shrinking method for clustering problems", Pattern Recognition, 39 (5), 761-765, May 2006.
"s1"

#' @rdname ssets
"s2"

#' @rdname ssets
"s3"

#' @rdname ssets
"s4"

#' @rdname ssets
"centroids"

#' @title A-sets
#' @description Synthetic 2-d data with varying number of vectors (N) and clusters (M). There are 150 vectors per cluster.
#' @format Data frame of x, y coordinates
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @rdname asets
#' @references I. Kärkkäinen and P. Fränti, "Dynamic local search algorithm for the clustering problem", Research Report A-2002-6
"a1"

#' @rdname asets
"a2"

#' @rdname asets
"a3"

#' @title High-Dim Sets
#' @description Six sets of high-dimensional data, each with 1024 vectors and 16 gaussian clusters.
#' @format Data frames
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @references P. Fränti, O. Virmajoki and V. Hautamäki, "Fast agglomerative clustering using a k-nearest neighbor graph", IEEE Trans. on Pattern Analysis and Machine Intelligence, 28 (11), 1875-1881, November 2006.
#' @rdname highdimsets
"dim032"

#' @rdname highdimsets
"dim064"

#' @rdname highdimsets
"dim128"

#' @rdname highdimsets
"dim256"

#' @rdname highdimsets
"dim512"

#' @rdname highdimsets
"dim1024"

#' @title UCI High Dimensional Datasets
#' @description Various high-dimensional datasets with identifying data removed
#' \itemize{
#' \item{"thyroid"}{N=215,M=2,D=5}
#' \item{"wine"}{N=178,M=3,D=13}
#' \item{"glass"}{N=214,M=7,D=9}
#' \item{"yeast"}{N=1484,M=10,D=8}
#' \item{"breast"}{N=699,M=2,D=9}
#' \item{"wdbc"}{N=569,M=2,D=32}
#' }
#' @source \url{http://archive.ics.uci.edu/ml/}
#' @format Data frames
#' @rdname uci
"thyroid"

#' @rdname uci
"wine"

#' @rdname uci
"glass"

#' @rdname uci
"yeast"

#' @rdname uci
"breast"

#' @rdname uci
"wdbc"

#' @title t48k
#' @description 8000 vectors, 2-D, forming six clusters, with noise.
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @format Data frame
#' @rdname t48k
#' @references G. Karypis, E.H. Han, V. Kumar, CHAMELEON: A hierarchical clustering algorithm using dynamic modeling, IEEE Trans. on Computers, 32 (8), 68-75, 1999.
"t48k"

#' @title KDDCUPO4Bio
#' @description 145751 vectors, 74-D
#' @source \url{http://cs.joensuu.fi/sipu/datasets/}
#' @format Data frame
#' @rdname kddcup04bio
"kddcup04bio"

#' @title Mopsi Data
#' @description User locations, N = 13467 for Finland, N = 6014 for Joensuu
#' @source \url{http://cs.uef.fi/mopsi/data/}
#' @format Data frame
#' @rdname mopsi
"mopsifinland"

#' @rdname mopsi
"mopsijoensu"