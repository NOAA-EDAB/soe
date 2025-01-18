files <- list.files(pattern = "[.]Rmd$")
files<-files[-c(1:12,17)]
for (f in files) rmarkdown::render(f)
