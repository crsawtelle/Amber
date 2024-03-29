# use pdftools to convert pdf to text data
install.packages("pdftools")
library(pdftools)
install.packages("tidyverse")
library(tidyverse)
install.packages("stringr")
library(stringr)
# used pracma to left justify the text
install.packages("pracma")
library(pracma)
install.packages("devtools")
library(devtools)
install.packages("quanteda")
library(quanteda)
install.packages("readtext")
library(readtext)
library(dplyr)
install.packages("textclean")
library(textclean)

# set working directory
setwd("C:/Users/dutch/OneDrive/Documents/Amber/data_raw")

# read pdf text
chronicles_amber <- pdf_text("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/The_Great_Book_of_Amber.pdf")

# write entire chronicle to .txt file
write(chronicles_amber, "Chronicles_of_Amber.txt")

# read in books using readlines
chronicles_of_amber <- file("Chronicles_of_Amber.txt", "r")
chronicles_of_amber <- readLines(chronicles_of_amber)

# Break each book out into their own .txt file, left justify each line,
# remove blank lines and remove all reference to oceanofpdf.com
# use read_lines {readr} to
nine_princes_in_amber <- read_lines("Chronicles_of_Amber.txt", skip = 31, n_max = 5591)
nine_princes_in_amber <- nine_princes_in_amber %>%
  strjust(justify = "left") %>%
  tolower()
# use grepl {base} for pattern matching '^\\s*$' is used to remove empty lines created mostly from
empty_lines = grepl('^\\s*$', nine_princes_in_amber)
nine_princes_in_amber = nine_princes_in_amber[! empty_lines]
nine_princes_in_amber <- gsub("oceanofpdf.com", " ", nine_princes_in_amber)
nine_princes_in_amber <- gsub("’", "'", nine_princes_in_amber)
nine_princes_in_amber <- gsub("”", "", nine_princes_in_amber)
nine_princes_in_amber <- gsub("“", "", nine_princes_in_amber)

the_guns_of_avalon <- read_lines("Chronicles_of_Amber.txt", skip = 5624, n_max = 6333)
the_guns_of_avalon <- the_guns_of_avalon %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_guns_of_avalon)
the_guns_of_avalon = the_guns_of_avalon[! empty_lines]
the_guns_of_avalon <- gsub("oceanofpdf.com", " ", the_guns_of_avalon)
the_guns_of_avalon <- gsub("’", "'", the_guns_of_avalon)
the_guns_of_avalon <- gsub("”", "", the_guns_of_avalon)
the_guns_of_avalon <- gsub("“", "", the_guns_of_avalon)

sign_of_the_unicorn <- read_lines("Chronicles_of_Amber.txt", skip = 11959, n_max = 5304)
sign_of_the_unicorn <- sign_of_the_unicorn %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', sign_of_the_unicorn)
sign_of_the_unicorn = sign_of_the_unicorn[! empty_lines]
sign_of_the_unicorn <- gsub("oceanofpdf.com", " ", sign_of_the_unicorn)
sign_of_the_unicorn <- gsub("’", "'", sign_of_the_unicorn)
sign_of_the_unicorn <- gsub("”", "", sign_of_the_unicorn)
sign_of_the_unicorn <- gsub("“", "", sign_of_the_unicorn)

the_hand_of_oberon <- read_lines("Chronicles_of_Amber.txt", skip = 17265, n_max = 5338)
the_hand_of_oberon <- the_hand_of_oberon %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_hand_of_oberon)
the_hand_of_oberon = the_hand_of_oberon[! empty_lines]
the_hand_of_oberon <- gsub("oceanofpdf.com", " ", the_hand_of_oberon)
the_hand_of_oberon <- gsub("’", "'", the_hand_of_oberon)
the_hand_of_oberon <- gsub("”", "", the_hand_of_oberon)
the_hand_of_oberon <- gsub("“", "", the_hand_of_oberon)

the_courts_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 22605, n_max = 4547)
the_courts_of_chaos<- the_courts_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_courts_of_chaos)
the_courts_of_chaos = the_courts_of_chaos[! empty_lines]
the_courts_of_chaos <- gsub("oceanofpdf.com", " ", the_courts_of_chaos)
the_courts_of_chaos <- gsub("’", "'", the_courts_of_chaos)
the_courts_of_chaos <- gsub("”", "", the_courts_of_chaos)
the_courts_of_chaos <- gsub("“", "", the_courts_of_chaos)

