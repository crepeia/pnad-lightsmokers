/*     PROGRAMA DE LEITURA EM SAS DO ARQUIVO DE MICRODADOS DE DOMICÍLIOS
  DA PNAD 2008 - PESQUISA BÁSICA, PESQUISA ESPECIAL DE TABAGISMO E
   SUPLEMENTARES DE SAÚDE E DE ACESSO À INTERNET E POSSE DE TELEFONE
                 MÓVEL CELULAR PARA USO PESSOAL */

/* Obs.: As duas primeiras posi$ões de V0102 (Número de controle)
        são o código da UF (Unidade da Federação).
   Obs.2: Ajuste o endereço do arquivo DOM2008.TXT no comando INFILE */


DATA DOM2008;
INFILE '...\DADOS\DOM2008.TXT' LRECL=208 MISSOVER;

INPUT   
   	@00001  V0101   $4.   /* ANO DA PESQUISA                */ 
   	@00005  UF      $2.   /* UNIDADE DA FEDERAÇÃO           */ 
   	@00005  V0102   $8.   /* NUMERO DE CONTROLE             */ 
   	@00013  V0103   $3.   /* NUMERO DE SERIE                */ 
   	@00016  V0104   $2.   /* TIPO DE ENTREVISTA             */ 
   	@00018  V0105   $2.   /* TOTAL DE MORADORES             */ 
   	@00020  V0106   $2.   /* TOTAL MORADORES 10 ANOS OU +   */ 
   	@00022  V0201   $1.   /* ESPECIE DE DOMICILIO           */ 
   	@00023  V0202   $1.   /* TIPO DE DOMICILIO              */ 
   	@00024  V0203   $1.   /* MATERIAL PAREDES EXTERNAS      */ 
   	@00025  V0204   $1.   /* MATERIAL DO TELHADO            */ 
   	@00026  V0205   $2.   /* NUMERO DE COMODOS              */ 
   	@00028  V0206   $2.   /* NUMERO COMODOS (DORMITORIOS)   */ 
   	@00030  V0207   $1.   /* DOMICILIO E                    */ 
   	@00031  V0208    12.  /* ALUGUEL PAGO EM 09/08          */ 
   	@00043  V0209    12.  /* PRESTACAO PAGA EM 09/08        */ 
   	@00055  V0210   $1.   /* TERRENO E PROPRIO ?            */ 
   	@00056  V0211   $1.   /* AGUA   CANALIZ.    EM    ALGUM */ 
   	@00057  V0212   $1.   /* AGUA E PROVENIENTE DE:         */ 
   	@00058  V0213   $1.   /* AGUA CANALIZ. DE REDE GERAL  ? */ 
   	@00059  V0214   $1.   /* AGUA DE POCO OU NASCENTE ?     */ 
   	@00060  V0215   $1.   /* EXISTE BANHEIRO  OU  SANITARIO */ 
   	@00061  V0216   $1.   /* BANHEIRO/SANITARIO E DE USO:   */ 
   	@00062  V2016   $2.   /* NUM.BANHEIROS DO DOMICILIO     */ 
   	@00064  V0217   $1.   /* ESCOADOURO  BANHEIRO/SANITARIO */ 
   	@00065  V0218   $1.   /* O LIXO DESTE DOMICILIO E:      */ 
   	@00066  V0219   $1.   /* QUAL A FORMA DE ILUMINACAO ?   */ 
   	@00067  V0220   $1.   /* TEM TELEFONE CELULAR ?         */ 
   	@00068  V2020   $1.   /* TEM TELEFONE FIXO?             */ 
   	@00069  V0221   $1.   /* TEM FOGAO DE 2 OU + BOCAS ?    */ 
   	@00070  V0222   $1.   /* TEM FOGAO DE UMA BOCA ?        */ 
   	@00071  V0223   $1.   /* FOGAO USA PREDOMINANTEMENTE:   */ 
   	@00072  V0224   $1.   /* TEM FILTRO DAGUA ?             */ 
   	@00073  V0225   $1.   /* TEM RADIO ?                    */ 
   	@00074  V0226   $1.   /* TEM TELEVISAO EM CORES ?       */ 
   	@00075  V0227   $1.   /* TEM TV EM PRETO E BRANCO ?     */ 
   	@00076  V2027   $1.   /* TEM APARELHO DE DVD ?          */ 
   	@00077  V0228   $1.   /* TEM GELADEIRA ?                */ 
   	@00078  V0229   $1.   /* TEM FREEZER ?                  */ 
   	@00079  V0230   $1.   /* TEM MAQUINA DE LAVAR ROUPA ?   */ 
   	@00080  V0231   $1.   /* TEM MICROCOMPUTADOR ?          */ 
   	@00081  V0232   $1.   /* ESTE MICRO ACESSA A INTERNET ? */ 
   	@00082  V2032   $1.   /* TEM CARRO OU MOTOCICLETA ?     */ 
   	@00083  V4105   $1.   /* CÓDIGO DE SITUA CENSIT         */ 
   	@00084  V4106   $1.   /* CÓDIGO TIPO DE SETOR           */ 
   	@00085  V4107   $1.   /* CÓDIGO DE ÁREA CENSITÁRIA      */ 
   	@00086  V4600   $2.   /* DIA DE REFERÊNCIA              */ 
   	@00088  V4601   $2.   /* MÊS DE REFERÊNCIA              */ 
   	@00090  V4602   $4.   /* ESTRATO                        */ 
   	@00094  V4604   $2.   /* NÚMERO MUNICÍPIOS SELECIOS     */ 
   	@00096  V4605   $12.  /* PROBABILIDADE DO MUNICÍPIO     */ 
   	@00108  V4606   $3.   /* NÚMERO DE SETORES SELECIOS     */ 
   	@00111  V4607   $12.  /* PROBABILIDADE DO SETOR         */ 
   	@00123  V4608   $6.   /* INTERVALO DE SELEÇÃO DO DOMIC  */ 
   	@00129  V4609   $9.   /* PROJEÇÃO DE POPULAÇÃO          */ 
   	@00138  V4610   $3.   /* INVERSO DA FRAÇÃO              */ 
   	@00141  V4611    5.   /* PESO DO DOMICÍLIO              */ 
   	@00146  V4614    12.  /* RENDIMENTO MENSAL DOMICR       */ 
   	@00158  UPA     $3.   /* DELIMITAÇÃO DO MUNICÍPIO       */ 
   	@00161  V4617   $7.   /* STRAT - ID. AUTO E NAUT        */ 
   	@00168  V4618   $7.   /* PSU - UN. PRIMÁRIA ARAG        */ 
   	@00175  V4619   $5.   /* FATOR DE SUBAMOSTRAGEM         */ 
   	@00180  V4620   $2.   /* NUM COMPONENTES DO DOM C/A     */ 
   	@00182  V4621    12.  /* REND. DOMICILIAR P/CAPITA C    */ 
   	@00194  V4622   $2.   /* FAIXA REND. DOM P/CAP          */ 
   	@00196  V4624   $1.   /* FORMA ABAST.AGUA-VAR.NOVA      */ 
   	@00197  SUBAMO  $1.   /* MARCA DE SELEÇÃO PARA A PETAB  */ 
   	@00198  V0233   $1.   /* CADASTRO NA UNID.SAÚDE DA FAM  */ 
   	@00199  V0234   $1.   /* QUANDO O DOMIC. FOI CADASTRADO */ 
    	@00200  V9992   $8.   /* DATA GERA ARQ(AAAAMMDD)        */ 

           ;   
run; 











 
