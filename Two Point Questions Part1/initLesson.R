assign("cars", openintro::cars, envir=globalenv())
assign("mpg.midsize", cars[cars$type=="midsize","mpgCity"], envir=globalenv())

# Path to installed lesson
.lessonpath <- file.path(path.package("swirl"), "Courses", 
                         "Test1", "Two Point Questions Part1")
# Path to dataset
.datapath <- file.path(.lessonpath, "flag.data.txt")
# Load dataset
flags <- read.csv(.datapath, header=FALSE)
# Set column names
colnames(flags) <- c("name", "landmass", "zone", "area", "population",
                     "language", "religion", "bars", "stripes", "colours",
                     "red", "green", "blue", "gold", "white", "black",
                     "orange", "mainhue", "circles", "crosses", "saltires",
                     "quarters", "sunstars", "crescent", "triangle",
                     "icon", "animate", "text", "topleft", "botright")
# Path to dataset info
.infopath <- file.path(.lessonpath, "flag.names.txt")
# Function for user to open info
viewinfo <- function() {
  file.edit(.infopath)
  return(.infopath)
}

# Path to data
.datapath <- file.path(.lessonpath, 'plant-data.txt')
# Read in data
plants <- read.csv(.datapath, strip.white=TRUE, na.strings="")

# Remove annoying columns
.cols2rm <- c('Accepted.Symbol', 'Synonym.Symbol')
plants <- plants[, !(names(plants) %in% .cols2rm)]

# Make names pretty
names(plants) <- c('Scientific_Name', 'Duration', 'Active_Growth_Period',
                   'Foliage_Color', 'pH_Min', 'pH_Max',
                   'Precip_Min', 'Precip_Max',
                   'Shade_Tolerance', 'Temp_Min_F')

my_data <- sample(c(rnorm(1000), rep(NA, 1000)), 100)

x <- rnorm (50)
y <- rnorm (10)

my_char <- c("Programming", "is", "fun!")

flips <- sample(c(0,1), 100, replace = TRUE, prob = c(0.3, 0.7))

swirl_options(swirl_logging = TRUE)