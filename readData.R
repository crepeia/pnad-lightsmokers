# IBGE Pnad Data 2008 Light Smokers Project----

## You can download all PNAD Data here: http://www.ibge.gov.br/home/estatistica/populacao/trabalhoerendimento/pnad2008/suplementos/tabagismo/microdados.shtm

# SECTION 1 ###################################################################
# READ DATA FROM TXT FILES ----------------------------------------------------
# With this code section, you are able to open the TXT files from the url above.

## Remember to install packages before loading them.

## Load packages
library(bit64)
library(data.table)
library(descr)

# Convert txt files into R objects ----

## Load Dictionary
load("dicPNAD2008.RData")

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

# SECTION 2 #####################################################################
# HOW TO OPEN RDATA -------------------------------------------------------------
# With this code, you will be able to open data from a person and housing levels.
load("pnad2008.RData")

# If everything went ok, you can see four objects in the environment (upper right
# corner)

# dadosdom - housing level data
# dadospes - person level data
# dicdom2008 - housing dictionary
# dicpes2008 - person dictionary

# SECTION 3 #####################################################################
# WEIGHT SAMPLE ----------------------------------------------------------------
# Not implemented yet. We need to weight cases before proceed to main analyses

# SECTION 4 #####################################################################
# PLAY WITH DATA ----------------------------------------------------------------

table(dicpes2008$V4729)