the_trumps_of_doom <- read_lines("Chronicles_of_Amber.txt", skip = 27154, n_max = 5629)
the_trumps_of_doom <- the_trumps_of_doom %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_trumps_of_doom)
the_trumps_of_doom = the_trumps_of_doom[! empty_lines]
the_trumps_of_doom <- gsub("oceanofpdf.com", " ", the_trumps_of_doom)
the_trumps_of_doom <- gsub("’", "'", the_trumps_of_doom)
the_trumps_of_doom <- gsub("”", "", the_trumps_of_doom)
the_trumps_of_doom <- gsub("“", "", the_trumps_of_doom)

blood_of_amber <- read_lines("Chronicles_of_Amber.txt", skip = 32784, n_max = 6656)
blood_of_amber <- blood_of_amber %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', blood_of_amber)
blood_of_amber = blood_of_amber[! empty_lines]
blood_of_amber <- gsub("oceanofpdf.com", " ", blood_of_amber)
blood_of_amber <- gsub("’", "'", blood_of_amber)
blood_of_amber <- gsub("”", "", blood_of_amber)
blood_of_amber <- gsub("“", "", blood_of_amber)

sign_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 39442, n_max = 6457)
sign_of_chaos <- sign_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', sign_of_chaos)
sign_of_chaos = sign_of_chaos[! empty_lines]
sign_of_chaos <- gsub("oceanofpdf.com", " ", sign_of_chaos)
sign_of_chaos <- gsub("’", "'", sign_of_chaos)
sign_of_chaos <- gsub("”", "", sign_of_chaos)
sign_of_chaos <- gsub("“", "", sign_of_chaos)

knight_of_shadows <- read_lines("Chronicles_of_Amber.txt", skip = 45901, n_max = 6652)
knight_of_shadows <- knight_of_shadows %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', knight_of_shadows)
knight_of_shadows = knight_of_shadows[! empty_lines]
knight_of_shadows <- gsub("oceanofpdf.com", " ", knight_of_shadows)
knight_of_shadows <- gsub("’", "'", knight_of_shadows)
knight_of_shadows <- gsub("”", "", knight_of_shadows)
knight_of_shadows <- gsub("“", "", knight_of_shadows)

prince_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 52555, n_max = 6816)
prince_of_chaos <- prince_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', prince_of_chaos)
prince_of_chaos = prince_of_chaos[! empty_lines]
prince_of_chaos <- gsub("oceanofpdf.com", " ", prince_of_chaos)
prince_of_chaos <- gsub("’", "'", prince_of_chaos)
prince_of_chaos <- gsub("”", "", prince_of_chaos)
prince_of_chaos <- gsub("“", "", prince_of_chaos)

# write each book to .txt file
# write(nine_princes_in_amber, "Nine_Princes_in_Amber.txt")
# write(the_guns_of_avalon, "The_Guns_of_Avalon.txt")
# write(sign_of_the_unicorn, "Sign_of_the_Unicorn.txt")
# write(the_hand_of_oberon, "The_Hand_of_Oberon.txt")
# write(the_courts_of_chaos, "The_Courts_of_Chaos.txt")
# write(the_trumps_of_doom, "The_Trumps_of_Doom.txt")
# write(blood_of_amber, "Blood_of_Amber.txt")
# write(sign_of_chaos, "Sign_of_Chaos.txt")
# write(knight_of_shadows, "Knight_of_Shadows.txt")
# write(prince_of_chaos, "Prince_of_Chaos.txt")

# add data files to package

usethis::use_data(nine_princes_in_amber, overwrite = TRUE)
usethis::use_data(the_guns_of_avalon, overwrite = TRUE)
usethis::use_data(sign_of_the_unicorn, overwrite = TRUE)
usethis::use_data(the_hand_of_oberon, overwrite = TRUE)
usethis::use_data(the_courts_of_chaos, overwrite = TRUE)
usethis::use_data(the_trumps_of_doom, overwrite = TRUE)
usethis::use_data(blood_of_amber, overwrite = TRUE)
usethis::use_data(sign_of_chaos, overwrite = TRUE)
usethis::use_data(knight_of_shadows, overwrite = TRUE)
usethis::use_data(prince_of_chaos, overwrite = TRUE)
