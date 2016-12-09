Test 
====================================

Swirl based test. Before you start make sure you have required packages by running a script:
```
for(pck in c('swirl', 'base64enc', 'openintro', 'plotrix')){
  if(!require(pck, character.only = TRUE)){
    install.packages(pck)
  }
}
```

To start you should run:
```
library("swirl")
install_course_github("1vbutkus", "Test1")
```


Bug fix:
```{r}
path <- file.path(path.package("swirl"), "Courses", "Test1")
unlink(path, recursive = TRUE, force = TRUE)
install_course_github("1vbutkus", "Test1")
```