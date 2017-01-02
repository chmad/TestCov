trueFct = function(x){TRUE}
ClassA = setClass("ClassA", slot = c(ca = "function"),prototype = prototype(ca = trueFct))

ValidClassA <- function(object){
  test = TRUE
  if(!identical(object@ca,trueFct)) stop("function not equal to prototype")
  print("A")
  return(test)
}
setValidity("ClassA", ValidClassA)

setMethod("initialize","ClassA", function(.Object,...){
  .Object <- callNextMethod()
  .Object
})





