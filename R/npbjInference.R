#' Spatial extent inference function passed to npbj function
#'
#' @param stat A vector of statistics for locations where mask!=0
#' @param mask A niftiImage object where mask!=0 corresponds to the elements of stat
#' @param df Degrees of freedom for chi-square statistic.
#' @param cfts A vector of cluster forming thresholds
#' @param kernel A kernel to define neighbors. "diamond" is another sensible option.
#' @importFrom mmand shapeKernel
#' @export
npbj.sei = function(stat, mask, cfts=c(0.01, 0.005), df=1, kernel='box'){
  k = mmand::shapeKernel(3, 3, type=kernel)
  tmp = mask
  tmp = lapply(qchisq(1-cfts, df), function(th){ tmp[ mask==1] = (stat>th); tmp})
  return(sapply(tmp, function(tm) max(c(table(c(mmand::components(tm, k))),0), na.rm=TRUE)))
}
