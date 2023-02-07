knitr::opts_chunk$set(
  echo = TRUE,
	eval = FALSE,
	message = FALSE,
	warning = FALSE
)

l1 <- TRUE
l2 <- FALSE

l1 & l2
l1 | l2
l1 + l2
l1 - l2
l2 - l1
l1 * l2
l1 / l2
l2 / l1
l1 > l2
l1 < l2
l1 ^ l2
l2 ^ l1

n1 <- 1
n2 <- 2
d1 <- 1.1
d2 <- 2.1

n1 + n2
n1 - n2
n1 * n2
n1 / n2
n1 > n2
n1 < n2
n1 & n2
n1 | n2
n1 ^ n2

n11 <- 17
n22 <- 3

n11 %/% n22
n11 %% n22

d1 + d2
d1 - d2
d1 * d2
d1 / d2
d1 > d2
d1 < d2
d1 & d2
d1 | d2
d1 ^ d2

d11 <- 10.1
d22 <- 2.3

d11 %/% d22
d11 %% d22

cn1 <- 1 + 1i
cn2 <- 2 - 1i

(1i)^2
(-1i)^2
(1+1i)^2

cn1 + cn2
cn1 - cn2

c1 <- "a"
c2 <- "A"

c1 + c2
c1 - c2
c1 * c2
c1 / c2
c1 > c2
c1 < c2
c1 & c2
c1 | c2
c1 ^ c2

not_available <- NA
not_available

not_available + l1
not_available + n1
not_available + d1
not_available + c1

l1 + not_available
n1 + not_available
d1 + not_available
c1 + not_available

null <- NULL

null + l1
null + n1
null + d1
null + c1

l1 + null
n1 + null
d1 + null
c1 + null

not_a_number <- NaN

not_a_number + l1
not_a_number + n1
not_a_number + d1
not_a_number + c1

l1 + not_a_number
n1 + not_a_number
d1 + not_a_number
c1 + not_a_number

infinite <- Inf

infinite + l1
infinite + n1
infinite + d1
infinite + c1

l1 + infinite
n1 + infinite
d1 + infinite
c1 + infinite

mode(l1)
mode(n1)
mode(d1)
mode(c1)
mode(not_available)
mode(null)
mode(not_a_number)
mode(infinite)

typeof(l1)
typeof(n1)
typeof(d1)
typeof(c1)
typeof(not_available)
typeof(null)
typeof(not_a_number)
typeof(infinite)

class(l1)
class(n1)
class(d1)
class(c1)
class(not_available)
class(null)
class(not_a_number)
class(infinite)

is.logical(l1)
is.numeric(l1)
is.integer(l1)
is.double(l1)
is.character(l1)
is.na(l1)
is.null(l1)
is.nan(l1)
is.infinite(l1)

as.logical(l1)
as.numeric(l1)
as.integer(l1)
as.double(l1)
as.character(l1)
as.null(l1)

int1 <- 5
int2 <- 5L

typeof(int1)
typeof(int2)

1/0
0/0
Inf - Inf
NULL + Inf
NA & NA
Inf & Inf
NULL & NA
NULL & NULL
NaN & NaN

l1
n1
d1
c1
not_available
null
not_a_number
infinite

vector(mode = "logical", length = 5)
vector(mode = "numeric", length = 5)
vector(mode = "character", length = 5)

vec_l <- c(TRUE, FALSE, TRUE, TRUE)
vec_n <- c(1L, 2L, 3L, 4L, 5L)
vec_d <- c(1.1,  2.2,  3.3,  4.4)
vec_c <- c("A", "B", "C")

vec_l[1]
vec_l[-2]
vec_n[c(2,4)]
vec_d[-c(3,5)]
vec_c[1:2]
vec_c[-c(1:2)]
vec_d[vec_d>3]
vec_c[vec_c != "A"]

names(vec_l)

names(vec_l) <- c("Test1", "Test2", "Test3", "Test4")
names(vec_l)
vec_l[2]
vec_l["Test2"]

vec_l + vec_l
vec_n + vec_n
vec_d + vec_d
vec_c + vec_c

vec_l + TRUE

vec_n + 1
vec_n + vec_n
vec_n * 2
vec_n * vec_n

vec_n + c(1,2)
c(1+1, 2+2, 3+1, 4+2, 5+1)

vec_d + c(1,2)
c(1.1+1, 2.2+2, 3.3+1, 4.4+2)

vec_n2 <- c(vec_n, 6) 

vec_n3 <- c(vec_n2, c(7,8,9))

vec_n3[1] <- 10

vec_n3[c(1,2,3)] <- c(10,20,30)

