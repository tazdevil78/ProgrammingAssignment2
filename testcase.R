# Test Case
mtrx<-matrix(c(4, 0, 0, 0, 2, 0, 0, 0, 1), 3, 3)
mc <- makeCacheMatrix(mtrx)
mc$get()
mc$getInv()
cacheSolve(mc)
mc$getInv()