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