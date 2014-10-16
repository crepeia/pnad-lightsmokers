# IBGE Pnad Data 2008 ----

## Set Working Directory
setwd("~/pnad-lightsmokers/Data")

## Load packages
library(bit64)
library(data.table)
library(descr)

# Convert txt files into R objects ----

## Load Dictionary
load("R Files/dicPNAD2008.RData")

## Estimate the size of variables 
end_dom  <-  dicdom2008$inicio + dicdom2008$tamanho - 1
end_pes  <-  dicpes2008$inicio + dicpes2008$tamanho - 1

## Converts microdata into csv
fwf2csv(fwffile='DOM2008.TXT', csvfile='dadosdom.csv', names=dicdom2008$cod, begin=dicdom2008$inicio, end=end_dom)
fwf2csv(fwffile='PES2008_UTF8.TXT', csvfile='dadospes.csv', names=dicpes2008$cod, begin=dicpes2008$inicio, end=end_pes)

## Read data with fread fucntion of data.table package 
dadosdom <- fread(input='dadosdom.csv', sep='auto', sep2='auto', integer64='double')
dadospes <- fread(input='dadospes.csv', sep='auto', sep2='auto', integer64='double')

## Remove unnecessary objects
rm(end_dom, end_pes)

# Como abrir o banco de dados ----

# Abrir banco de dados
load("pnad2008.RData")

# 
