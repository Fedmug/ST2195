
<!-- rnb-text-begin -->

---
title: "R Notebook"
output: html_notebook
---

# Vectors

## Atomic vectors

Atomic vectors are usually created with `c()`:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZGJsX3ZhciA8LSBjKDEsIDIuNSwgNC41KVxuIyBXaXRoIHRoZSBMIHN1ZmZpeCwgeW91IGdldCBhbiBpbnRlZ2VyIHJhdGhlciB0aGFuIGEgZG91YmxlIFxuaW50X3ZhciA8LSBjKDFMLCA2TCwgMTBMKVxuIyBVc2UgVFJVRSBhbmQgRkFMU0UgKG9yIFQgYW5kIEYpIHRvIGNyZWF0ZSBsb2dpY2FsIHZlY3RvcnMgXG5sb2dfdmFyIDwtIGMoVFJVRSwgRkFMU0UsIFQsIEYpXG5jaHJfdmFyIDwtIGMoXCJ0aGVzZSBhcmVcIiwgXCJzb21lIHN0cmluZ3NcIilcbmBgYCJ9 -->

```r
dbl_var <- c(1, 2.5, 4.5)
# With the L suffix, you get an integer rather than a double 
int_var <- c(1L, 6L, 10L)
# Use TRUE and FALSE (or T and F) to create logical vectors 
log_var <- c(TRUE, FALSE, T, F)
chr_var <- c("these are", "some strings")
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Nested `c()`s are ignored:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYygxLCBjKDIsIGMoMywgNCkpKVxuYGBgIn0= -->

```r
c(1, c(2, c(3, 4)))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDEgMiAzIDRcbiJ9 -->

```
[1] 1 2 3 4
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYygxLCAyLCAzLCA0KSBcbmBgYCJ9 -->

```r
c(1, 2, 3, 4) 
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDEgMiAzIDRcbiJ9 -->

