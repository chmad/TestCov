context("Definition")

# Test for classA ---------------------------------------------------------
myA = new("ClassA")

#Tests for ClassB --------------------------------------------------------
myB = new("ClassB", b = 1, objA = myA)

test_that("ValidClassB throws an error",{
    myBTemp = myB
    myBTemp@b = -1
    expect_error(ValidClassB(myBTemp), "cant be negative")

})








