install.packages('R.utils')


library(R.utils)


list.files(path = '01 R Course/')
list.files(path = '01 R Course/', pattern = 'gz')
list.files(path = '01 R Course/', pattern = 'gz', full.names = T)

myzipfile <- list.files(path = '01 R Course/', pattern = 'gz', full.names = T)
myzipfile[1]


##THIS IS HELLA DANGEROUS - gunzip deletes the original file
R.utils::gunzip(myzipfile[1])

## Use this instead (you are turning remove original to False)
R.utils::gunzip(myzipfile[1], remove=F)

myzipfile


for(i in myzipfile) {
  print(i)
  gunzip(i, remove=F)
}









