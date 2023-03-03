install.packages("pdftools")
library(pdftools)
install.packages("tidyverse")
library(tidyverse)
install.packages("stringr")
library(stringr)
install.packages("pracma")
library(pracma)
install.packages("devtools")
library(devtools)
install.packages("quanteda")
library(quanteda)
install.packages("readtext")
library(readtext)
library(dplyr)

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
nine_princes_in_amber <- read_lines("Chronicles_of_Amber.txt", skip = 31, n_max = 5591)
nine_princes_in_amber <- nine_princes_in_amber %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', nine_princes_in_amber)
nine_princes_in_amber = nine_princes_in_amber[! empty_lines]
nine_princes_in_amber <- gsub("oceanofpdf.com", " ", nine_princes_in_amber)

the_guns_of_avalon <- read_lines("Chronicles_of_Amber.txt", skip = 5624, n_max = 6333)
the_guns_of_avalon <- the_guns_of_avalon %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_guns_of_avalon)
the_guns_of_avalon = the_guns_of_avalon[! empty_lines]
the_guns_of_avalon <- gsub("oceanofpdf.com", " ", the_guns_of_avalon)

sign_of_the_unicorn <- read_lines("Chronicles_of_Amber.txt", skip = 11959, n_max = 5304)
sign_of_the_unicorn <- sign_of_the_unicorn %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', sign_of_the_unicorn)
sign_of_the_unicorn = sign_of_the_unicorn[! empty_lines]
sign_of_the_unicorn <- gsub("oceanofpdf.com", " ", sign_of_the_unicorn)

the_hand_of_oberon <- read_lines("Chronicles_of_Amber.txt", skip = 17265, n_max = 5338)
the_hand_of_oberon <- the_hand_of_oberon %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_hand_of_oberon)
the_hand_of_oberon = the_hand_of_oberon[! empty_lines]
the_hand_of_oberon <- gsub("oceanofpdf.com", " ", the_hand_of_oberon)

the_courts_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 22605, n_max = 4547)
the_courts_of_chaos<- the_courts_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_courts_of_chaos)
the_courts_of_chaos = the_courts_of_chaos[! empty_lines]
the_courts_of_chaos <- gsub("oceanofpdf.com", " ", the_courts_of_chaos)

the_trumps_of_doom <- read_lines("Chronicles_of_Amber.txt", skip = 27154, n_max = 5629)
the_trumps_of_doom <- the_trumps_of_doom %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', the_trumps_of_doom)
the_trumps_of_doom = the_trumps_of_doom[! empty_lines]
the_trumps_of_doom <- gsub("oceanofpdf.com", " ", the_trumps_of_doom)

blood_of_amber <- read_lines("Chronicles_of_Amber.txt", skip = 32784, n_max = 6656)
blood_of_amber <- blood_of_amber %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', blood_of_amber)
blood_of_amber = blood_of_amber[! empty_lines]
blood_of_amber <- gsub("oceanofpdf.com", " ", blood_of_amber)

sign_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 39442, n_max = 6457)
sign_of_chaos <- sign_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', sign_of_chaos)
sign_of_chaos = sign_of_chaos[! empty_lines]
sign_of_chaos <- gsub("oceanofpdf.com", " ", sign_of_chaos)

knight_of_shadows <- read_lines("Chronicles_of_Amber.txt", skip = 45901, n_max = 6652)
knight_of_shadows <- knight_of_shadows %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', knight_of_shadows)
knight_of_shadows = knight_of_shadows[! empty_lines]
knight_of_shadows <- gsub("oceanofpdf.com", " ", knight_of_shadows)

prince_of_chaos <- read_lines("Chronicles_of_Amber.txt", skip = 52555, n_max = 6816)
prince_of_chaos <- prince_of_chaos %>%
  strjust(justify = "left") %>%
  tolower()
empty_lines = grepl('^\\s*$', prince_of_chaos)
prince_of_chaos = prince_of_chaos[! empty_lines]
prince_of_chaos <- gsub("oceanofpdf.com", " ", prince_of_chaos)

# write each book to .txt file
write(nine_princes_in_amber, "Nine_Princes_in_Amber.txt")
write(the_guns_of_avalon, "The_Guns_of_Avalon.txt")
write(sign_of_the_unicorn, "Sign_of_the_Unicorn.txt")
write(the_hand_of_oberon, "The_Hand_of_Oberon.txt")
write(the_courts_of_chaos, "The_Courts_of_Chaos.txt")
write(the_trumps_of_doom, "The_Trumps_of_Doom.txt")
write(blood_of_amber, "Blood_of_Amber.txt")
write(sign_of_chaos, "Sign_of_Chaos.txt")
write(knight_of_shadows, "Knight_of_Shadows.txt")
write(prince_of_chaos, "Prince_of_Chaos.txt")




# load and read the text files and create a new column for the name of the book
# rename "value" column name to "text" and delete the first three lines that
# include the title and small discription of the book
nine_princes_in_amber <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Nine_Princes_in_Amber.txt", "r")
nine_princes_in_amber <- readLines(nine_princes_in_amber)
nine_princes_in_amber <- as_tibble(nine_princes_in_amber) %>%
  mutate(book = nine_princes_in_amber["book"] <- "Nine Princes in Amber") %>%
  ungroup()
