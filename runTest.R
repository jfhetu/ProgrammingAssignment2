# test cacheMatrix

source("cachematrix.R")
mat1 = read.csv("diagmatrix.csv")
mat2 = read.csv("diagmatrix2.csv")

m1<-makeCacheMatrix(mat1)
m2<-makeCacheMatrix(mat2)

m1$get()
# V1 V2 V3
# 1  1  0  0
# 2  0  2  0
# 3  0  0  3
m1$getInverse()
# NULL

m2$get()
# V1 V2 V3
# 1  1  0  0
# 2  0  2  0
# 3  0  0  3
m2$getInverse()
# NULL

cacheSolve(m1)
# [,1] [,2]      [,3]
# V1    1  0.0 0.0000000
# V2    0  0.5 0.0000000
# V3    0  0.0 0.3333333

cacheSolve(m2)
# [,1] [,2]      [,3]
# V1    2  0.0 0.0000000
# V2    0  2 0.0000000
# V3    0  0.0 2

m1$getInverse()
#[,1] [,2]      [,3]
#V1    1  0.0 0.0000000
#V2    0  0.5 0.0000000
#V3    0  0.0 0.3333333
 

