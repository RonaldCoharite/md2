rm(list=ls())
install.packages("dplyr")
library(dplyr)
install.packages("tm")
library(tm) #crear objeto tm (text mining)
install.packages("udpipe") 
library(udpipe)# Etiquetado
install.packages("hunspell")
library(hunspell) #Ortografia
install.packages("syuzhet")
library(syuzhet) #Analisis de sentimiento

#################
options(stringsAsFactors = FALSE) #No convertir las cadenas a factores
Sys.setlocale(category = "LC_ALL", locale = "es_Es.UTF-8") #

#################
load("_data/larazon.RData")

#####################
#Ortografia
texto <- "Esto es un tezto con algunos errores de ortografia"
errores <- hunspell(texto, dict = "es_ES")
#list_dictionaries()
#Tools -> Global Options -> Spelling -> Install more languages
hunspell_suggest(errores[[1]], dict = "es_ES")



hunspell(bd$titular[1:5], dict = "es_ES") #Solo titulares (los primeros 5)
#####################

#armar un corpus (TDM DTM)

corpuslarazon <- VCorpus(VectorSource(bd$titular))
corpuslarazon[[20]] #ver titular 20
corpuslarazon[[20]]$content


