colnames(nine_princes_in_amber)[colnames(nine_princes_in_amber) == "value"] <- "text"
nine_princes_in_amber <- nine_princes_in_amber[-c(1:3),]

the_guns_of_avalon <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/The_Guns_of_Avalon.txt", "r")
the_guns_of_avalon <- readLines(the_guns_of_avalon)
the_guns_of_avalon <- as_tibble(the_guns_of_avalon) %>%
  mutate(book = the_guns_of_avalon["book"] <- "The Guns of Avalon") %>%
  ungroup()
colnames(the_guns_of_avalon)[colnames(the_guns_of_avalon) == "value"] <- "text"
the_guns_of_avalon <- the_guns_of_avalon[-c(1:3),]

sign_of_the_unicorn <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Sign_of_the_Unicorn.txt", "r")
sign_of_the_unicorn <- readLines(sign_of_the_unicorn)
sign_of_the_unicorn <- as_tibble(sign_of_the_unicorn) %>%
  mutate(book = sign_of_the_unicorn["book"] <- "Sign of the Unicorn") %>%
  ungroup()
colnames(sign_of_the_unicorn)[colnames(sign_of_the_unicorn) == "value"] <- "text"
sign_of_the_unicorn <- sign_of_the_unicorn[-c(1:3),]

the_hand_of_oberon <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/The_Hand_of_Oberon.txt", "r")
the_hand_of_oberon <- readLines(the_hand_of_oberon)
the_hand_of_oberon <- as_tibble(the_hand_of_oberon) %>%
  mutate(book = the_hand_of_oberon["book"] <- "The Hand of Oberon") %>%
  ungroup()
colnames(the_hand_of_oberon)[colnames(the_hand_of_oberon) == "value"] <- "text"
the_hand_of_oberon <- the_hand_of_oberon[-c(1:3),]

the_courts_of_chaos <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/The_Courts_of_Chaos.txt", "r")
the_courts_of_chaos <- readLines(the_courts_of_chaos)
the_courts_of_chaos <- as_tibble(the_courts_of_chaos) %>%
  mutate(book = the_courts_of_chaos["book"] <- "The Courts of Chaos") %>%
  ungroup()
colnames(the_courts_of_chaos)[colnames(the_courts_of_chaos) == "value"] <- "text"
the_courts_of_chaos <- the_courts_of_chaos[-c(1:3),]

the_trumps_of_doom <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/The_Trumps_of_Doom.txt", "r")
the_trumps_of_doom <- readLines(the_trumps_of_doom)
the_trumps_of_doom <- as_tibble(the_trumps_of_doom) %>%
  mutate(book = the_trumps_of_doom["book"] <- "Trumps of Doom") %>%
  ungroup()
colnames(the_trumps_of_doom)[colnames(the_trumps_of_doom) == "value"] <- "text"
the_trumps_of_doom <- the_trumps_of_doom[-c(1:3),]

blood_of_amber <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Blood_of_Amber.txt", "r")
blood_of_amber <- readLines(blood_of_amber)
blood_of_amber <- as_tibble(blood_of_amber) %>%
  mutate(book = blood_of_amber["book"] <- "Blood of Amber") %>%
  ungroup()
colnames(blood_of_amber)[colnames(blood_of_amber) == "value"] <- "text"
blood_of_amber <- blood_of_amber[-c(1:3),]

sign_of_chaos <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Sign_of_Chaos.txt", "r")
sign_of_chaos <- readLines(sign_of_chaos)
sign_of_chaos <- as_tibble(sign_of_chaos) %>%
  mutate(book = sign_of_chaos["book"] <- "Sign of Chaos") %>%
  ungroup()
colnames(sign_of_chaos)[colnames(sign_of_chaos) == "value"] <- "text"
sign_of_chaos <- sign_of_chaos[-c(1:3),]

knight_of_shadows <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Knight_of_Shadows.txt", "r")
knight_of_shadows <- readLines(knight_of_shadows)
knight_of_shadows <- as_tibble(knight_of_shadows) %>%
  mutate(book = knight_of_shadows["book"] <- "Knight of Shadow") %>%
  ungroup()
colnames(knight_of_shadows)[colnames(knight_of_shadows) == "value"] <- "text"
knight_of_shadows <- knight_of_shadows[-c(1:3),]

prince_of_chaos <- file("C:/Users/dutch/OneDrive/Documents/Amber/data_raw/Prince_of_Chaos.txt", "r")
prince_of_chaos <- readLines(prince_of_chaos)
prince_of_chaos <- as_tibble(prince_of_chaos) %>%
  mutate(book = prince_of_chaos["book"] <- "Prince of Chaos") %>%
  ungroup()
colnames(prince_of_chaos)[colnames(prince_of_chaos) == "value"] <- "text"
prince_of_chaos <- prince_of_chaos[-c(1:3),]


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
