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
fwf2csv(fwffile='PES2008.TXT', csvfile='dadospes.csv', names=dicpes2008$cod, begin=dicpes2008$inicio, end=end_pes)

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
# ANALYSES ----------------------------------------------------------------

# WEIGHTS



library(survey)
options(survey.lonely.psu = "adjust")
library(grid)

ptab  <- subset(dadospes, !is.na(dadospes$PESPET))

## RECODE VARIABLES -------

### Light Smokers
#### Cigarrete
ptab$fumoleve[ptab$V2701 == 3] <- 'Fumante ocasional'
ptab$fumoleve[ptab$V2701 == 5] <- 'Não Fumante'
ptab$fumoleve[ptab$V2701 == 1 & ptab$V7201 <= 9] <- 'Fumante leve diário'
ptab$fumoleve[ptab$V2701 == 1 & ptab$V7201 > 9]  <- 'Fumante pesado diário'

#### Sex
ptab$sexo[ptab$V0302 == 2]  <- 'Feminino'
ptab$sexo[ptab$V0302 == 4]  <- 'Masculino'
ptab$sexo  <- as.factor(ptab$sexo)

#### Age
ptab$idade[ptab$V8005 > 15 & ptab$V8005 <= 24]  <- '> 15, <= 24 Anos'
ptab$idade[ptab$V8005 > 25 & ptab$V8005 <= 44]  <- '> 25, <= 44 Anos'
ptab$idade[ptab$V8005 > 45 & ptab$V8005 <= 64]  <- '> 45, <= 64 Anos'
ptab$idade[ptab$V8005 > 65]  <- '> 65 Anos'
ptab$idade  <- as.factor(ptab$idade)

##auto avaliação de saude 

ptab$saudeper[ptab$V1303 == 1] <- 'muito bom'
ptab$saudeper[ptab$V1303 == 2] <- ' bom'
ptab$saudeper[ptab$V1303 == 3] <- 'regular'
ptab$saudeper[ptab$V1303 == 4] <- 'ruim'
ptab$saudeper[ptab$V1303 == 5] <- 'muito ruim'

#Doenças de coluna
ptab$dcoluna[ptab$V1309 == 1] <- 'Coluna sim'
ptab$dcoluna[ptab$V1309 == 3] <- 'Coluna não'

#Doenças de  Artrite
ptab$dartrite[ptab$V1310 == 2] <- ' Artrite Sim'
ptab$dartrite[ptab$V1310 == 4] <- ' Artrite não'

#Doenca de cancer

ptab$dcancer[ptab$V1311 == 1] <- ' cancer sim'
ptab$dcancer[ptab$V1311 == 3] <- ' cancer não'

#doenca de diabetes

ptab$ddiabetes[ptab$V1312 == 2] <- ' diabetes sim'
ptab$ddiabetes[ptab$V1312 == 4] <- ' diabetes não'

#doenca de bronquite

ptab$dbronquite[ptab$V1312 == 2] <- ' bronquite sim'
ptab$dbronquite[ptab$V1312 == 4] <- ' bronquite não'



# Create survey design - Needs package survey loaded


sample.pnadPes <- svydesign(
  id = ~1,
  data = ptab,
  weights = ~PESPET
)

ptabFP  <- subset(ptab, ptab$fumoleve == 'Fumante pesado diário')
ptabFLD  <- subset(ptab, ptab$fumoleve == 'Fumante leve diário')
ptabFO  <- subset(ptab, ptab$fumoleve == 'Fumante ocasional')
ptabNF <- subset(ptab, ptab$fumoleve == 'Não Fumante')

sample.pnadPesFP <- svydesign(
  id = ~1,
  data = ptabFP,
  weights = ~PESPET
)

sample.pnadPesFLD <- svydesign(
  id = ~1,
  data = ptabFLD,
  weights = ~PESPET
)

sample.pnadPesFO <- svydesign(
  id = ~1,
  data = ptabFO,
  weights = ~PESPET
)

sample.pnadPesNF <- svydesign(
  id = ~1,
  data = ptabNF,
  weights = ~PESPET
)

#tabelas de comparação de saude percebida:

round(prop.table(svytable(~saudeper, sample.pnadPesFP)),3)*100

round(prop.table(svytable(~saudeper, sample.pnadPesFLD)),3)*100

round(prop.table(svytable(~saudeper, sample.pnadPesFO)),3)*100

round(prop.table(svytable(~saudeper, sample.pnadPesNF)),3)*100



round(prop.table(svytable(~dcoluna, sample.pnadPesFP)),3)*100

round(prop.table(svytable(~dcoluna, sample.pnadPesFLD)),3)*100

round(prop.table(svytable(~dcoluna, sample.pnadPesFO)),3)*100

round(prop.table(svytable(~dcoluna, sample.pnadPesNF)),3)*100


round(prop.table(svytable(~dartrite, sample.pnadPesFP)),3)*100

round(prop.table(svytable(~dartrite, sample.pnadPesFLD)),3)*100

round(prop.table(svytable(~dartrite, sample.pnadPesFO)),3)*100

round(prop.table(svytable(~dartrite, sample.pnadPesNF)),3)*100


round(prop.table(svytable(~dcancer, sample.pnadPesFP)),3)*100

round(prop.table(svytable(~dcancer, sample.pnadPesFLD)),3)*100

round(prop.table(svytable(~dcancer, sample.pnadPesFO)),3)*100

round(prop.table(svytable(~dcancer, sample.pnadPesNF)),3)*100


round(prop.table(svytable(~ddiabetes, sample.pnadPesFP)),3)*100

round(prop.table(svytable(~ddiabetes, sample.pnadPesFLD)),3)*100

round(prop.table(svytable(~ddiabetes, sample.pnadPesFO)),3)*100

round(prop.table(svytable(~ddiabetes, sample.pnadPesNF)),3)*100





#######################
# Domicílios
#######################

# Calculo dos pesos
dadosdom$pre_wgt <- dadosdom$V4619 * dadosdom$V4610


sample.pnad  <-  svydesign(
  id = ~V4618,
  strata = ~V4617,
  data = dadosdom,
  nest = TRUE,
  weights = ~pre_wgt
)



svytotal(
  ~V4614,
  sample.pnad
)