vec_n3[c(7:9)] <- vec_n3[c(7:9)] * 2

vec_n3[-9]

vec_n3[-c(1:3)]

vec_n3[!c(vec_n3 > 10)]

seq(from = 1, to = 5, by = 1)
seq(from = 1, to = 9, by = 3)
seq(0, 10, length.out = 11)
seq(from = 1, to = 9, by = pi)
seq(10)

rep(x = 1, times = 5)
rep(x = c(1,2), times = 5)
rep(x = c(1,2), each = 5)
rep(x = c(1,2,3), length.out = 10)
rep(x = c(1,2), c(3,2))

class(1:3)
class(c(1:3))
class(seq(1, 3, 1))
class(rep(1, 5))

fct_nominal <- factor(x = c("Pass", "Pass", "Fail", "Pass"),
               levels = c("Pass", "Fail"))
fct_nominal

fct_nominal[1] + fct_nominal[3]
fct_nominal[1] > fct_nominal[3]

fct_ordinal <- factor(x = c("A", "C", "C", "B", "D"),
                      levels = c("F", "D", "C", "B", "A"),
                      ordered = T)

fct_ordinal[1] > fct_ordinal[4]
fct_ordinal[1] - fct_ordinal[2]

forcats::fct_relevel(fct_ordinal, c("D", "C", "B", "A", "F"))

matrix(1:12, nrow = 3, ncol = 4)
matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
matrix(1:12, nrow = 3, ncol = 4, 
       dimnames = list(c("r1","r2", "r3"), c("c1", "c2", "c3", "c4")))

mat_n <- matrix(1:12, nrow = 3, ncol = 4)
mat_n[1,]
mat_n[,2]
mat_n[2,2]
mat_n[c(1,2),]
mat_n[c(1,2),c(3,4)]
mat_n[,-c(2,3)]

mat_n_named <- matrix(1:12, nrow = 3, ncol = 4, 
       dimnames = list(c("r1","r2", "r3"), c("c1", "c2", "c3", "c4")))
mat_n_named["r1", ]
mat_n_named[c("r1", "r2"), c(2:4)]

mat_1 <- matrix(1:6, 2, 3)
mat_2 <- matrix(7:12, 2, 3)

mat_1 + mat_2
mat_1 * mat_2
mat_1 %*% mat_2
mat_1 %*% t(mat_2)

cbind(mat_1, c(7, 8))
rbind(mat_1, c(10, 11, 12))

mat_1[2,3] <- 100
mat_1

mat_1[,1] <- c(0, 0)
mat_1

mat_1[, -2]

dim(mat_n)

mat_3 <- c(1:12)
dim(mat_3) <- c(3,4)
mat_3

nrow(mat_n)
ncol(mat_n)

dimnames(mat_3)

rownames(mat_3) <- c("r1", "r2", "r3")

colnames(mat_3) <- c("c1", "c2", "c3", "c4")

dimnames(mat_3) <- list(c(1:3), 
                        c("A", "B", "C", "D"))

mat_n[, 1]
mat_n[, 1, drop = FALSE]

mat_ex <- matrix(1:12, nrow = 3, ncol = 4, byrow = TRUE)
mat_ex[8]

matrix(c(1:3), 4, 4)

rname <- c("r1", "r2", "r3")
cname <- c("c1", "c2", "c3")
dname <- c("d1", "d2", "d3")

array(c(1:3*3*3), dim = c(3,3,3))
array(c(1:3*3*3), dim = c(3,3,3), 
      dimnames = list(rname, cname, dname))

data.frame(
  c_logical = c(TRUE, FALSE, TRUE),
  c_numeric = c(1,2,3),
  c_character = c("A", "B", "C")
)

data.frame(
  c_logical = c(TRUE, FALSE, TRUE),
  c_numeric = c(1,2,3),
  c_character = c("A", "B", "C"),
  stringsAsFactors = TRUE
)

df_score <- data.frame(
  c("Kim", "Lee", "Park"),
  c(92, 45, 75),
  c("A", "F", "C"),
  c(TRUE, FALSE, TRUE)
)

df_score[1,]
df_score[,2]
df_score[c(1,2),]
df_score[,c(2,3)]
df_score[df_score[,2]>60,]

df_score <- data.frame(
  name = c("Kim", "Lee", "Park"),
  score = c(92, 45, 75),
  grade = c("A", "F", "C"),
  pass = c(TRUE, FALSE, TRUE)
)

df_score[1,]
df_score[,2]
df_score[c(1,2),]
df_score[,c(2,3)]
df_score[df_score[,2]>60,]

df_score
df_score$name
df_score[c(1,2), c("name", "score")]
df_score$score[df_score$score>60]
df_score[df_score$pass == FALSE, ]

