#' Make gaussian blobs
#'
#' @param n_samples Number of points
#' @param n_features Dimensionality of dataset
#' @param centers Either the number of centers, or a matrix of the chosen centers
#' @param cluster_std Standard deviation of Gaussian noise. Either one number, or a vector of length equal to the number of centers
#' @param center_box If the centers are being generated, the bounding box within which they will be created. 
#' @param shuffle Ignored; included for compatibility with the Python
#' 
#' @description Imitation of the Python \code{sklearn.datasets.make_blobs} function.
#'
#' @return a \code{list} containining \code{samples}, a matrix of points, and \code{labels}, which identifies the cluster from which each point came.
#' @export
make_blobs <- function(n_samples=100, n_features=2, centers=3, 
                       cluster_std=1.0, center_box=c(-10,10), 
                       shuffle=TRUE) {
  if (is.matrix(centers)) {
    if (ncol(centers) != n_features) stop("Dimensionality of centers must equal number of features.")
  } else {
    centers <- runif(n = n_features * centers, min=center_box[1], max=center_box[2])
    centers <- matrix(centers, ncol=n_features)
  }
  
  if (length(cluster_std) != 1 & length(cluster_std) != nrow(centers)) stop("Cluster_std must be 1 or the same length as the number of clusters")
  
  categories <- sample(nrow(centers), size = n_samples, replace = TRUE)
  
  starting_points <- matrix(
    rnorm(n = n_samples * n_features), 
    ncol = n_features
  )
  
  if (length(cluster_std) == 1) points <- starting_points * cluster_std
  else points <- starting_points * cluster_std[categories]
  
  points <- points + centers[categories, ]
  
  list(
    samples=points, 
    labels=categories
  )
}

#' Make two interleaving half-circles
#'
#' @param n_samples Number of points (will be divided equally among the circles)
#' @param shuffle Whether to randomize the sequence
#' @param noise Standard deviation of Gaussian noise applied to point positions
#'
#' @description Imitation of the Python \code{sklearn.datasets.make_moons} function.
#' @return a \code{list} containining \code{samples}, a matrix of points, and \code{labels}, which identifies the circle from which each point came.
#' @export
make_moons <- function(n_samples=100, shuffle=TRUE, noise=NA) {
  n_samples_out = trunc(n_samples / 2)
  n_samples_in = n_samples - n_samples_out
  
  points <- matrix( c(
    cos(seq(from=0, to=pi, length.out=n_samples_out)),  # Outer circle x
    1 - cos(seq(from=0, to=pi, length.out=n_samples_in)), # Inner circle x
    sin(seq(from=0, to=pi, length.out=n_samples_out)), # Outer circle y
    1 - sin(seq(from=0, to=pi, length.out=n_samples_in)) - 0.5 # Inner circle y 
  ), ncol=2) 
  
  if (! is.na(noise)) points <- points + rnorm(length(points), sd=noise)
  
  labels <- c(rep(1, n_samples_out), rep(2, n_samples_in))
  
  if (! shuffle) {
    list(
      samples=points, 
      labels=labels
    )
  } else {
    order <- sample(x = n_samples, size = n_samples, replace = F)
    list(
      samples=points[order,],
      labels=labels[order]
    )
  }
}