```
[1] 1 2 3 4
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Types and tests

Given a vector, you can determine its type with `typeof()`, or check if it’s a specific type with an `is` function:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaW50X3ZhciA8LSBjKDFMLCA2TCwgMTBMKVxudHlwZW9mKGludF92YXIpXG5gYGAifQ== -->

```r
int_var <- c(1L, 6L, 10L)
typeof(int_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiaW50ZWdlclwiXG4ifQ== -->

```
[1] "integer"
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuaW50ZWdlcihpbnRfdmFyKVxuYGBgIn0= -->

```r
is.integer(int_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuYXRvbWljKGludF92YXIpXG5gYGAifQ== -->

```r
is.atomic(int_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMubnVtZXJpYyhpbnRfdmFyKVxuYGBgIn0= -->

```r
is.numeric(int_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZGJsX3ZhciA8LSBjKDEsIDIuNSwgNC41KVxudHlwZW9mKGRibF92YXIpXG5gYGAifQ== -->

```r
dbl_var <- c(1, 2.5, 4.5)
typeof(dbl_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiZG91YmxlXCJcbiJ9 -->

```
[1] "double"
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuZG91YmxlKGRibF92YXIpXG5gYGAifQ== -->

```r
is.double(dbl_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMuYXRvbWljKGRibF92YXIpXG5gYGAifQ== -->

```r
is.atomic(dbl_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMubnVtZXJpYyhkYmxfdmFyKVxuYGBgIn0= -->

```r
is.numeric(dbl_var)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Coersion


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3RyKGMoXCJhXCIsIDEpKVxuYGBgIn0= -->

```r
str(c("a", 1))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiIGNociBbMToyXSBcImFcIiBcIjFcIlxuIn0= -->

```
 chr [1:2] "a" "1"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


When a logical vector is coerced to an integer or double, TRUE becomes 1 and FALSE becomes 0

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueCA8LSBjKEZBTFNFLCBGQUxTRSwgVFJVRSkgXG5hcy5udW1lcmljKHgpXG5gYGAifQ== -->

```r
x <- c(FALSE, FALSE, TRUE) 
as.numeric(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDAgMCAxXG4ifQ== -->

```
[1] 0 0 1
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3VtKHgpXG5gYGAifQ== -->

```r
sum(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDFcbiJ9 -->

```
[1] 1
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubWVhbih4KVxuYGBgIn0= -->

```r
mean(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDAuMzMzMzMzM1xuIn0= -->

```
[1] 0.3333333
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Implicit coersion:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc2luKHgpXG5gYGAifQ== -->

```r
sin(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDAuMDAwMDAwIDAuMDAwMDAwIDAuODQxNDcxXG4ifQ== -->

```
[1] 0.000000 0.000000 0.841471
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxudHlwZW9mKHNpbih4KSlcbmBgYCJ9 -->

```r
typeof(sin(x))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiZG91YmxlXCJcbiJ9 -->

```
[1] "double"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Lists

Lists are different from atomic vectors because their elements can be of any type, including lists:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueCA8LSBsaXN0KDE6MywgXCJhXCIsIGMoVFJVRSwgRkFMU0UsIFRSVUUpLCBjKDIuMywgNS45KSkgXG5zdHIoeClcbmBgYCJ9 -->

```r
x <- list(1:3, "a", c(TRUE, FALSE, TRUE), c(2.3, 5.9)) 
str(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTGlzdCBvZiA0XG4gJCA6IGludCBbMTozXSAxIDIgM1xuICQgOiBjaHIgXCJhXCJcbiAkIDogbG9naSBbMTozXSBUUlVFIEZBTFNFIFRSVUVcbiAkIDogbnVtIFsxOjJdIDIuMyA1LjlcbiJ9 -->

```
List of 4
 $ : int [1:3] 1 2 3
 $ : chr "a"
 $ : logi [1:3] TRUE FALSE TRUE
 $ : num [1:2] 2.3 5.9
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


A list can contain other lists:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueCA8LSBsaXN0KGxpc3QobGlzdChsaXN0KCkpKSkgXG5zdHIoeClcbmBgYCJ9 -->

```r
x <- list(list(list(list()))) 
str(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTGlzdCBvZiAxXG4gJCA6TGlzdCBvZiAxXG4gIC4uJCA6TGlzdCBvZiAxXG4gIC4uIC4uJCA6IGxpc3QoKVxuIn0= -->

```
List of 1
 $ :List of 1
  ..$ :List of 1
  .. ..$ : list()
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMucmVjdXJzaXZlKHgpXG5gYGAifQ== -->

```r
is.recursive(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


A data frame is a list:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3RyKG10Y2FycylcbmBgYCJ9 -->

```r
str(mtcars)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiJ2RhdGEuZnJhbWUnOlx0MzIgb2JzLiBvZiAgMTEgdmFyaWFibGVzOlxuICQgbXBnIDogbnVtICAyMSAyMSAyMi44IDIxLjQgMTguNyAxOC4xIDE0LjMgMjQuNCAyMi44IDE5LjIgLi4uXG4gJCBjeWwgOiBudW0gIDYgNiA0IDYgOCA2IDggNCA0IDYgLi4uXG4gJCBkaXNwOiBudW0gIDE2MCAxNjAgMTA4IDI1OCAzNjAgLi4uXG4gJCBocCAgOiBudW0gIDExMCAxMTAgOTMgMTEwIDE3NSAxMDUgMjQ1IDYyIDk1IDEyMyAuLi5cbiAkIGRyYXQ6IG51bSAgMy45IDMuOSAzLjg1IDMuMDggMy4xNSAyLjc2IDMuMjEgMy42OSAzLjkyIDMuOTIgLi4uXG4gJCB3dCAgOiBudW0gIDIuNjIgMi44OCAyLjMyIDMuMjEgMy40NCAuLi5cbiAkIHFzZWM6IG51bSAgMTYuNSAxNyAxOC42IDE5LjQgMTcgLi4uXG4gJCB2cyAgOiBudW0gIDAgMCAxIDEgMCAxIDAgMSAxIDEgLi4uXG4gJCBhbSAgOiBudW0gIDEgMSAxIDAgMCAwIDAgMCAwIDAgLi4uXG4gJCBnZWFyOiBudW0gIDQgNCA0IDMgMyAzIDMgNCA0IDQgLi4uXG4gJCBjYXJiOiBudW0gIDQgNCAxIDEgMiAxIDQgMiAyIDQgLi4uXG4ifQ== -->

```
'data.frame':	32 obs. of  11 variables:
 $ mpg : num  21 21 22.8 21.4 18.7 18.1 14.3 24.4 22.8 19.2 ...
 $ cyl : num  6 6 4 6 8 6 8 4 4 6 ...
 $ disp: num  160 160 108 258 360 ...
 $ hp  : num  110 110 93 110 175 105 245 62 95 123 ...
 $ drat: num  3.9 3.9 3.85 3.08 3.15 2.76 3.21 3.69 3.92 3.92 ...
 $ wt  : num  2.62 2.88 2.32 3.21 3.44 ...
 $ qsec: num  16.5 17 18.6 19.4 17 ...
 $ vs  : num  0 0 1 1 0 1 0 1 1 1 ...
 $ am  : num  1 1 1 0 0 0 0 0 0 0 ...
 $ gear: num  4 4 4 3 3 3 3 4 4 4 ...
 $ carb: num  4 4 1 1 2 1 4 2 2 4 ...
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuaXMubGlzdChtdGNhcnMpXG5gYGAifQ== -->

```r
is.list(mtcars)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFRSVUVcbiJ9 -->

```
[1] TRUE
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Attributes

All objects can have arbitrary additional attributes, used to store meta- data about the object. Attributes can be thought of as a named list (with unique names). Attributes can be accessed individually with attr() or all at once (as a list) with attributes().


<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueSA8LSAxOjEwXG5zdHIoYXR0cmlidXRlcyh5KSlcbmBgYCJ9 -->

```r
y <- 1:10
str(attributes(y))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiIE5VTExcbiJ9 -->

```
 NULL
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYXR0cih5LCBcIm15X2F0dHJpYnV0ZVwiKSA8LSBcIlRoaXMgaXMgYSB2ZWN0b3JcIiBcbmF0dHIoeSwgXCJteV9hdHRyaWJ1dGVcIilcbmBgYCJ9 -->

```r
attr(y, "my_attribute") <- "This is a vector" 
attr(y, "my_attribute")
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiVGhpcyBpcyBhIHZlY3RvclwiXG4ifQ== -->

```
[1] "This is a vector"
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3RyKGF0dHJpYnV0ZXMoeSkpXG5gYGAifQ== -->

```r
str(attributes(y))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTGlzdCBvZiAxXG4gJCBteV9hdHRyaWJ1dGU6IGNociBcIlRoaXMgaXMgYSB2ZWN0b3JcIlxuIn0= -->

```
List of 1
 $ my_attribute: chr "This is a vector"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


The `structure()` function returns a new object with modified attributes:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc3RydWN0dXJlKDE6MTAsIG15X2F0dHJpYnV0ZSA9IFwiVGhpcyBpcyBhIHZlY3RvclwiKVxuYGBgIn0= -->

```r
structure(1:10, my_attribute = "This is a vector")
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiIFsxXSAgMSAgMiAgMyAgNCAgNSAgNiAgNyAgOCAgOSAxMFxuYXR0cigsXCJteV9hdHRyaWJ1dGVcIilcblsxXSBcIlRoaXMgaXMgYSB2ZWN0b3JcIlxuIn0= -->

```
 [1]  1  2  3  4  5  6  7  8  9 10
attr(,"my_attribute")
[1] "This is a vector"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


By default, most attributes are lost when modifying a vector:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIGF0dHJpYnV0ZXMoeVsxXSlcbmBgYCJ9 -->

```r
 attributes(y[1])
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTlVMTFxuIn0= -->

```
NULL
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuIGF0dHJpYnV0ZXMoc3VtKHkpKVxuYGBgIn0= -->

```r
 attributes(sum(y))
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiTlVMTFxuIn0= -->

```
NULL
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


### Names

Three ways to create names:

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueCA8LSBjKGE9MSxiPTIsYz0zKVxueSA8LSAxOjM7IG5hbWVzKHkpIDwtIGMoXCJhXCIsIFwiYlwiLCBcImNcIilcbnogPC0gc2V0TmFtZXMoMTozLCBjKFwiYVwiLCBcImJcIiwgXCJjXCIpKVxubmFtZXMoeilcbmBgYCJ9 -->

```r
x <- c(a=1,b=2,c=3)
y <- 1:3; names(y) <- c("a", "b", "c")
z <- setNames(1:3, c("a", "b", "c"))
names(z)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiYVwiIFwiYlwiIFwiY1wiXG4ifQ== -->

```
[1] "a" "b" "c"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


## Factors

A factor is a vector that can contain only predefined values, and is used to store categorical data. Note that factors are integers, not strings.

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxueCA8LSBmYWN0b3IoYyhcImFcIiwgXCJiXCIsIFwiYlwiLCBcImFcIikpXG54XG5gYGAifQ== -->

```r
x <- factor(c("a", "b", "b", "a"))
x
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIGEgYiBiIGFcbkxldmVsczogYSBiXG4ifQ== -->

```
[1] a b b a
Levels: a b
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuY2xhc3MoeClcbmBgYCJ9 -->

```r
class(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiZmFjdG9yXCJcbiJ9 -->

```
[1] "factor"
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGV2ZWxzKHgpXG5gYGAifQ== -->

```r
levels(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiYVwiIFwiYlwiXG4ifQ== -->

```
[1] "a" "b"
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxudHlwZW9mKHgpXG5gYGAifQ== -->

```r
typeof(x)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIFwiaW50ZWdlclwiXG4ifQ== -->

```
[1] "integer"
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


Factors are useful when you know the possible values a variable may take, even if you don’t see all values in a given dataset.

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuc2V4X2NoYXIgPC0gYyhcIm1cIiwgXCJtXCIsIFwibVwiKVxuc2V4X2ZhY3RvciA8LSBmYWN0b3Ioc2V4X2NoYXIsIGxldmVscyA9IGMoXCJtXCIsIFwiZlwiKSlcbnRhYmxlKHNleF9mYWN0b3IpXG5gYGAifQ== -->

```r
sex_char <- c("m", "m", "m")
sex_factor <- factor(sex_char, levels = c("m", "f"))
table(sex_factor)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoic2V4X2ZhY3RvclxubSBmIFxuMyAwIFxuIn0= -->

```
sex_factor
m f 
3 0 
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


# Matrices and Arrays

Matrices and arrays are created with matrix() and array(), or by using the assignment form of dim():

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuYSA8LSBtYXRyaXgoMTo2LCBuY29sID0gMywgbnJvdyA9IDIpXG5iIDwtIGFycmF5KDE6MTIsIGMoMiwgMywgMikpXG5jPC0xOjZcbmRpbShjKSA8LSBjKDMsIDIpIFxuY1xuYGBgIn0= -->

```r
a <- matrix(1:6, ncol = 3, nrow = 2)
b <- array(1:12, c(2, 3, 2))
c<-1:6
dim(c) <- c(3, 2) 
c
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICBbLDFdIFssMl1cblsxLF0gICAgMSAgICA0XG5bMixdICAgIDIgICAgNVxuWzMsXSAgICAzICAgIDZcbiJ9 -->

```
     [,1] [,2]
[1,]    1    4
[2,]    2    5
[3,]    3    6
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZGltKGMpIDwtIGMoMiwgMylcbmNcbmBgYCJ9 -->

```r
dim(c) <- c(2, 3)
c
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICAgICBbLDFdIFssMl0gWywzXVxuWzEsXSAgICAxICAgIDMgICAgNVxuWzIsXSAgICAyICAgIDQgICAgNlxuIn0= -->

```
     [,1] [,2] [,3]
[1,]    1    3    5
[2,]    2    4    6
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


`length()` generalizes to `nrow()` and `ncol()` for matrices, and `dim()` for arrays.

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGVuZ3RoKGEpXG5gYGAifQ== -->

```r
length(a)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDZcbiJ9 -->

```
[1] 6
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubnJvdyhhKVxuYGBgIn0= -->

```r
nrow(a)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDJcbiJ9 -->

```
[1] 2
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubmNvbChhKVxuYGBgIn0= -->

```r
ncol(a)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDNcbiJ9 -->

```
[1] 3
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxubGVuZ3RoKGIpXG5gYGAifQ== -->

```r
length(b)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDEyXG4ifQ== -->

```
[1] 12
```



<!-- rnb-output-end -->

<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZGltKGIpXG5gYGAifQ== -->

```r
dim(b)
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiWzFdIDIgMyAyXG4ifQ== -->

```
[1] 2 3 2
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->


`names()` generalizes to `rownames()` and `colnames()` for matrices, and
`dimnames()`, a list of character vectors, for arrays.

<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxucm93bmFtZXMoYSkgPC0gYyhcIkFcIiwgXCJCXCIpIFxuY29sbmFtZXMoYSkgPC0gYyhcImFcIiwgXCJiXCIsIFwiY1wiKVxuYVxuYGBgIn0= -->

```r
rownames(a) <- c("A", "B") 
colnames(a) <- c("a", "b", "c")
a
```

<!-- rnb-source-end -->

<!-- rnb-output-begin eyJkYXRhIjoiICBhIGIgY1xuQSAxIDMgNVxuQiAyIDQgNlxuIn0= -->

```
  a b c
A 1 3 5
B 2 4 6
```



<!-- rnb-output-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->



<!-- rnb-text-end -->


<!-- rnb-chunk-begin -->


<!-- rnb-source-begin eyJkYXRhIjoiYGBgclxuZGltbmFtZXMoYikgPC0gbGlzdChjKFwib25lXCIsIFwidHdvXCIpLCBjKFwiYVwiLCBcImJcIiwgXCJjXCIpLCBjKFwiQVwiLCBcIkJcIikpXG5iXG5gYGAifQ== -->

```r
dimnames(b) <- list(c("one", "two"), c("a", "b", "c"), c("A", "B"))
b
```

<!-- rnb-source-end -->

<!-- rnb-chunk-end -->


<!-- rnb-text-begin -->




<!-- rnb-text-end -->