subset(df_score, score > 60)
subset(df_score, score > 60 & name == "Kim")
subset(df_score, score > 60 & name == "Kim", select = grade)

str(df_score)

list(
  TRUE, 
  c(1,2,3),
  matrix(1:4, 2, 2),
  array(1:2*2*2, dim = c(2,2,2)),
  data.frame(x = c(1,2,3), y = c("A", "B", "C")),
  list(TRUE, 1, "A"),
  c(mean, sd)
)

students <- c("S1", "S2", "S3", "S4")
scores <- c(76, 92, 85, 54)
students_scores <- list()
students_scores[students] <- scores

lst_no_name <- list(
  TRUE, 
  c(1,2,3),
  matrix(1:4, 2, 2),
  array(1:2*2*2, dim = c(2,2,2)),
  data.frame(x = c(1,2,3), y = c("A", "B", "C")),
  list(TRUE, 1, "A"),
  c(mean, sd)
)

lst_no_name[[2]]
lst_no_name[[3]][1,2]
lst_no_name[[5]][1]

lst_named <- list(
  t_logical = TRUE, 
  t_vector = c(1,2,3),
  t_matrix = matrix(1:4, 2, 2),
  t_array = array(1:2*2*2, dim = c(2,2,2)),
  t_dataframe = data.frame(x = c(1,2,3), y = c("A", "B", "C")),
  t_list = list(TRUE, 1, "A"),
  t_function = c(mean, sd)
)

lst_named$t_vector
lst_named$t_matrix[1,2]

lst_1 <- list(name = "Kim", score = 92, grade = "A")

lst_1[4] <- c(TRUE)
lst_1[[5]]<- c(TRUE, FALSE)
lst_1[6]<- c(TRUE, FALSE)
lst_1[7]<- list(c(TRUE, FALSE))
lst_1$age <- 20
lst_1[["year"]] <- 2022
lst_1["sex"] <- "female"
lst_1["birth"] <- c("Jan", "01")
lst_1["birth"] <- list(c("Jan", "01"))
lst_1[12:15] <- list(12, 13, 14, 15)

# 리스트 원소 하나에 하나의 값만 할당할 경우
lst_1[2] <- 97
lst_1[[2]] <- 95
lst_1[["score"]] <- 92
lst_1$score <- 91

# 리스트 원소 하나에 2개 이상 값 할당할 경우
lst_1[[2]]  <- c(85, 92)
lst_1[2]  <- list(c(85, 92))

# 리스트 원소 하나에 2개 이상 값 할당할 경우
lst_1[c(2,3)]  <- list(c(92), c("A"))
lst_1[c(2,3)]  <- list(c(92, 85), c("A"))

lst_1 <- list(name = "Kim", score = 92, grade = "A")

lst_1$score <- NULL
lst_1[c("name", "grade")] <- NULL

lst_named$t_function[[1]](c(1:9))

a <- 3
if(a > 5) {
  print("Over 5")
} else {
  print("Under 5")
}

b <- 80
if(b >= 90) {
  print("A")
} else if(b >= 80) {
  print("B")
} else if(b >= 70) {
  print("C")
} else if(b >= 60) {
  print("D")
} else {
  print("F")
} 

a <- 3
a_over_5 <- ifelse(a > 5, TRUE, FALSE)

b <- 7
b_in_10 <- ifelse(b > 0 & b <= 10, TRUE, FALSE)

sum <- 0
for(i in 1:10) {
  sum <- sum + i
}

for(i in c("A", "B", "C")) {
  print(i)
}

x <- c(1:9)
for(i in c(mean, sd, var)) {
  print(i(x))
}

i <- 1
while(TRUE) {
  print(i)
  i <- i + 1
  if(i>3) break;
}

# 인자값 하나
add_one <- function(x) {
  x + 1
}
add_one(1)

# 인자값 둘
add_n <- function(x, n) {
  x + n
}
add_n(1, 2)

add_n_default <- function(x, n = 0) {
  x + n
}
add_n_default(1)
add_n_default(1,5)

udf_square_n <- function(x, n = 1) {
  if(n == 0) {
    return(1) # early return
  } else if(x == 0) {
    return(0) # early return
  } else {
    x ^ n
  } 
}
udf_square_n(2, 0)
udf_square_n(0, 0)
udf_square_n(0, 1)
udf_square_n(2, 2)

df <- data.frame(
  x = c(1,2,3,4,5,6,7),
  y = c(2,4,8,4,3,9,6)
)
df[df$x > 4 & df$y > 4, ]

subset(df, x>4 & y>4, select = y)

