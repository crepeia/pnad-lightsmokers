/* PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE PESSOAS
   DA PNAD 2008 - PESQUISA BÁSICA, PESQUISA ESPECIAL DE TABAGISMO E
   SUPLEMENTARES DE SAÚDE E DE ACESSO À INTERNET E POSSE DE TELEFONE
                 MÓVEL CELULAR PARA USO PESSOAL */

/* Obs.: As duas primeiras posi$ões de V0102 (Número de controle)
        são o código da UF (Unidade da Federação).
   Obs.2: Ajuste o endereço do arquivo PES2008.TXT no comando INFILE */

DATA PES2008;
INFILE '...\DADOS\PES2008.TXT' LRECL=1495 MISSOVER;
INPUT
   @00001  V0101  $4. /* ANO DE REFERÊNCIA                                                     */
   @00005  UF     $2. /* UNIDADE DA FEDERAÇÃO                                                  */
   @00005  V0102  $8. /* NÚMERO DE CONTROLE                                                    */
   @00013  V0103  $3. /* NÚMERO DE SÉRIE                                                       */
   @00016  V0301  $2. /* NÚMERO DE ORDEM                                                       */
   @00018  V0302  $1. /* SEXO                                                                  */
   @00019  V3031  $2. /* DIA DE NASCIMENTO                                                     */
   @00021  V3032  $2. /* MÊS DE NASCIMENTO                                                     */
   @00023  V3033  $4. /* ANO DE NASCIMENTO                                                     */
   @00027  V8005  $3. /* IDADE DO MORADOR                                                      */
   @00030  V0401  $1. /* CONDIcAO NA UNIDADE DOMICILIAR                                        */
   @00031  V0402  $1. /* CONDIcAO NA FAMÍLIA                                                   */
   @00032  V0403  $1. /* NÚMERO DA FAMÍLIA                                                     */
   @00033  V0404  $1. /* COR OU RACA                                                           */
   @00034  V0405  $1. /* TEM MaE VIVA                                                          */
   @00035  V0406  $1. /* MAE MORA NO DOMICÍLIO                                                 */
   @00036  V0407  $2. /* NÚMERO DE ORDEM DA MAE                                                */
   @00038  V0408  $1. /* TEM REGISTRO DE NASCIMENTO                                            */
   @00039  V0409  $1. /* MOTIVO PARA CONVIVER                                                  */
   @00040  V0410  $1. /* INTENCAO DE MUDAR                                                     */
   @00041  v0412  $1. /*INFORMANTE PARTE 4                                                     */
   @00042  V0501  $1. /* NASCEU NO MUNICÍPIO                                                   */
   @00043  V0502  $1. /* NASCEU NA UF                                                          */
   @00044  V5030  $2. /* CÓDIGO UF/PAÍS ONDE NASCEU                                            */
   @00046  V0504  $1. /* MOROU NOUTRA UF/PAIS                                                  */
   @00047  V0505  $1. /* MORAVA NA UF NA DATA DE REFER.                                        */
   @00048  V5061  $1. /* MORAVA NA UF ATÉ 4 ANOS                                               */
   @00049  V5062  $1. /* Nº DE ANOS, ATÉ 4                                                     */
   @00050  V5063  $1. /* MORAVA NA UF DE 5 A 9 ANOS                                            */
   @00051  V5064  $1. /* Nº DE ANOS, DE 5 A 9                                                  */
   @00052  V5065  $1. /* MORAVA NA UF HÁ 10 ANOS OU +                                          */
   @00053  V0507  $1. /* MORAVA NA UF 5 ANOS ANTES                                             */
   @00054  V5080  $2. /* UF/PAÍS ONDE MORAVA HÁ 5 ANOS                                         */
   @00056  V5090  $2. /* UF/PAÍS ONDE MOROU ANTERIOMENTE                                       */
   @00058  V0510  $1. /* MORAVA NO MUN. NA DATA REFER.                                         */
   @00059  V0511  $1. /* MOROU NOUTRO MUNICÍPIO DA UF                                          */
   @00060  V5121  $1. /* MORAVA NO MUNIC. ATÉ 4 ANOS                                           */
   @00061  V5122  $1. /* Nº DE ANOS NO MUNIC,ATÉ 4 ANOS                                        */
   @00062  V5123  $1. /* MORAVA NO MUNIC.,DE 5 A 9 ANOS                                        */
   @00063  V5124  $1. /* Nº DE ANOS NO MUNIC.,5 A 9 ANOS                                       */
   @00064  V5125  $1. /* MORAVA NO MUN. HÁ 10 ANOS OU +                                        */
   @00065  V5126  $1. /*INFORMANTE PARTE 5                                                     */
   @00066  V0601  $1. /* SABE LER E ESCREVER                                                   */
   @00067  V0602  $1. /* FREQÜENTA ESCOLA                                                      */
   @00068  V6002  $1. /* REDE DE ENSINO                                                        */
   @00069  V6003  $2. /* CURSO QUE FREQÜENTA                                                   */
   @00071  V6030  $1. /* DURACAO DO CURSO                                                      */
   @00072  V0604  $1. /* O CURSO É SERIADO                                                     */
   @00073  V0605  $1. /* SÉRIE QUE FREQÜENTA                                                   */
   @00074  V0606  $1. /* ANTERIORMENTE FREQÜENTOU ESCOLA                                       */
   @00075  V6007  $2. /* CURSO + ELEVADO Q FREQÜENTOU                                          */
   @00077  V6070  $1. /* DURACAO DO CURSO                                                      */
   @00078  V0608  $1. /* O CURSO ERA SERIADO                                                   */
   @00079  V0609  $1. /* CONCLUIU C/ APROVA@O 1ª SÉRIE                                         */
   @00080  V0610  $1. /* ÚLTIMA SÉRIE CONCLUÍDA                                                */
   @00081  V0611  $1. /* CONCLUIU O CURSO                                                      */
   @00082  V0612  $1. /*INFORMANTE PARTE 6                                                     */
   @00083  V0701  $1. /* TRABALHOU PERIODO REF 365 DIAS                                        */
   @00084  V0702  $1. /* PRODUCAO P/ O PRÓPRIO CONSUMO                                         */
   @00085  V0703  $1. /* CONSTRUCAO P/ O PRÓPRIO USO                                           */
   @00086  V0704  $1. /* TRABALHOU NA SEMANA REFERÊNCIA                                        */
   @00087  V0705  $1. /* ESTAVA AFASTADO TEMPORIAMENTE                                         */
   @00088  V7060  $4. /* CÓDIGO DA OCUPACAO - ANO                                              */
   @00092  V7070  $5. /* CÓDIGO DA ATIVIDADE - ANO                                             */
   @00097  V0708  $1. /* POSICAO NA OCUPACAO - ANO                                             */
   @00098  V7090  $4. /* CÓDIGO DA OCUPACAO - SEMANA                                           */
   @00102  V7100  $5. /* CÓDIGO DA ATIVIDADE - SEMANA                                          */
   @00107  V0711  $1. /* POSICAO NA OCUPACAO - SEMANA                                          */
   @00108  V7121  $1. /* RENDIMENTO MENSAL EM DINHEIRO                                         */
   @00109  V7122   12./* VALOR DO RENDIMENTO EM DINHEIRO                                       */
   @00121  V7124  $1. /* REND. MENSAL PRODUTOS/MERCADOR.                                       */
   @00122  V7125   12./* VALOR EM PRODUTOS/MERCADORIAS                                         */
   @00134  V7127  $1. /* REND. MENSAL SOMENTE BENEFÍCIOS                                       */
   @00135  V7128  $1. /* NAO REMUNERADO                                                        */
   @00136  V0713  $2. /* HORAS TRABALHADAS - SEMANA                                            */
   @00138  V0714  $1. /* CUIDAVA DE AFAZERES DOMÉSTICOS                                        */
   @00139  V0715  $2. /* HORAS DEDICADAS A AFAZ. DOMÉST                                        */
   @00141  V0716  $1. /*INFORMANTE DA PARTE 7                                                  */
   @00142  V9001  $1. /* TRABALHOU NA SEMANA REFERÊNCIA                                        */
   @00143  V9002  $1. /* PRODUCAO P/ O PRÓPRIO CONSUMO                                         */
   @00144  V9003  $1. /* CONSTRUCAO P/ O PRÓPRIO USO                                           */
   @00145  V9004  $1. /* ESTAVA AFASTADO TEMPORIAMENTE                                         */
   @00146  V9005  $1. /* NÚMERO DE TRABALHOS - SEMANA                                          */
   @00147  V9906  $4. /* CÓDIGO OCUPACAO - SEMANA                                              */
   @00151  V9907  $5. /* CÓDIGO DA ATIVIDADE - SEMANA                                          */
   @00156  V9008  $2. /* POSICAO NA OCUPACAO - AGRÍCOLA                                        */
   @00158  V9009  $1. /* RECEBIA ÁREA DO EMPREGADOR                                            */
   @00159  V9010  $1. /* PARCERIA COM O EMPREGADOR                                             */
   @00160  V9011  $1. /* CONTRADO POR PESSOA DO ESTAB.                                         */
   @00161  V9012  $1. /* CONTRADO POR INTERMEDIÁRIO                                            */
   @00162  V9013  $1. /* RECEBIA AJUDA DE NAO-RENUMERADO                                       */
   @00163  V9014  $1. /* NÚMERO DE NAO-REMUNERADOS                                             */
   @00164  V9151  $1. /* 1ª ÁREA - EMPREGADOR                                                  */
   @00165  V9152  $11./* AREA DO ESTABELECIMENTO                                               */
   @00176  V9154  $7. /* EQUIVALENCIA EM M2 DE V9152                                           */
   @00183  V9156  $1. /* 2ª REA - EMPREGADOR                                                   */
   @00184  V9157  $11./* AREA DO ESTABELECIMENTO                                               */
   @00195  V9159  $7. /* EQUIVALENCIA EM M2 DE V9157                                           */
   @00202  V9161  $1. /* 3ª ÁREA - EMPREGADOR                                                  */
   @00203  V9162  $11./* AREA DO ESTABELECIMENTO                                               */
   @00214  V9164  $7. /* EQUIVALENCIA EM M2 DE V9162                                           */
   @00221  V9016  $1. /* TINHA EMPREGADO TEMPORÁRIO                                            */
   @00222  V9017  $1. /* Nº DE EMPREGADOS TEMPORÁRIOS                                          */
   @00223  V9018  $1. /* TINHA EMPREGADO PERMANENTE                                            */
   @00224  V9019  $1. /* Nº DE EMPREGADOS PERMANENTES                                          */
   @00225  V9201  $1. /* 1ª ÁREA - CONTA PRÓPRIA                                               */
   @00226  V9202  $11./* AREA DO ESTABELECIMENTO                                               */
   @00237  V9204  $7. /* EQUIVALENCIA EM M2 DE V9202                                           */
   @00244  V9206  $1. /* 2ª ÁREA - CONTA PRÓPRIA                                               */
   @00245  V9207  $11./* AREA DO ESTABELECIMENTO                                               */
   @00256  V9209  $7. /* EQUIVALENCIA EM M2 DE V9207                                           */
   @00263  V9211  $1. /* 3ª ÁREA - CONTA PRÓPRIA                                               */
   @00264  V9212  $11./* AREA DO ESTABELECIMENTO                                               */
   @00275  V9214  $7. /* EQUIVALENCIA EM M2 DE V9212                                           */
   @00282  V9021  $1. /* COND. EM REL. AO EMPREENDIMENTO                                       */
   @00283  V9022  $1. /* PARCERIA CONTRATADA                                                   */
   @00284  V9023  $1. /* FORMA PGTO. DO ARRENDAMENTO                                           */
   @00285  V9024  $1. /* COMPROMISSO VENDER PARTE PROD.                                        */
   @00286  V9025  $1. /* VENDEU PARTE DA PRODUCAO                                              */
   @00287  V9026  $1. /* QUEM COMPROU ESTA PARTE                                               */
   @00288  V9027  $1. /* PARTE DA PRODUCAO CONSUMIDA                                           */
   @00289  V9028  $1. /* PARCELA CONSUMIDA P MORADORES                                         */
   @00290  V9029  $1. /* POSICAO NA OCUPACAO N-AGRÍCOLA                                        */
   @00291  V9030  $1. /* JORNADA DE TRABALHO ENTRE 5-22H                                       */
   @00292  V9031  $1. /* JORNADA DE TRABALHO ENTRE 22-5H                                       */
   @00293  V9032  $1. /* SETOR DO EMPREGO                                                      */
   @00294  V9033  $1. /* ÁREA DO EMPREGO                                                       */
   @00295  V9034  $1. /* ERA MILITAR                                                           */
   @00296  V9035  $1. /* ERA ESTATUTÁRIO                                                       */
   @00297  V9036  $1. /* SERV. DOMÉSTICO EM. + DE 1 DOM.                                       */
   @00298  V9037  $1. /* TRAB. PELO MENOS 1X P/ SEMANA                                         */
   @00299  V9038  $1. /* N DIAS Q TRABALHAVA P/SEMANA                                          */
   @00300  V9039  $1. /* N. DIAS Q TRABALHAVA P/MÊS                                            */
   @00301  V9040  $1. /* N. PESSOAS OCUP. NESSE EMPREGO                                        */
   @00302  V9041  $1. /* FORMA DE CONTRATO DA REMUNERAC.                                       */
   @00303  V9042  $1. /* CARTEIRA ASSINADA                                                     */
   @00304  V9043  $1. /* RECEBEU AUX. MORADIA                                                  */
   @00305  V9044  $1. /* RECEBEU AUX. ALIMENTACAO                                              */
   @00306  V9045  $1. /* RECEBEU AUX. TRANSPORTE                                               */
   @00307  V9046  $1. /* RECEBEU AUX. EDUCACAO/CRECHE                                          */
   @00308  V9047  $1. /* RECEBEU AUX. SAUDE/REABILITACAO                                       */
   @00309  V9048  $1. /* Nº EMPREGADOS Q OCUPAVA                                               */
   @00310  V9049  $1. /* TINHA P/MENOS 1 SÓCIO OCUPADO                                         */
   @00311  V9050  $1. /* Nº SOCIOS OCUP. NESSE TRABALHO                                        */
   @00312  V9051  $1. /* OCUPOU P/MENOS 1 NAO-REMUNERADO                                       */
   @00313  V9052  $1. /* Nº NAO-REMUNERADOS                                                    */
   @00314  V9531  $1. /* RENDIMENTO MENSAL EM DINHEIRO                                         */
   @00315  V9532   12./* VALOR DO RENDIMENTO EM DINHEIRO                                       */
   @00327  V9534  $1. /* REND. MENSAL PRODUTOS/MERCADOR.                                       */
   @00328  V9535   12./* VALOR EM PRODUTOS/MERCADORIAS                                         */
   @00340  V9537  $1. /* REND. MENSAL SOMENTE BENEFÍCIOS                                       */
   @00341  V9054  $1. /* TIPO DE ESTABELECIMENTO                                               */
   @00342  V9055  $1. /* MORAVA NO ESTAB. DE TRABALHO                                          */
   @00343  V9056  $1. /* IA DIRETO DOM./RESID. P/ TRAB.                                        */
   @00344  V9057  $1. /* TEMPO DE PERCURSO RES.-TRAB.                                          */
   @00345  V9058  $2. /* HORAS TRAB. P/SEMANA                                                  */
   @00347  V9059  $1. /* CONTRIBUIA P/ INST. PREVIDÊNCIA                                       */
   @00348  V9060  $1. /* TIPO INST. DE PREVIDÊNCIA                                             */
   @00349  V9611  $2. /* N ANOS DE TRABALHO                                                    */
   @00351  V9612  $2. /* N MESES DE TRABALHO                                                   */
   @00353  V9062  $1. /* SAIU DE ALGUM TRABALHO NO ANO                                         */
   @00354  V9063  $1. /* Nº DE TRABALHOS QUE SAIU                                              */
   @00355  V9064  $2. /* N MESES NESSE TRAB. ANTERIOR                                          */
   @00357  V9065  $1. /* CARTEIRA ASSINADA NESSE TRAB.                                         */
   @00358  V9066  $1. /* RECEBEU SEGURO DESEMPREGO                                             */
   @00359  V9067  $1. /* TRABALHOU NOS 358 DIAS                                                */
   @00360  V9068  $1. /* PRODUCAO P/ O PRÓPRIO CONSUMO                                         */
   @00361  V9069  $1. /* CONSTRUCAO P/ O PRÓPRIO USO                                           */
   @00362  V9070  $1. /* Nº DE TRABALHOS DE QUE SAIU                                           */
   @00363  V9971  $4. /* CÓDIGO DA OCUPACAO - 358 DIAS                                         */
   @00367  V9972  $5. /* CÓDIGO DA ATIVIDADE - 358 DIAS                                        */
   @00372  V9073  $2. /* POSICAO NA OCUPACAO - AGRÍCOLA                                        */
   @00374  V9074  $1. /* RECEBIA ÁREA DO EMPREGADOR                                            */
   @00375  V9075  $1. /* PARCERIA COM O EMPREGADOR                                             */
   @00376  V9076  $1. /* COND. EM REL. AO EMPREENDIMENTO                                       */
   @00377  V9077  $1. /* POSICAO OCUPACAO - N-AGRÍCOLA                                         */
   @00378  V9078  $1. /* SETOR DO EMPREGO - 358 DIAS                                           */
   @00379  V9079  $1. /* ÁREA DO EMPREGO - 358 DIAS                                            */
   @00380  V9080  $1. /* ERA MILITAR - 358 DIAS                                                */
   @00381  V9081  $1. /* ERA ESTATUTÁRIO - 358 DIAS                                            */
   @00382  V9082  $1. /* SERV. DOMÉSTICO EM. + DE 1 DOM.                                       */
   @00383  V9083  $1. /* CARTEIRA ASSINADA - 358 DIAS                                          */
   @00384  V9084  $1. /* RECEBEU SEGURO DESEMPREGO                                             */
   @00385  V9085  $1. /* CONTRIBUIA P/ INST. PREVIDÊNCIA                                       */
   @00386  V9861  $2. /* ANOS NESSE TRABALHO - 358 DIAS                                        */
   @00388  V9862  $2. /* MESES NESSE TRABALHO - 358 DIAS                                       */
   @00390  V9087  $1. /* ASSOCIADO À SINDICATO - ANO                                           */
   @00391  V9088  $1. /* TIPO DE SINDICATO - ANO                                               */
   @00392  V9891  $1. /* CÓDIGO DA V9892                                                       */
   @00393  V9892  $2. /* IDADE QUE COMECOU A TRABALHAR                                         */
   @00395  V9990  $4. /* CÓD OCUPACAO - TRAB. SECUNDÁRIO                                       */
   @00399  V9991  $5. /* CÓD ATIVIDADE - TRAB. SECUND.                                         */
   @00404  V9092  $1. /* POS. OCUPACAO - TRAB. SECUND.                                         */
   @00405  V9093  $1. /* SETOR EMPREGO - TRAB. SECUND.                                         */
   @00406  V9094  $1. /* ÁREA EMPREGO - TRAB. SECUNDÁRIO                                       */
   @00407  V9095  $1. /* ERA MILITAR - TRAB. SECUNDÁRIO                                        */
   @00408  V9096  $1. /* ERA ESTATUTÁRIO - TRAB.SECUND.                                        */
   @00409  V9097  $1. /* CARTEIRA ASS. TRAB. SECUNDÁRIO                                        */
   @00410  V9981  $1. /* RENDIMENTO TRAB. SECUNDÁRIO                                           */
   @00411  V9982   12./* VALOR DO RENDIMENTO EM DINHEIRO                                       */
   @00423  V9984  $1. /* REND. MENSAL PRODUTOS/MERCADOR.                                       */
   @00424  V9985   12./* VALOR EM PRODUTOS/MERCADORIAS                                         */
   @00436  V9987  $1. /* REND. MENSAL SOMENTE BENEFÍCIOS                                       */
   @00437  V9099  $1. /* CONTRIBUIA P/ INST. PREVIDÊNCIA                                       */
   @00438  V9100  $1. /* TIPO INSTITUTO DE PREVIDÊNCIA                                         */
   @00439  V9101  $2. /* HORAS TRABALHADAS - TRAB. SEC.                                        */
   @00441  V1021  $1. /* RENDIMENTO OUTROS TRABALHOS                                           */
   @00442  V1022   12./* VALOR DO RENDIMENTO EM DINHEIRO                                       */
   @00454  V1024  $1. /* REND. MENSAL PRODUTOS/MERCADOR.                                       */
   @00455  V1025   12./* VALOR EM PRODUTOS/MERCADORIAS                                         */
   @00467  V1027  $1. /* REND. MENSAL SOMENTE BENEFÍCIOS                                       */
   @00468  V1028  $1. /* NAO REMUNERADO                                                        */
   @00469  V9103  $1. /* CONTRIBUIA P/ INST. PREVIDÊNCIA                                       */
   @00470  V9104  $1. /* TIPO INSTITUTO DE PREVIDÊNCIA                                         */
   @00471  V9105  $2. /* HORAS TRABALHADAS - OUTROS TRAB                                       */
   @00473  V9106  $1. /* TEVE TRABALHO ANTES DO ANO                                            */
   @00474  V9107  $1. /* PRODUCAO P/ O PRÓPRIO CONSUMO                                         */
   @00475  V9108  $1. /* CONSTRUCAO P/ O PRÓPRIO USO                                           */
   @00476  V1091  $2. /* N ANOS QUE SAIU DESTE TRABALHO                                        */
   @00478  V1092  $2. /* N MESES Q SAIU DESTES TRABALHO                                        */
   @00480  V9910  $4. /* CÓD. OCUPACAO NESTE TRABALHO                                          */
   @00484  V9911  $5. /* CÓD. ATIVIDADE NESTE TRABALHO                                         */
   @00489  V9112  $1. /* POS. OCUPACAO NESTE TRABALHO                                          */
   @00490  V9113  $1. /* ERA MILITAR/ESTATUTÁRIO                                               */
   @00491  V9114  $1. /* CARTEIRA ASS. NESTE TRABALHO                                          */
   @00492  V9115  $1. /* PROCUROU TRAB. NA SEMANA                                              */
   @00493  V9116  $1. /* PROCUROU TRAB. NO MÊS                                                 */
   @00494  V9117  $1. /* PROCUROU TRAB. MÊS ANTERIOR                                           */
   @00495  V9118  $1. /* PROCUROU TRAB. NO ANO                                                 */
   @00496  V9119  $1. /* ÚLTIMA PROVIDÊNCIA Q TOMOU                                            */
   @00497  V9120  $1. /* CONTRIBUIA INST. PREV. PRIVIDA                                        */
   @00498  V9121  $1. /* CUIDAVA AFAZERES DOMESTICOS                                           */
   @00499  V9921  $2. /* HORAS P/ SEM. AFAZERES DOMEST.                                        */
   @00501  V9122  $1. /* APOSENTADO PREV. OFICIAL                                              */
   @00502  V9123  $1. /* PENSIONISTA PREV. OFICIAL                                             */
   @00503  V9124  $1. /* RECEBIA REND. NAO TRABALHO                                            */
   @00504  V1251  $2. /* RECEBIA APOSENTADORIA INST.PREV                                       */
   @00506  V1252   12./* VALOR DA APOSENTADORIA                                                */
   @00518  V1254  $2. /* RECEBIA PENSAO INST. PREV.                                            */
   @00520  V1255   12./* VALOR DA PENSAO                                                       */
   @00532  V1257  $2. /* RECEBIA OUTRO TIPO APOSENTADORI                                       */
   @00534  V1258   12./* VALOR DESTA APOSENTADORIA                                             */
   @00546  V1260  $2. /* RECEBIA OUTRO TIPO PENSAO                                             */
   @00548  V1261   12./* VALOR DESTA PENSAO OUTRA                                              */
   @00560  V1263  $2. /* RECEBIA ABONO DE PERMANÊNCIA                                          */
   @00562  V1264   12./* VALOR DO ABONO DE PERMANENCIA                                         */
   @00574  V1266  $2. /* RECEBIA ALUGUEL                                                       */
   @00576  V1267   12./* VALOR DO ALUGUEL                                                      */
   @00588  V1269  $2. /* RECEBIA DOACAO DE NAO MORADOR                                         */
   @00590  V1270   12./* VALOR DA DOACAO NAO MORADOR                                           */
   @00602  V1272  $2. /* RECEBIA OUTROS RENDIMENTOS                                            */
   @00604  V1273   12./* VALOR DOS OUTROS RENDIMENTOS                                          */
   @00616  V9126  $1. /* INFORMANTE PARTE 9                                                    */
   @00617  V1101  $1. /* ALGUM FILHO NASCIDO VIVO                                              */
   @00618  V1141  $2. /* N FILHOS Q MORAM NO DOMICILIO                                         */
   @00620  V1142  $2. /* N FILHAS Q MORAM NO DOMICILIO                                         */
   @00622  V1151  $2. /* N FILHOS Q MORAM NOUTRO LOCAL                                         */
   @00624  V1152  $2. /* N FILHAS Q MORAM NOUTRO LOCAL                                         */
   @00626  V1153  $1. /* IGNORA Nº FILHOS NOUTRO LOCAL                                         */
   @00627  V1154  $1. /* IGNORA Nº FILHAS NOUTRO LOCAL                                         */
   @00628  V1161  $2. /* N FILHOS QUE MORRERAM                                                 */
   @00630  V1162  $2. /* N FILHAS QUE MORRERAM                                                 */
   @00632  V1163  $1. /* IGNORA Nº FILHOS QUE MORRERAM                                         */
   @00633  V1164  $1. /* IGNORA Nº FILHAS QUE MORRERAM                                         */
   @00634  V1107  $1. /* SEXO ÚLTIMO FILHO NASCIDO VIVO                                        */
   @00635  V1181  $2. /* MES ÚLTIMO FILHO NASCIDO VIVO                                         */
   @00637  V1182  $4. /* ANO ÚLTIMO FILHO NASCIDO VIVO                                         */
   @00641  V1109  $1. /* ÚLT. FILHO NASC.VIVO AINDA VIVO                                       */
   @00642  V1110  $1. /* FILHO NASC.MORTO, GEST 7 MESES                                        */
   @00643  V1111  $2. /* N FILHOS NASCIDOS MORTOS                                              */
   @00645  V1112  $2. /* N FILHAS NASCIDAS MORTAS                                              */
   @00647  V1113  $1. /* IGNORA Nº FILHOS NASC. MORTOS                                         */
   @00648  V1114  $1. /* IGNORA Nº FILHAS NASC. MORTAS                                         */
   @00649  v1115  $1. /*INFORMANTE P 11                                                        */
   @00650  V4801  $2. /* GRAU E SÉRIE FREQUENTOU I                                             */
   @00652  V4802  $2. /* GRAU E SÉRIE FREQUENTOU II                                            */
   @00654  V4803  $2. /* ANOS DE ESTUDO                                                        */
   @00656  V4704  $1. /* COND. ATIVIDADE SEMANA, 10 OU +                                       */
   @00657  V4805  $1. /* COND. OCUPACAO SEMANA, 10 OU +                                        */
   @00658  V4706  $2. /* POS. OCUP TRAB. PRIN. 10 OU +                                         */
   @00660  V4707  $1. /* HORAS TRAB. TODOS TRABS, 10 OU+                                       */
   @00661  V4808  $1. /* AGRIC./NAO AGRIC., 10 OU +                                            */
   @00662  V4809  $2. /* GRUPOS ATIV TRAB PRINC, 10 OU +                                       */
   @00664  V4810  $2. /* GRUPOS OCUP TRAB PRINC, 10 OU +                                       */
   @00666  V4711  $1. /* CONTRIBUIA P/ PREV., 10 OU +                                          */
   @00667  V4812  $1. /* ATIV. TRAB. PRINC ANO, 5 OU +                                         */
   @00668  V4713  $1. /* COND. ATIVIDADE NO ANO 5 OU +                                         */
   @00669  V4814  $1. /* COND. OCUPACAO NO ANO 5 OU +                                          */
   @00670  V4715  $2. /* POS. OCUP. TRAB. ANO, 5 OU +                                          */
   @00672  V4816  $2. /* GRUPOS ATIV. TRAB ANO, 5 OU +                                         */
   @00674  V4817  $2. /* GRUPOS OCUP. TRAB ANO, 5 OU +                                         */
   @00676  V4718   12./* REND MENSAL TRABALHO PRINCIPAL                                        */
   @00688  V4719   12./* REND MENSAL TODOS OS TRABALHOS                                        */
   @00700  V4720   12./* REND MENSAL TODAS AS FONTES                                           */
   @00712  V4721   12./* REND MENSAL DOMICILIAR, 10 OU+                                        */
   @00724  V4722   12./* REND MENSAL FAMILIAR (C/ AGREG)                                       */
   @00736  V4723  $2. /* TIPO DE FAMILIA                                                       */
   @00738  V4724  $2. /* N COMPONENTES FAM I (C/AGREG)                                         */
   @00740  V4727  $1. /* CÓD. ÁREA CENSITÁRIA                                                  */
   @00741  V4728  $1. /* CÓD. SITUACAO CENSITARIA                                              */
   @00742  V4729   5. /* PESO DA PESSOA                                                        */
   @00747  V4732   5. /* PESO DA FAMILIA                                                       */
   @00752  V4735  $1. /* CONTROLE TAB FECUNDIDADE                                              */
   @00753  V4838  $1. /* GRUPOS ANOS DE ESTUDO, 5 OU +                                         */
   @00754  V6502  $1. /* CRIANCA 5 A 17                                                        */
   @00755  V4741  $2. /* N COMPONENTES DOM I (C/AGREG)                                         */
   @00757  V4742   12./* RENDIMENTO DOMICILIAR PERCAP                                          */
   @00769  V4743  $2. /* FAIXAS REND DOM PER CAPITA                                            */
   @00771  V4745  $1. /* NÍVEL DE INSTRUCAO MAIS ELEVADO                                       */
   @00772  V4746  $1. /* SITUAÇ@O DA OCUPAÇ@O NA SEMANA                                        */
   @00773  V4747  $1. /* ATIVIDADE PRINCIPAL EMPREEND.                                         */
   @00774  V4748  $1. /* ATIVIDADE PRINCIPAL EMPREEND.                                         */
   @00775  V4749  $1. /* SITUACAO NA OCUPACAO                                                  */
   @00776  V4750   12./* REND. MENSAL FAM. PER CAPITA                                          */
   @00788  V2701  $1. /*  FREQUENCIA DE FUMO ATUALMENTE                                        */
   @00789  V2702  $1. /*  FUMOU NO PASSADO                                                     */
   @00790  V2703  $1. /*  FREQUENCIADE FUMO NO PASSADO                                         */
   @00791  V2704  $1. /*  TOTAL CIGARROS DA VIDA INTEIRA ESTÁ ENTRE 5 ou 100                   */
   @00792  V2705  $2. /*  IDADE QUE COMEÇOU A FUMAR                                            */
   @00794  V27051 $1. /*  NÃO SABE A IDADE QUE COMEÇOU A FUMAR                                 */
   @00795  V2706  $2. /*  TEMPO QUE COMEÇOU A FUMAR                                            */
   @00797  V27061 $1. /*  NÃO SABE O TEMPO QUE COMEÇOU A FUMAR                                 */
   @00798  V2707  $2. /*  IDADE QUE COMEÇOU A FUMAR DIARIAMENTE                                */
   @00800  V27071 $1. /*  NÃO SABE IDADE QUE COMEÇOU A FUMAR DIARIAMENTE                       */
   @00801  V2708  $2. /*  TEMPO QUE COMEÇOU A FUMAR DIARIAMENTE                                */
   @00803  V27081 $1. /*  NÃO SABE TEMPO QUE COMEÇOU A FUMAR  DIARIAMENTE                      */
   @00804  V27091 $1. /*  FAIXA DE CIGARROS INDUSTR QUE FUMA POR DIA                           */
   @00805  V7201  $3. /*  QUANTIDADE DE CIGARROS INDUSTR QUE FUMA POR DIA                      */
   @00808  V27092 $1. /*  FAIXA DE CIGARROS PALHA OU ENROLADOS A MÃO QUE FUMA POR DIA          */
   @00809  V7202  $3. /*  QUANTID DE CIGARROS PALHA OU ENROLADOS A MÃO FUMA POR DIA            */
   @00812  V27093 $1. /*  FAIXA DE CIGARROS DE CRAVO/BALI QUE FUMA POR DIA                     */
   @00813  V7203  $3. /*  QUANTIDADE DE CIGARROS DE CRAVO/BALI QUE FUMA POR DIA                */
   @00816  V27094 $1. /*  FAIXA DE BIDIS/CIGARR INDIANOS QUE FUMA POR DIA                      */
   @00817  V7204  $3. /*  QUANTIDADE DE BIDIS/CIGARR INDIANOS QUE FUMA POR DIA                 */
   @00820  V27095 $1. /*  FAIXA DE CACHIMBOS QUE FUMA POR DIA                                  */
   @00821  V7205  $3. /*  QUANTIDADE DE CACHIMBOS QUE FUMA POR DIA                             */
   @00824  V27096 $1. /*  FAIXA DE CHARUTOS QUE FUMA POR DIA                                   */
   @00825  V7206  $3. /*  QUANTIDADE DE CHARUTOS QUE FUMA POR DIA                              */
   @00828  V27097 $1. /*  FAIXA DE NARGUILÉ QUE FUMA POR DIA                                   */
   @00829  V7207  $3. /*  QUANTIDADE DE SESSÕES DE NARGUILÉ QUE FUMA POR DIA                   */
   @00832  V27098 $1. /*  FAIXA DE OUTROS QUE FUMA POR DIA                                     */
   @00833  V7208  $3. /*  QUANTIDADE DE OUTROS QUE FUMA POR DIA                                */
   @00836  V2710  $1. /*  FAIXA DE TEMPO DEPOIS DE ACORDAR FUMA P PRIMEIRA VEZ                 */
   @00837  V2711  $2. /*  TOTAL DIAS  FUMOU PROD TABACO ÚLTIMO MES                             */
   @00839  V27111 $1. /*  NÃO SABE QUANTOS DIAS FUMOU PROD TABACO ÚLTIMO MES                   */
   @00840  V2712  $2. /*  Idade COMEÇOU A FUMAR OCASIONALMENTE                                 */
   @00842  V27121 $1. /*  NÃO SABE IDADE COMEÇOU A FUMAR OCASIONALMENTE                        */
   @00843  V2713  $2. /*  TEMPO Q COMEÇOU A FUMAR PROD TABACO OCASIONALMENTE                   */
   @00845  V27131 $1. /*  NÃO SABE TEMPO Q COMEÇOU FUMAR PROD TABACO OCASIONALMENTE            */
   @00846  V2714  $2. /*  IDADE COMEÇOU FUMAR DIARIAMENTE                                      */
   @00848  V27141 $1. /*  NÃO LEMBRA IDADE COMEÇOU FUMAR DIARIAMENTE                           */
   @00849  V2715  $2. /*  TEMPO QUE COMEÇOU FUMAR DIARIAMENTE                                  */
   @00851  V27151 $1. /*  NÃO SABE TEMPO QUE COMEÇOU FUMAR DIARIAMENTE                         */
   @00852  V27161 $1. /*  FAIXA DE CIGARROS INDUST Q FUMA POR SEMANAL                          */
   @00853  V7209  $3. /*  QUANTIDADE DE CIGARROS INDUST Q FUMA POR SEMANAL                     */
   @00856  V27162 $1. /*  FAIXA DE CIGARROS PALHA/ENROLADOS A MÃO FUMA POR SEMANA              */
   @00857  V7210  $3. /*  QUANTIDADE DE CIGARROS PALHA/ENROLADOS A MÃO FUMA POR SEMANA         */
   @00860  V27163 $1. /*  FAIXA DE CIGARROS DE CRAVO/BALI FUMA POR SEMANA                      */
   @00861  V7211  $3. /*  QUANTIDADE DE CIGARROS DE CRAVO/BALI FUMA POR SEMANA                 */
   @00864  V27164 $1. /*  FAIXA DE BIDIS/CIGARROS INDIANOS FUMA POR SEMANA                     */
   @00865  V7212  $3. /*  QUANTIDADE DE BIDIS/CIGARROS INDIANOS FUMA POR SEMANA                */
   @00868  V27165 $1. /*  FAIXA DE CACHIMBO FUMA POR SEMANA                                    */
   @00869  V7213  $3. /*  QUANTIDADE DE  CACHIMBOS FUMA POR SEMANA                             */
   @00872  V27166 $1. /*  FAIXA DE  CHARUTOS FUMA POR SEMANA                                   */
   @00873  V7214  $3. /*  QUANTIDADE DE CHARUTOS/CIGARRILHAS FUMA POR SEMANA                   */
   @00876  V27167 $1. /*  FAIXA DE NARGUILÉ FUMA POR SEMANA                                    */
   @00877  V7215  $3. /*  QUANTIDADE DE NARGUILÉ FUMA POR SEMANA                               */
   @00880  V27168 $1. /*  FAIXA DE OUTROS POR SEMANA                                           */
   @00881  V7216  $3. /*  QUANTIDADE DE OUTROS POR SEMANA                                      */
   @00884  V2717  $2. /*  IDADE COMEÇOU FUMAR PROD TABACO OCASIONALMENTE                       */
   @00886  V27171 $1. /*  NÃO SABE IDADE COMEÇOU FUMAR TABACO OCASIONALMENTE                   */
   @00887  V2718  $2. /*  TEMPO COMEÇOU FUMAR PROD TABACO OCASIONALMENTE                       */
   @00889  V27181 $1. /*  NÃO SABE TEMPO COMEÇOU FUMAR TABACO OCASIONALMENTE                   */
   @00890  V2719  $2. /*  IDADE COMEÇOU FUMAR PROD TABACO DIARIAMENTE                          */
   @00892  V27191 $1. /*  NÃO SABE IDADE COMEÇOU FUMAR TABACO DIARIAMENTE                      */
   @00893  V2720  $2. /*  HÁ QUANTOS ANOS COMEÇOU FUMAR TABACO DIARIAMENTE                     */
   @00895  V27201 $1. /*  NÃO SABE HÁ QUANTOS ANOS COMEÇ FUMAR TABACO DIARIAMENTE              */
   @00896  V2721  $1. /*  FAIXA TEMPO QUE PAROU DE FUMAR                                       */
   @00897  V7217  $3. /*  QUANTIDADE DE ANOS QUE PAROU FUMAR                                   */
   @00900  V7218  $3. /*  QUANTIDADE DE MESES QUE PAROU FUMAR                                  */
   @00903  V7219  $3. /*  QUANTIDADE DE SEMANAS QUE PAROU FUMAR                                */
   @00906  V7220  $3. /*  QUANTIDADE DE DIAS QUE PAROU FUMAR                                   */
   @00909  V2722  $1. /*  ÚLTI 12 MESES FOI ATENDIDO P MÉDICO OU PROF SAÚ                      */
   @00910  V2723  $1. /*  ÚLTI 12 MESES QTS VEZES ATENDIDO P MÉDICO OU PROF SAÚ                */
   @00911  V2724  $1. /*  ÚLT 12 MES ALG MÉD OU PROF SAÚ PERGUNTOU SE FUMAVA                   */
   @00912  V2725  $1. /*  DURANTE ESTE ATEND FOI ACONSELH A PARAR FUMAR                        */
   @00913  V2726  $1. /*  FOI ACONSELH A PARAR FUMAR PELO SUS                                  */
   @00914  V7221  $1. /*  PROF SAÚ ACONSELH A CESSAÇ@O DE FUMAR                                */
   @00915  V7229  $1. /*  SUS ACONSELH A CESSAÇ@O DE FUMAR                                     */
   @00916  V7222  $1. /*  FEZ REPOSIÇ@O DE NICOTINA C ADESIVO, PAST, SPRAY,INALA               */
   @00917  V7230  $1. /*  FEZ REPOSIÇ@O NICOTINA PELO SUS                                      */
   @00918  V7223  $1. /*  OUTROS MEDICAM COM RECEITA MÉDICA                                    */
   @00919  V7231  $1. /*  RECBEU MEDIC RECEITA MÉD PELO SUS                                    */
   @00920  V7224  $1. /*  HOMEOPATIA, ACUPUNTURA                                               */
   @00921  V7232  $1. /*  FEZ HOMEOPATIA, ACUPUNTURA PELO SUS                                  */
   @00922  V7225  $1. /*  CHAS, ERVAS OU PLANTAS MEDICINAIS                                    */
   @00923  V7226  $1. /*  SERVIÇO DE AJUDA POR TEL PARA PARAR FUMAR                            */
   @00924  V7227  $1. /*  TROCOU P OUTRO PROD DO TABACO NÃO FAZ FUMAÇA                         */
   @00925  V7228  $1. /*  ALGUM OUTRO                                                          */
   @00926  V7233  $2. /*  VIU Nº TEL PARAR FUMAR NAS EMBALAGENS, OU MAÇOS CIGARR               */
   @00928  V7234  $2. /*  VIU Nº TEL PARAR FUMAR POR MÉDICO OU PROF SAÚDE                      */
   @00930  V7235  $2. /*  VIU Nº TEL PARAR FUMAR MÉD OU PROF SAÚ PARTICULAR                    */
   @00932  V7236  $2. /*  VIU Nº TEL PARAR FUMAR NA INTERNET                                   */
   @00934  V7237  $2. /*  VIU Nº TEL PARAR FUMAR NO RÁDIO                                      */
   @00936  V7238  $2. /*  VIU Nº TEL PARAR FUMAR NA TELEVIS@O                                  */
   @00938  V7239  $2. /*  VIU Nº TEL PARAR FUMAR NOS OUTDOORS/PÔSTERES                         */
   @00940  V7240  $2. /*  VIU Nº TEL PARAR FUMAR NOS FOLHETOS INFORMT                          */
   @00942  V7241  $2. /*  VIU Nº TEL PARAR FUMAR NOS JORNAIS OU REVISTAS                       */
   @00944  V7242  $2. /*  VIU Nº TEL PARAR FUMAR ATRAV AMIGO/FAMILIAR/CONHECIDOS               */
   @00946  V7243  $2. /*  OUTROS                                                               */
   @00948  V2730  $1. /*  ÚLT 12 MESES FOI ATENDIDO POR MÉD OU PROF SAÚ                        */
   @00949  V2731  $1. /*  TOT VEZES FOI ATENDIDO P MÉD OU PROF SAÚ NOS ÚLT 12 MESES            */
   @00950  V2732  $1. /*  ÚLT 12 MES DURANTE CONSUL POR MÉD OU PROF SAÚ PERG SE FUMAVA         */
   @00951  V2733  $1. /*  ÚLT 12 MES DURANTE CONSUL FOI ACONSELH A PARAR FUMAR                 */
   @00952  V2734  $1. /*  ESTE ATENDIMENTO FOI PELO SUS                                        */
   @00953  V2735  $1. /*  ÚLT 12 MESES TENTOU PARA DE FUMAR                                    */
   @00954  V2736  $1. /*  FAIXA TEMPO PERMANECEU SEM FUMAR                                     */
   @00955  V7244  $3. /*  QUANTID MESES PERMANECEU SEM FUMAR                                   */
   @00958  V7245  $3. /*  QUANTID SEMANAS PERMANECEU SEM FUMAR                                 */
   @00961  V7246  $3. /*  QUANTID DIAS PERMANECEU SEM FUMAR                                    */
   @00964  V7247  $1. /*  PROCEDIMENTO P PARAR FUMAR ACONSELH PROF SAÚ/CLÍNICAS                */
   @00965  V7255  $1. /*  RECEBEU ACONSELHAMENTO NO SUS                                        */
   @00966  V7248  $1. /*  REPOSIÇ@O DE NICOTINA/PASTILHAS/SPRAY/INALADOR/GOMA MASCAR           */
   @00967  V7256  $1. /*  RECEBEU REPOSIÇAO NICOTINA PELO SUS                                  */
   @00968  V7249  $1. /*  OUTRO MEDICAMEN C RECEITA MÉDICAS                                    */
   @00969  V7257  $1. /*  RECEBEU MEDICAM COM RECEITA MÉD PELO SUS                             */
   @00970  V7250  $1. /*  HOMEOPATIA, ACUPUNTURA                                               */
   @00971  V7258  $1. /*  RECEBEU HOMEOPATIA, ACUPUNTURA PELO SUS                              */
   @00972  V7251  $1. /*  CHÁS, ERVAS/PLANTAS MEDICINAIS                                       */
   @00973  V7252  $1. /*  SERVIÇOS AJUDA POR TEL PARAR FUMAR                                   */
   @00974  V7253  $1. /*  TROCOU P OUTRO PROD TABACO NÃO FAZ FUMAÇA                            */
   @00975  V7254  $1. /*  ALGUM OUTRO ( ESPECIFIQUE)                                           */
   @00976  V7259  $2. /*  VIU Nº TEL PARAR FUMAR NAS EMBALAGENS, OU MAÇOS CIGARR               */
   @00978  V7260  $2. /*  VIU Nº TEL PARAR FUMAR POR MÉD OU PROF SAÚDE  DO SUS                 */
   @00980  V7261  $2. /*  VIU Nº TEL PARAR FUMAR POR MÉD OU PROF SAÚDE PARTIC                  */
   @00982  V7262  $2. /*  VIU Nº TEL PARAR FUMAR NA INTERNET                                   */
   @00984  V7263  $2. /*  VIU Nº TEL PARAR FUMAR NO RÁDIO                                      */
   @00986  V7264  $2. /*  VIU Nº TEL PARAR FUMAR NA TELEVIS@O                                  */
   @00988  V7265  $2. /*  VIU Nº TEL PARAR FUMAR NOS OUTDOORS/PÔSTERES                         */
   @00990  V7266  $2. /*  VIU Nº TEL PARAR FUMAR NOS FOLHETOS INFORMT                          */
   @00992  V7267  $2. /*  VIU Nº TEL PARAR FUMAR NOS JORNAIS OU REVISTAS                       */
   @00994  V7268  $2. /*  VIU Nº TEL PARAR FUMAR ATRAV AMIGO/FAMILIAR/CONHECIDOS               */
   @00996  V7269  $2. /*  OUTROS                                                               */
   @00998  V2740  $1. /*  MELHOR ALTER DESCREVE MELHOR O Q PENSA SOBRE PARA FUMAR              */
   @00999  V2741  $1. /*  ATUAL MASCA FUMO, RAPÉ OU QQ PROD TABACO NÃO FAZ FUMAÇA              */
   @01000  V2742  $1. /*  PASSADO MASC FUMO, RAPÉ QQ PROD TABACO NÃO FAZ FUMAÇA DIARIM         */
   @01001  V2743  $1. /*  PASSADO MASCOU FUMO, RAPÉ QQ PROD TABACO NÃO FAZ FUMAÇ               */
   @01002  V2744  $2. /*  IDADE QD COMEÇ A MASC FUMO, QQ PROD TAB NÃO FAZ FUMAÇ OCASION        */
   @01004  V27441 $1. /*  NÃO SABE/ NAÕ LEMBRA IDADE Q COMEÇOU                                 */
   @01005  V2745  $2. /*  TOT ANOS COMEÇOU MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ OCASION         */
   @01007  V27451 $1. /*  NÃO SABE/ NÃO LEMBRA IDADE                                           */
   @01008  V2746  $2. /*  IDADE QD COMEÇ A MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ DIARIA          */
   @01010  V27461 $1. /*  NÃO SABE/ NÃO LEMBRA IDADE                                           */
   @01011  V2747  $2. /*  TOT ANOS COMEÇ MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ DIARIA            */
   @01013  V27471 $1. /*  NÃO SABE/ NÃO LEMBRA IDADE                                           */
   @01014  V27481 $1. /*  FAIXA DE QTS VEZES P DIA USA RAPÉ                                    */
   @01015  V7270  $3. /*  TOTAL VEZES  P DIA USA RAPÉ                                          */
   @01018  V27482 $1. /*  FAIXA DE QTS VEZES P DIA USA FUMO DE MASCAR                          */
   @01019  V7271  $3. /*  TOTAL VEZES  P DIA USA FUMO DE MASCAR                                */
   @01022  V27483 $1. /*  FAIXA DE QTS VEZES P DIA USA SNUS/SNUFFS (PELA BOCA)                 */
   @01023  V7272  $3. /*  TOTAL VEZES P DIA USA SNUS/SNUFFS (PELA BOCA)                        */
   @01026  V27484 $1. /*  FAIXA DE OUTROS (ESPECIFIQUE)                                        */
   @01027  V7273  $3. /*  TOTAL VEZES DE OUTROS                                                */
   @01030  V2749  $1. /*  FAIXA DE TEMPO DEPOIS DE ACORDAR MASCA  P PRIMEIRA VEZ               */
   @01031  V2750  $2. /*  IDADE COMEÇOU A MASCAR/ QQ PROD TABACO SEM FUMAÇA OCASIONAL          */
   @01033  V27501 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01034  V2751  $2. /*  TOT ANOS COMEÇ MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ OCASIO            */
   @01036  V27511 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01037  V2752  $2. /*  IDADE COMEÇOU A MASCAR/ QQ PROD TABACO SEM FUMAÇ DIARIA              */
   @01039  V27521 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01040  V2753  $2. /*  TOT ANOS COMEÇ MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ DIARIA            */
   @01042  V27531 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01043  V27491 $1. /*  FAIXA DE QTS VEZES POR SEMANA USA RAPÉ                               */
   @01044  V7274  $3. /*  TOTAL VEZES  POR SEMANA USA RAPÉ                                     */
   @01047  V27492 $1. /*  FAIXA DE QTS VEZES P SEMANA USA FUMO DE MASCAR                       */
   @01048  V7275  $3. /*  TOTAL VEZES  P SEMANA USA FUMO DE MASCAR                             */
   @01051  V27493 $1. /*  FAIXA DE QTS VEZES P SEMANA USA SNUS/SNUFFS (PELA BOCA)              */
   @01052  V7276  $3. /*  TOTAL VEZES P SEMANA USA SNUS/SNUFFS (PELA BOCA)                     */
   @01055  V27494 $1. /*  FAIXA DE OUTROS (ESPECIFIQUE)                                        */
   @01056  V7277  $3. /*  TOTAL VEZES DE OUTROS                                                */
   @01059  V2755  $2. /*  IDADE COMEÇOU A MASCAR/ QQ PROD TABACO SEM FUMAÇA OCASIONAL          */
   @01061  V27551 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01062  V2756  $2. /*  TOT ANOS COMEÇ MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ OCASIO            */
   @01064  V27561 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01065  V2757  $2. /*  IDADE COMEÇOU A MASCAR/ QQ PROD TABACO SEM FUMAÇ DIARIA              */
   @01067  V27571 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01068  V2758  $2. /*  TOT ANOS COMEÇ MASC FUMO,QQ PROD TAB NÃO FAZ FUMAÇ DIARIA            */
   @01070  V27581 $1. /*  NÃO SABE/ NÃO LEMBRA                                                 */
   @01071  V2759  $1. /*  FAIXA DE TEMP PAROU DE MASCAR FUMO QQ PROD TABACO SEM FUMAÇA         */
   @01072  V7278  $3. /*  QUANTIDADE DE ANOS QUE PAROU FUMAR                                   */
   @01075  V7279  $3. /*  QUANTIDADE DE MESES QUE PAROU FUMAR                                  */
   @01078  V7280  $3. /*  QUANTIDADE DE SEMANAS QUE PAROU FUMAR                                */
   @01081  V7281  $3. /*  QUANTIDADE DE DIAS QUE PAROU FUMAR                                   */
   @01084  V2760  $1. /*  FAIXA DE NORMAS SOBRE FUMAR DENTRO DA SUA CASA                       */
   @01085  V2761  $1. /*  DENTRO DE SUA CASA É PERM FUMAR EM TODOS LUGARES                     */
   @01086  V2762  $1. /*  FAIXA DE FREQ ALGUEM FUMA DENTRO DE SUA CASA                         */
   @01087  V2763  $1. /*  ATUALMENTE TRABALHA FORA DE CASA                                     */
   @01088  V2764  $1. /*  NORMALMENTE TRAB EM AMBIENTES FECHADOS OU ABERTOS                    */
   @01089  V2765  $1. /*  EXISTEM AMBIENTES FECHADOS EM SEU LOCAL DE TRAB                      */
   @01090  V2766  $1. /*  FAIXA NORMAS SOBRE FUMAR NOS AMBIENTES FECHADOS NO TRAB              */
   @01091  V2767  $1. /*  ÚLTI 30 DIAS ALGUEM FUMOU AMBIEN FECHA NO TRAB                       */
   @01092  V2768  $1. /*  ÚLTI 30 DIAS ESTEVE EM ALGUM PRÉDIO OU ESCRIT DO GOV                 */
   @01093  V2769  $1. /*  ALGUEM FUMOU DENTRO DE PRED OU ESCRT DO GOV ÚLT 30 DIAS              */
   @01094  V2770  $1. /*  ÚLTI 30 DIAS ESTEVE EM ALGUM ESTAB DE SAÚDE                          */
   @01095  V2771  $1. /*  ALGUEM FUMOU DENTRO DO ESTAB DE SAÚDE                                */
   @01096  V2772  $1. /*  ÚLTI 30 DIAS FOI A ALGUM RESTAURANTE                                 */
   @01097  V2773  $1. /*  ALGUEM FUMOU EM AMBIENTE FECHADO DO RESTAURANTE                      */
   @01098  V2774  $1. /*  ÚLT 30 DIAS USOU ALGUM TRANSPORTE PÚBLICO                            */
   @01099  V2775  $1. /*  ALGUEM FUMOU DENTRO DO TRANSPORTE PÚBLICO                            */
   @01100  V2776  $1. /*  CONHECE/ACREDITA, RESPIRAR FUMAÇ DOS OUTR PROVOC DOEN GRAVES         */
   @01101  V2777  $1. /*  COM BASE,CONHEC/ACRED, FUMAR CAUSA DOENÇAS GRAVES                    */
   @01102  V7282  $1. /*  COM BASE,CONHEC/ACREDITA FUMAR CAUSA DERRAME                         */
   @01103  V7283  $1. /*  COM BASE,CONHEC/ACRED FUMAR CAUSA ATAQUE CARDÍACO                    */
   @01104  V7284  $1. /*  COM BASE,CONHEC/ACRED FUMAR CAUSA CÂNCER DE PULMÃO                   */
   @01105  V2779  $1. /*  CONHEC/ACRED USAR TABACO SEM FUMAÇ CAUSA DOENÇAS GRAVES              */
   @01106  V2780  $1. /*  FAIXA DE UNIDADE DE COMPRA DE CIGARROS                               */
   @01107  V7285  $3. /*  QUANTIDADE DE CIGARROS QUE COMPROU                                   */
   @01110  V7286  $3. /*  QUANTIDADE DE MAÇOS DE CIGARROS QUE COMPROU                          */
   @01113  V7287  $3. /*  QUANTIDADE CIGARROS HAVIA EM CADA MAÇO                               */
   @01116  V7288  $3. /*  QUANTIDADE DE PACOTES DE CIGARROS QUE COMPROU                        */
   @01119  V7289  $3. /*  QUANTIDADE CIGARROS HAVIA EM CADA PACOTE                             */
   @01122  V7290  $3. /*  QUANTIDADE DE OUTROS                                                 */
   @01125  V7291  $3. /*  QUANTIDADE CIGARROS HAVIA EM CADA ?                                  */
   @01128  V2781  9.2 /*  NO TOTAL, QUANTO PAGOU POR ESTA COMPRA                               */
   @01137  V2782  $2. /*  FAIXA DE LOCALIDADE ONDE COMPROU ÚLTIMA VEZ                          */
   @01139  V7292  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PARAR FUMAR JORNAIS/REVISTA           */
   @01140  V7293  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PARAR FUMAR NA TELEVIS@O              */
   @01141  V7294  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PARAR FUMAR NO RÁDIO                  */
   @01142  V7295  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PARAR FUMAR OUTDOOR/POSTER            */
   @01143  V7296  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PAR FUMAR NOS FOLHETOS INFORM         */
   @01144  V7297  $1. /*  ÚLT 30 DIAS VIU/OUVIU INFORM P PARAR FUMAR EM OUTRO LUGAR            */
   @01145  V2784  $1. /*  ÚLT 30 DIAS VIU FOTOS SOB RISCO DE FUMAR NOS MAÇOS                   */
   @01146  V2785  $1. /*  ÚLT 30 DIAS VIU FOTOS LEVARAM A PENSAR EM PARAR DE FUMAR             */
   @01147  V2786  $1. /*  ATÉ Q PONT AS FOTOS FIZERAM PENSAR EM PARAR DE FUMAR                 */
   @01148  V7298  $1. /*  OBSERVOU PROPAGANDA NOS PONTOS DE VENDAS DE CIGARROS                 */
   @01149  V7299  $1. /*  OBSERVOU PROPAGANDA EM FILMES BRASILEIROS                            */
   @01150  V7300  $1. /*  OBSERVOU PROPAGANDA EM FILMES ESTRANGEIROS                           */
   @01151  V7301  $1. /*  OBSERVOU PROPAGANDA NA INTERNET                                      */
   @01152  V7302  $1. /*  OBSERVOU PROPAGANDA EM ALGUM OUTRO LUGAR                             */
   @01153  V2788  $1. /*  ÚLT 30 DIAS VIU ESPORTE/EVENTOS ASSOCIA A MARCA OU EMP CIGAR         */
   @01154  V7303  $1. /*  ÚLT 30 DIAS  REC OFERTA DE AMOSTRA GRÁTIS DE CIGARRO                 */
   @01155  V7304  $1. /*  ÚLT 30 DIAS  REC VENDA DE CIGARROS COM DESCONTOS                     */
   @01156  V7305  $1. /*  ÚLT 30 DIAS OFERTA DE BRINDES/DESC EM PROD AO COMPRAR CIGAR          */
   @01157  V7306  $1. /*  ÚLT 30 DIAS ROUPAS OU ITENS C MARCA DE CIGARROS                      */
   @01158  V7307  $1. /*  OUTROS                                                               */
   @01159  V7308  $1. /*  ÚLT 30 DIAS VIU ARTISTAS FUMANDO EM NOVELAS/PROG TV                  */
   @01160  V7309  $1. /*  ÚLT 30 DIAS VIU ARTISTAS FUMANDO FILMES BRASILEIROS                  */
   @01161  V7310  $1. /*  ÚLT 30 DIAS VIU ARTISTAS FUMANDO FILMES ESTRANGEIROS                 */
   @01162  V7311  $1. /*  ÚLT 30 DIAS VIU ARTISTAS FUMANDO PEÇA DE TEATRO                      */
   @01163  V7312  $1. /*  ÚLT 30 DIAS VIU ARTISTAS FUMANDO EM OUTROS                           */
   @01164  V2791  $1. /*  MODO DE PROIBIÇ@O DE PROPAGANDA NO BRASIL                            */
   @01165  SELEC  $1. /*  MOR. SEL. PETab                                                      */
   @01166  PESPET  5. /*  PESO DO MORADOR SELEC. PETab                                         */
   @01171  V2201  $1. /*  INFORMANTE PARTE 22                                                  */
   @01172  V2202  $2. /*  Nº ORDEM DO INFORMANTE PARTE 22                                      */
   @01174  V2203  $1. /*  UTILIZOU INTERNET EM ALGUM LOCAL                                     */
   @01175  V22031 $1. /*  ÚLT 3 MESES UTIL INTERNET DISCADA NO DOM                             */
   @01176  V22032 $1. /*  ÚLT 3 MESES UTIL INTERNET BANDA LARGA NO DOM                         */
   @01177  V22033 $1. /*  ÚLT 3 MESES UTIL INTERNET NO TRAB                                    */
   @01178  V22034 $1. /*  ÚLT 3 MESES UTIL INTERNET CURSO Q FREQ                               */
   @01179  V22035 $1. /*  ÚLT 3 MESES UTIL INTERNET CENTRO PÚBL GRÁTIS                         */
   @01180  V22036 $1. /*  ÚLT 3 MESES UTIL INTERNET CENTRO PÚBL PAGO                           */
   @01181  V22037 $1. /*  ÚLT 3 MESES UTIL INTERNET DOMIC OUTR PARENTS                         */
   @01182  V22041 $1. /*  ÚLT 3 MESES UTIL INTERNET SE COMUNIC COM OUTS PESS                   */
   @01183  V22042 $1. /*  ÚLT 3 MESES UTIL INTERNET COMPRAR OU ENC BENS OU SERVIÇ              */
   @01184  V22043 $1. /*  ÚLT 3 MESES UTIL INTERNET TRANSA BANCÁRIA                            */
   @01185  V22044 $1. /*  ÚLT 3 MESES UTIL INTERNET INTERAGIR COM  AUTORIDADES                 */
   @01186  V22045 $1. /*  ÚLT 3 MESES UTIL INTERNET EDUCAÇ E APRENDIZ                          */
   @01187  V22046 $1. /*  ÚLT 3 MESES UTIL INTERNET LER JORNAIS OU REVIS                       */
   @01188  V22047 $1. /*  ÚLT 3 MESES UTIL INTERNET ATIVIDD DE LAZER                           */
   @01189  V22048 $1. /*  ÚLT 3 MESES UTIL INTERNET BUSCAR INFORMAÇÕES                         */
   @01190  V22005 $1. /*  PRINCIPAL MOTIV NÃO USOU INTERNET NOS ÚLT 3 MESES                    */
   @01191  V22006 $1. /*  TEM TEL CELULAR P USO PESSOAL                                        */
   @01192  V1701  $1. /*  INFORMANTE P 17                                                      */
   @01193  V1702  $2. /*  Nº ORDEM DO INFORMANTE P 17                                          */
   @01195  V7731  $1. /*  ÚLT VEZ FEZ EXAME CL MAMAS                                           */
   @01196  V7732  $1. /*  EXAME FOI COBERTO POR PLANO SAÚDE                                    */
   @01197  V7733  $1. /*  PAGOU POR ESTE EXAME                                                 */
   @01198  V7734  $1. /*  EXAME FEITO P SUS                                                    */
   @01199  V7741  $1. /*  ÚLTIMA VEZ FEZ MAMOGRAFIA                                            */
   @01200  V7742  $1. /*  ÚLT MAMOG TEVE COBERT PLANO SAÚDE                                    */
   @01201  V7743  $1. /*  PAGOU POR ESTA MAMOGRAFIA                                            */
   @01202  V7744  $1. /*  ÚLT MAMOG FOI PELO SUS                                               */
   @01203  V7751  $1. /*  QD ÚLT VEZ FEZ PREV CANCER COLO ÚTERO                                */
   @01204  V7752  $1. /*  ÚLT EX PREV TEVE COBERT PLANO SAÚDE                                  */
   @01205  V7753  $1. /*  PAGOU P ESTE EXAME                                                   */
   @01206  V7754  $1. /*  ÚLT EX PREV FOI PELO SUS                                             */
   @01207  V7755  $1. /*  JA RETIROU ÚTERO                                                     */
   @01208  V7756  $1. /*  QT TEMPO FEZ ESTA CIRURGIA                                           */
   @01209  V1301  $1. /*  INFORMANTE P 13                                                      */
   @01210  V1302  $2. /*  Nº ORDEM DO INFORMANTE P 13                                          */
   @01212  V1303  $1. /*  COMO CONSIDERA S PP EST DE SAÚDE                                     */
   @01213  V3304  $1. /*  DUAS ULT SEMANAS DEIX REAL ATIV HABIT                                */
   @01214  V1305  $2. /*  DUAS ULT SEMANAS QTS DIAS NÃO REALIZOU                               */
   @01216  V1306  $2. /*  PRINC MOTIVO NÃO REALIZOU                                            */
   @01218  V1307  $1. /*  DUAS ULT SEMANAS EST ACAMADO                                         */
   @01219  V1308  $2. /*  QTS DIAS ESTEVE ACAMADO                                              */
   @01221  V1309  $1. /*  ALG MÉD OU PROF SAÚ DIS TER DOENÇA COLUNA OU COSTA                   */
   @01222  V1310  $1. /*  ALG MÉD OU PROF SAÚ DIS TER ARTRITE OU REUMAST                       */
   @01223  V1311  $1. /*  ALG MÉD OU PROF SAÚ DIS TER CÂNCER                                   */
   @01224  V1312  $1. /*  ALG MÉD OU PROF SAÚ DIS TER DIABETES                                 */
   @01225  V1313  $1. /*  ALG MÉD OU PROF SAÚ DIS TER BRONQU OU ASMA                           */
   @01226  V1314  $1. /*  ALG MÉD OU PROF SAÚ DIS TER HIPERT (PRES ALT)                        */
   @01227  V1315  $1. /*  ALG MÉD OU PROF SAÚ DIS TER DOENÇA DO CORAÇÃO                        */
   @01228  V1316  $1. /*  ALG MÉD OU PROF SAÚ DIS TER INSUF RENAL CRON                         */
   @01229  V1317  $1. /*  ALG MÉD OU PROF SAÚ DIS TER DEPRESSÃO                                */
   @01230  V1318  $1. /*  ALG MÉD OU PROF SAÚ DIS TER TUBERCULOSE                              */
   @01231  V1319  $1. /*  ALG MÉD OU PROF SAÚ DIS TER TENDINITE OU TENOS                       */
   @01232  V1320  $1. /*  ALG MÉD OU PROF SAÚ DIS TER CIRROSE                                  */
   @01233  V1321  $1. /*  TEM DIR PL SAÚDE, MÉDI,ODONT,PART,EMPRE OU PUBL                      */
   @01234  V1322  $1. /*  PL SAÚ É MUNICIPAL,ESTADUAL MILITAR                                  */
   @01235  V3322  $1. /*  TEMPO S INTERR TEM ESTE PL SAÚ                                       */
   @01236  V1323  $1. /*  COMO CONSIDERA ESTE PL SAÚ                                           */
   @01237  V1324  $1. /*  É TITULAR OU DEPEND                                                  */
   @01238  V1325  $1. /*  TITULAR MORA NESTE DOMIC                                             */
   @01239  V1326  $2. /*  Nº ORDEM DO TITULAR                                                  */
   @01241  V1327  $1. /*  TEM DEP OU AGREGADO NESTE PL SAÚ                                     */
   @01242  V1328  $1. /*  TEM DEP OU AGREGADO MORADOR NO DOMIC                                 */
   @01243  V1329  $2. /*  TOT MORADORES DEP OU AGREGADOS NO PLA SAÚ                            */
   @01245  V1330  $1. /*  TEM ALG NÃO MORA NESTE DOM DEP OU AGREG PLA SAÚ                      */
   @01246  V1331  $2. /*  TOT PES NÃO MORAM NESTE DOM DEP OU AGREG PLA SAÚ                     */
   @01248  V1332  $1. /*  QUEM PAGA MENSALIDADE                                                */
   @01249  V1333  $1. /*  VALOR DA MENSALID PLA SAÚ                                            */
   @01250  V1334  $1. /*  ATENDIM DE SAÚDE DO PP PLANO                                         */
   @01251  V1335  $1. /*  OFERECE LISTA MED, HOSP, LAB CREDENC                                 */
   @01252  V1336  $1. /*  PERMITE REEMBOLSO DE PAGAM                                           */
   @01253  V1337  $1. /*  ATENDE A OUTROS MUNIC DA FED                                         */
   @01254  V3337  $1. /*  TEM DIREITO A ATENDIM EM OUTRA UNID DA FED                           */
   @01255  V1338  $1. /*  DÁ DIREITO A CONSULTAS MÉDICAS                                       */
   @01256  V1339  $1. /*  DÁ DIREITO A EXAMES COMPLEMENTARES                                   */
   @01257  V1340  $1. /*  DÁ DIREITO A INTERNAÇÕES HOSPITAL                                    */
   @01258  V3340  $1. /*  TIPO DE ACOMODAÇÃO HOSPITAL                                          */
   @01259  V1341  $1. /*  DÁ DIREITO A MEDICAM FORA DA INTER                                   */
   @01260  V1342  $1. /*  DÁ DIREITO A ASSIST ODONTOLÓGICA                                     */
   @01261  V1343  $1. /*  COBRA ALGUM VALOR P ATENDIM                                          */
   @01262  V3343  $2. /*  TEM DIREITO A QTOS PLAN SAÚDE PART,EMPRES OU PÚBL                    */
   @01264  V1344  $1. /*  TEM PLANO SÓ PARA ODONTOLÓG                                          */
   @01265  V1345  $1. /*  COSTUMA PROCURAR SMP OS MESMOS SERVIÇOS                              */
   @01266  V1346  $2. /*  QDO DOENTE ONDE COSTUMA PROCURAR                                     */
   @01268  V1347  $1. /*  ÚLTIMOS DOZES MES CONSULTOU MÉD                                      */
   @01269  V1348  $2. /*  QTAS VEZES  CONSULTOU NOS ÚLT DOZE MES                               */
   @01271  V3348  $1. /*  UTILIZA MEDICAM USO CONTÍNUO                                         */
   @01272  V33481 $1. /*  MEDICAMT USO CONT FOI GRATUITO                                       */
   @01273  V33482 $1. /*  MEDICAMT USO CONT COMPR TDS, PARTE OU NENHUM                         */
   @01274  V3349  $1. /*  QDO FOI DENTISTA ULTI VEZ                                            */
   @01275  V3491  $1. /*  ÚLT VEZ DENT FOI COBERT PLA SAÚ                                      */
   @01276  V3492  $1. /*  PAGOU AO DENTISTA                                                    */
   @01277  V3493  $1. /*  ÚLT VEZ DENT FOI PELO SUS                                            */
   @01278  V1350  $1. /*  DUAS ÚLT SEMAN PROC ATEND PARA PP SAÚDE                              */
   @01279  V3351  $2. /*  PRINC MOTIV PROC ATENDIM SAÚ DUAS ÚLT SEMAN                          */
   @01281  V1352  $2. /*  QTS VEZES PROC ATEND POR ESTE MM MOTIV                               */
   @01283  V1353  $2. /*  ONDE PROC O PRIM ATEND POR ESTE MM MOTIV                             */
   @01285  V1354  $1. /*  NESTA PRIM VEZ PROC ATEND FOI ATENDIDO                               */
   @01286  V3355  $1. /*  MOTIV NÃO FOI ATENDIDO DUAS ÚLT SEMAN                                */
   @01287  V1356  $1. /*  DUAS ÚLT SEMAN VOLT PROC ATENDIM MM MOTIV                            */
   @01288  V1357  $2. /*  ONDE PROC ÚLTIM ATEND MM MOT                                         */
   @01290  V1358  $1. /*  ÚLTIM VEZ PROC, DUAS ÚLT SEMAN FOI ATEND                             */
   @01291  V3359  $1. /*  PQ NÃO FOI ATEND DUAS ÚLT SEMAN                                      */
   @01292  V3602  $2. /*  PRINC ATENDIM QUE RECEBEU                                            */
   @01294  V1361  $1. /*  ERA SERVIÇO PUBL, PART NÃO SABE                                      */
   @01295  V1364  $1. /*  FOI COBERTO POR PLAN SAÚDE                                           */
   @01296  V1365  $1. /*  PAGOU POR ESTE ATEND NAS DUAS ÚLT SEMAN                              */
   @01297  V1366  $1. /*  ATENDIMENTO FEITO PELO SUS                                           */
   @01298  V1367  $1. /*  COMO CONSIDERA ESTE ATENDIM                                          */
   @01299  V3367  $1. /*  FOI RECEITADO ALG MEDIC                                              */
   @01300  V3671  $1. /*  RECEBEU GRÁTIS REMÉD                                                 */
   @01301  V3672  $1. /*  COMPROU TDS, PARTE OU NENHUM MEDIC RECEIT                            */
   @01302  V3673  $2. /*  PRINC MOTIV NÃO TER COMPRADO TDS MEDIC                               */
   @01304  V3368  $2. /*  DUAS ÚLT SEMAN PQ NÃO PROCU SERV SAÚ                                 */
   @01306  V1369  $1. /*  DOZE ÚLTIM MES ESTEV INTERNAD                                        */
   @01307  V1370  $2. /*  QTS VEZES ESTEV INTERN                                               */
   @01309  V3371  $2. /*  QTS MESES PERMAN INTERNAD                                            */
   @01311  V3372  $2. /*  QTS DIAS PERMAN INTERNAD                                             */
   @01313  V1372  $1. /*  PRINC ATEND RECEB QDO INTERNADO ÚLTIM DOZE MES                       */
   @01314  V1373  $1. /*  ESTABELEC PÚBL, PARTIC NÃO SABE                                      */
   @01315  V1374  $1. /*  ÚLT INTERNAÇ FOI COBERTA POR PLA SAÚ                                 */
   @01316  V1375  $1. /*  PAGOU EST ÚLTI INTERNAÇ OCORR ÚLT DOZE MES                           */
   @01317  V1376  $1. /*  ÚLT INTERNAÇ FOI FEITA PELO SUS                                      */
   @01318  V1377  $1. /*  COMO CONSIDERA ESTE ATEND                                            */
   @01319  V3378  $1. /*  ÚLT DOZE MES TV ATENDIM EMERG NO DOMIC                               */
   @01320  V3379  $1. /*  NESTE ATEND FOI REMOV POR AMBULÂN                                    */
   @01321  V3791  $1. /*  ESTE ATENDIM FOI COBERTO PLA SAÚ                                     */
   @01322  V3792  $1. /*  PAGOU POR ESTE ATENDIM                                               */
   @01323  V3793  $1. /*  ESTE ATENDIMEN FOI FEITO PELO SUS                                    */
   @01324  V3794  $1. /*  ESTE ATENDIM FOI PEL CORPO DE BOMBEIROS                              */
   @01325  V1380  $1. /*  ÚLT DOZE MES SOFREU ALG TIPO DE VIOLÊNCIA                            */
   @01326  V1381  $1. /*  ÚLT DOZE MES DEIX REAL QQ ATIVID PQ VIOLÊN                           */
   @01327  V1382  $1. /*  ÚLT DOZE MES PROC SERV SAÚ POR CAUS VIOLÊN                           */
   @01328  V1383  $1. /*  FREQ DIRIGE OU ANDA AUTÓM OU VAN                                     */
   @01329  V1384  $1. /*  FREQ USA CINTO SEG DIRIGE OU ANDA CM PASSAG BC FRENT                 */
   @01330  V1385  $1. /*  FREQ USA CINTO SEG DIRIGE OU ANDA CM PASSAG BC TRAS                  */
   @01331  V1386  $1. /*  ÚLT DOZE MES SE ENVOL ACIDENT TRÃNS                                  */
   @01332  V3386  $2. /*  ÚLT DOZE MES QTS ACIDENT TRÃNS SOFREU                                */
   @01334  V33861 $1. /*  ERA CONDUTOR OU CARONA CARR,ONIB, BICICL ,PEDESTR                    */
   @01335  V1387  $1. /*  ÚLT DOZE MES DEIX REAL QQ ATIVID POR ACIDEN TRÂNS                    */
   @01336  V1388  $1. /*  ÚLT DOZE MES FOI INTERN POR ACIDEN TRÂNS                             */
   @01337  V1389  $1. /*  TRINTA ÚLT DIAS, MÉDIA QTS HRS SENTADO ASS TV FR TRAB                */
   @01338  V1390  $1. /*  TRINTA ÚLT DIAS, MÉDIA QTS HRS USOU COMPUT OU JOGOU                  */
   @01339  V1401  $1. /*  INFORMANTE  PARTE 14                                                 */
   @01340  V1402  $2. /*  Nº ORDEM DO INFORMANTE   PARTE 14                                    */
   @01342  V1403  $1. /*  PROBL SAÚ TEM DIFICUL ALIMENT,BANHO OU IR AO BANHEI                  */
   @01343  V1404  $1. /*  PROBL SAÚ TEM DIF CORRER,LEVAN OBJS PES, PRT ESPTES                  */
   @01344  V1405  $1. /*  PROBL SAÚ TEM DIF EMPURR MESA CONSERT DOM                            */
   @01345  V1406  $1. /*  PROBL SAÚ TEM DIF SUBIR LADEI OU ESCADA                              */
   @01346  V1407  $1. /*  PROBL SAÚ TEM DIF ABAIX, AJOELH OU CURVAR                            */
   @01347  V1408  $1. /*  PROBL SAÚ TEM DIF ANDAR MAIS Q UM KM                                 */
   @01348  V1409  $1. /*  PROBL SAÚ TEM DIF ANDAR 100 METROS                                   */
   @01349  V14091 $1. /*  PROBL SAÚ TEM DIF FAZER COMP ALIMN,MEDIC SEM AJUD                    */
   @01350  V1410  $1. /*  COSTUMA IR A PÉ OU BICLTA P TRAB                                     */
   @01351  V1411  $1. /*  TEMPO GASTO IR E VOLT DO TRAB                                        */
   @01352  V1412  $1. /*  NO TRAB ANDA, CARRG PESO OU QQ ATIV ESFORÇ FÍS                       */
   @01353  V1413  $1. /*  QUEM COST FAZER FAXI NA CASA                                         */
   @01354  V1414  $1. /*  ÚLT MES PRATICOU ALG EXERC FÍS OU ESPORTE                            */
   @01355  V1415  $1. /*  PRINC MODALIDD DO EXERC FÍS OU ESPORT Q PRAT                         */
   @01356  V1416  $1. /*  QTS DIAS POR SEMAN PRAT EXERC FÍS OU ESPORT                          */
   @01357  V1417  $1. /*  QTO DURA ESTA ATIVIDD                                                */
   @01358  V2801  $1. /*  ATUALMT FUMA PROD TABACO                                             */
   @01359  V2802  $1. /*  NO PASSADO FUMOU PROD TABC DIARIAMENT                                */
   @01360  V2803  $1. /*  NO PASSADO FUMOU ALGUM PROD TABC                                     */
   @01361  V2804  $1. /*  SOMANDO TDS CIGARROS CHEGA 5 MAÇS OU 100 CIGARS                      */
   @01362  V28051 $1. /*  CLASSE DE CIGARROS INDUSTR                                           */
   @01363  V8201  $3. /*  QUANTIDADE DE CIGARROS INDUST                                        */
   @01366  V28052 $1. /*  CLASSE DE CIGARR PALHA OU ENROL A MÃO                                */
   @01367  V8202  $3. /*  QUANTIDADE DE CIGARROS PALHA OU ENROL A MÃO                          */
   @01370  V28053 $1. /*  CLAS DE CIGARR CRAVO OU BALI                                         */
   @01371  V8203  $3. /*  QUANTIDADE DE CIGARR CRAVO OU BALI                                   */
   @01374  V28054 $1. /*  CLAS DE BIDIS OU CIGARR INDIANOS                                     */
   @01375  V8204  $3. /*  QUANTIDADE DE BIDIS OU CIGARR INDIANOS                               */
   @01378  V28055 $1. /*  CLAS DE CACHIMBO ( CHEIOS)                                           */
   @01379  V8205  $3. /*  QUANTIDADE DE CACHIMBO ( CHEIOS)                                     */
   @01382  V28056 $1. /*  CLAS DE CHARUTOS OU CIGARRILHAS                                      */
   @01383  V8206  $3. /*  QUANTIDADE DE CHARUTOS OU CIGARRILHAS                                */
   @01386  V28057 $1. /*  CLAS DE NARGUILÉ                                                     */
   @01387  V8207  $3. /*  QUANTIDADE DE SESSÕES DE NARGUILÉ                                    */
   @01390  V28058 $1. /*  CLAS DE OUTROS                                                       */
   @01391  V8208  $3. /*  QUANTIDADE DE OUTROS                                                 */
   @01394  V28061 $1. /*  CLAS CIGARR INDUST FUMA POR SEMANA                                   */
   @01395  V8209  $3. /*  QUANT CIGARR INDUST FUMA POR SEMANA                                  */
   @01398  V28062 $1. /*  CLAS CIGAR PALHA OU ENROL A MÃO FUMA POR SEMAN                       */
   @01399  V8210  $3. /*  QUANT CIGAR PALHA OU ENROL A MÃO FUMA POR SEMAN                      */
   @01402  V28063 $1. /*  CLAS DE CIGARR CRAVO OU BALI FUMA POR SEMAN                          */
   @01403  V8211  $3. /*  QUANT CIGARR CRAVO OU BALI FUMA POR SEMAN                            */
   @01406  V28064 $1. /*  CLAS DE BIDIS OU CIGARR INDIANOS FUMA POR SEMAN                      */
   @01407  V8212  $3. /*  QUANT DE BIDIS OU CIGARR INDIANOS FUMA POR SEMAN                     */
   @01410  V28065 $1. /*  CLAS DE CACHIMBO ( CHEIOS) FUMA POR SEMAN                            */
   @01411  V8213  $3. /*  QUANT DE CACHIMBO ( CHEIOS) FUMA POR SEMAN                           */
   @01414  V28066 $1. /*  CLAS DE CHARUTS OU CIGARRILHAS FUMA POR SEMAN                        */
   @01415  V8214  $3. /*  QUANT DE CHARUTS OU CIGARRILHAS FUMA POR SEMAN                       */
   @01418  V28067 $1. /*  CLAS DE NARGUILÉ FUMA POR SEMAN                                      */
   @01419  V8215  $3. /*  QUANT SESSÕES DE NARGUILÉ FUMA POR SEMAN                             */
   @01422  V28068 $1. /*  CLAS DE OUTROS FUMA POR SEMAN                                        */
   @01423  V8216  $3. /*  QUANT DE OUTROS FUMA POR SEMAN                                       */
   @01426  V2807  $1. /*  CLAS TEMPO PAROU DE FUMAR                                            */
   @01427  V8217  $3. /*  ANOS PAROU DE FUMAR                                                  */
   @01430  V8218  $3. /*  MESES PAROU DE FUMAR                                                 */
   @01433  V8219  $3. /*  SEMANAS PAROU DE FUMAR                                               */
   @01436  V8220  $3. /*  DIAS PAROU DE FUMAR                                                  */
   @01439  V2808  $1. /*  CLAS ATUALM MASCA FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ                   */
   @01440  V2809  $1. /*  PASSADO MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ DIARIAMTE              */
   @01441  V2810  $1. /*  PASSADO MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ                        */
   @01442  V28069 $1. /*  FREQ USA RAPÉ                                                        */
   @01443  V8222  $3. /*  TOT VEZES USA RAPÉ                                                   */
   @01446  V28070 $1. /*  FREQ USA FUMO DE MASCAR                                              */
   @01447  V8223  $3. /*  TOT VEZES USA FUMO DE MASCAR                                         */
   @01450  V28071 $1. /*  FREQ USA SNUS OU SNUFFS (USO P BOCA)                                 */
   @01451  V8224  $3. /*  TOT VEZES USA SNUS OU SNUFFS (USO P BOCA)                            */
   @01454  V28072 $1. /*  QUANT OUTROS  1 OU + POR DIA                                         */
   @01455  V8225  $3. /*  TOTAL OUTROS  1 OU + POR DIA                                         */
   @01458  V28073 $1. /*  CLAS VEZES USA RAPÉ P SEMANA                                         */
   @01459  V8226  $3. /*  TOT DIAS USA RAPÉ NA SEMANA                                          */
   @01462  V28074 $1. /*  CLAS VEZES USA FUMO DE MASCAR P SEMANA                               */
   @01463  V8227  $3. /*  TOT DIAS USA FUMO DE MASCAR P SEMANA                                 */
   @01466  V28075 $1. /*  CLAS VEZES USA SNUS OU SNUFFS (USO P BOCA) P SEMANA                  */
   @01467  V8228  $3. /*  TOT DIAS USA SNUS OU SNUFFS (USO P BOCA) P SEMANA                    */
   @01470  V28076 $1. /*  OUTROS ESPECIFIQUE  POR SEMANA                                       */
   @01471  V8229  $3. /*  TOTAL OUTROS  1 OU + POR SEMANA                                      */
   @01474  V2813  $1. /*  CLAS TEMPO PAROU MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ               */
   @01475  V8230  $3. /*  TOT ANOS PAROU MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ                 */
   @01478  V8231  $3. /*  TOT MESES PAROU MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ                */
   @01481  V8232  $3. /*  TOT SEMANAS PAROU MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ              */
   @01484  V8233  $3. /*  TOT DIAS PAROU MASC FUMO,US RAPÉ OU QQ NÃO FAZ FUMAÇ                 */
   @01487  V2814  $1. /*  INFORMANTE PARTE 28                                                  */
   @01488  V9993  $8. /* DATA GERA ARQ(AAAAMMDD)                                               */

          ;
run;
