# test cacheMatrix

source("cachematrix.R")
mat = read.csv("diagmatrix.csv")
m<-makeCacheMatrix(mat)
m$get()
# V1 V2 V3
# 1  1  0  0
# 2  0  2  0
# 3  0  0  3
m$getInverse()
# NULL

cacheSolve(m)
# [,1] [,2]      [,3]
# V1    1  0.0 0.0000000
# V2    0  0.5 0.0000000
# V3    0  0.0 0.3333333

m$getInverse()
#[,1] [,2]      [,3]
#V1    1  0.0 0.0000000
#V2    0  0.5 0.0000000
#V3    0  0.0 0.3333333
 