mat1 <- matrix(1:12, 3, 4)
apply(X = mat1, MARGIN = 1, max)
apply(X = mat1, MARGIN = 2, max)
apply(X = mat1, MARGIN = 1, 
      FUN = function(x) { max(x) + 3 })

tapply(X = 1:12, INDEX = factor(rep(c("A", "B", "C"), 4)), mean)

mat2 <- cbind(X = 1:12,
              INDEX = factor(rep(c("A", "B", "C"), 4)))
mean(mat2[mat2[,"INDEX"] == 1, "X"])
mean(mat2[mat2[,"INDEX"] == 2, "X"])
mean(mat2[mat2[,"INDEX"] == 3, "X"])

aggregate(x = mat2, by = list(INDEX), mean)

x <- rep(1, 10)
for(i in 1:10) {
  if(i%%2 == 1) {
    x[i] <- x[i] + 1
  }
}

x <- rep(1, 10)
for(i in 1:10) {
  x[i] <- ifelse(i%%2 == 1, x[i] + 1, x[i]) 
}

x <- rep(1, 10)
x + c(1,0)

penguins <- palmerpenguins::penguins

plot(0,0)

plot(0,0,
     type = "n")

plot(0,0,
     type = "n",
     xlim = c(0, 20), ylim = c(0, 10))

plot(0,0,
     type = "n",
     xlim = c(0, 20), ylim = c(0, 10),
     main = "Blank plot", xlab = "X Axis", ylab = "Y Axis")

plot(0,0,
     type = "n",
     xlim = c(0, 20), ylim = c(0, 10),
     main = "Blank plot", xlab = "X Axis", ylab = "Y Axis")
points(x = c(3,5,7,11,13,17),
       y = c(1:6), 
       pch = 19)
abline(v = 0, h = 0, lty = 1)
abline(a = 0, b = .4, lty = 2, col = "blue")

plot(penguins$bill_length_mm, penguins$bill_depth_mm,
     xlim = range(penguins$bill_length_mm, na.rm = T), 
     ylim = range(penguins$bill_depth_mm, na.rm = T),
     main = "펭귄 종별 부리 깊이와 길이", 
     xlab = "부리 길이", ylab = "부리 깊이",
     pch = 19,
     col = c("red", "green", "blue")[penguins$species])
with(penguins,
  plot(bill_length_mm, bill_depth_mm,
     xlim = range(bill_length_mm, na.rm = T), 
     ylim = range(bill_depth_mm, na.rm = T),
     main = "펭귄 종별 부리 깊이와 길이", 
     xlab = "부리 길이", ylab = "부리 깊이",
     pch = c(17:19)[species],
     col = c("red", "green", "blue")[species],
     cex.main = 1.5, cex.axis = .75)
)

with(penguins,
  plot(bill_length_mm, bill_depth_mm,
     xlim = range(bill_length_mm, na.rm = T), 
     ylim = range(bill_depth_mm, na.rm = T),
     main = "펭귄 종별 부리 깊이와 길이", 
     xlab = "부리 길이", ylab = "부리 깊이",
     pch = c(17:19)[species],
     col = c("red", "green", "blue")[species],
     cex.main = 1.5, cex.axis = .75)
)

legend(55, 15, 
       legend = c("Adelie", "Chinstrap", "Gentoo"),
       col = c("red", "green", "blue"),
       pch = 17:19,
       bty = "n"
)

text(58, 21.5, labels = c("※ Dataset: penguins"), cex = .7)

mean_points <- aggregate(
  cbind(x = bill_length_mm, y = bill_depth_mm) ~ species,
  data = penguins, 
  mean
)

{
  with(penguins,
    plot(bill_length_mm, bill_depth_mm,
       xlim = range(bill_length_mm, na.rm = T), 
       ylim = range(bill_depth_mm, na.rm = T),
       main = "펭귄 종별 부리 깊이와 길이", 
       xlab = "부리 길이", ylab = "부리 깊이",
       pch = c(17:19)[species],
       col = c("#99FFFF", "#FF99FF", "#FFFF99")[species],
       cex.main = 1.5, cex.axis = .75)
  )
  
  legend(55, 15, 
         legend = c("Adelie", "Chinstrap", "Gentoo"),
         col = c("#99FFFF", "#FF99FF", "#FFFF99"),
         pch = 17:19,
         bty = "n"
  )
  
  text(58, 21.5, labels = c("※ Dataset: penguins"), cex = .7)
  
  text(mean_points$x, mean_points$y, "*", cex = 2, col = "black")
  text(mean_points$x, mean_points$y, mean_points$species, 
       adj = c(0.1, 1.5), col = "black")
}
