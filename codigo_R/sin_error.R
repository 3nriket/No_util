

# data_lineal$error_general_partido<-NULL
# data_lineal$error_general_wing<-NULL
# data_lineal$error_casa_partido<-NULL
# data_lineal$error_casa_wing<-NULL
# data_lineal$error_carrera_partido<-NULL
# data_lineal$error_carrera_wing<-NULL
# data_lineal$error_carrera_casa_partido<-NULL
# data_lineal$error_carrera_casa_wing<-NULL
# data_lineal$house_effect<-NULL
# data_lineal$wing_effect<-NULL
# 
# 
# data_arbol$error_general_partido<-NULL
# data_arbol$error_general_wing<-NULL
# data_arbol$error_casa_partido<-NULL
# data_arbol$error_casa_wing<-NULL
# data_arbol$error_carrera_partido<-NULL
# data_arbol$error_carrera_wing<-NULL
# data_arbol$error_carrera_casa_partido<-NULL
# data_arbol$error_carrera_casa_wing<-NULL
# data_arbol$house_effect<-NULL
# data_arbol$wing_effect<-NULL

test_2023$error_general_partido<-NULL
test_2023$error_general_wing<-NULL
test_2023$error_casa_partido<-NULL
test_2023$error_casa_wing<-NULL
test_2023$error_carrera_partido<-NULL
test_2023$error_carrera_wing<-NULL
test_2023$error_carrera_casa_partido<-NULL
test_2023$error_carrera_casa_wing<-NULL
test_2023$house_effect<-NULL
test_2023$wing_effect<-NULL

test_semma$error_general_partido<-NULL
test_semma$error_general_wing<-NULL
test_semma$error_casa_partido<-NULL
test_semma$error_casa_wing<-NULL
test_semma$error_carrera_partido<-NULL
test_semma$error_carrera_wing<-NULL
test_semma$error_carrera_casa_partido<-NULL
test_semma$error_carrera_casa_wing<-NULL
test_semma$house_effect<-NULL
test_semma$wing_effect<-NULL

train_semma$error_general_partido<-NULL
train_semma$error_general_wing<-NULL
train_semma$error_casa_partido<-NULL
train_semma$error_casa_wing<-NULL
train_semma$error_carrera_partido<-NULL
train_semma$error_carrera_wing<-NULL
train_semma$error_carrera_casa_partido<-NULL
train_semma$error_carrera_casa_wing<-NULL
train_semma$house_effect<-NULL
train_semma$wing_effect<-NULL

# semma$error_general_partido<-NULL
# semma$error_general_wing<-NULL
# semma$error_casa_partido<-NULL
# semma$error_casa_wing<-NULL
# semma$error_carrera_partido<-NULL
# semma$error_carrera_wing<-NULL
# semma$error_carrera_casa_partido<-NULL
# semma$error_carrera_casa_wing<-NULL
# semma$house_effect<-NULL
# semma$wing_effect<-NULL
                                          

# #### 1.2. Modelos de regresión (WRAPPERS): ####
# data <- data_lineal # definimos datos de entrenamiento depurados. 80% del dataset.
# 
# #### 1.2.1. AIC: ####
# full<-glm(errores~.,data=data, family = gaussian(link = "identity"))
# null<-glm(errores~1,data=data, family = gaussian(link = "identity"))
# selec1<-stepAIC(null,scope=list(upper=full),
#                 direction="both",family = gaussian(link = "identity"),trace=FALSE)
# vec<-(names(selec1[[1]]))
# length(vec)
# # 47
# dput(vec)
# 
# 
# detach(package:plyr)
# library(dplyr)
# source("cruzadas avnnet y lin.R")
# medias_reg_AIC_1<-cruzadalin(data= data_lineal,
#                              vardep="errores",
#                              listconti= c(
#                                "house_effect_e", "party_PODEMOS", "party_UP",
#                                "est_surv_vote", "prom_carrera_partido", "prom_carrera_wing",
#                                "party_VOX", "party_PSOE", "party_EA", "gov_pre_PP", "party_CIU",
#                                "party_IU", "party_CC", "party_AP", "pobl_pobreza_rate", "gov_exp_pib",
#                                "party_UPYD", "prom_general_wing", "prom_casa_partido", "prom_general_partido",
#                                "party_UCD", "eco_fisc_ing_percap", "gov_cor_rate", "gov_exp_edu",
#                                "party_PCE", "gov_pre_PSOE", "party_HB", "party_BNG", "poll_firm_ASEP",
#                                "eco_pib_var", "pobl_idh", "poll_firm_METROSCOPIA", "party_PA",
#                                "party_PNV", "party_EE", "pobl", "days_to_elec", "lead2_party_UP",
#                                "poll_firm_SOCIOMÉTRICA", "poll_firm_ELECTOPANEL", "poll_firm_GESOP",
#                                "poll_firm_TNS_DEMOSCOPIA", "poll_firm_NOXA", "lead_party_PODEMOS",
#                                "poll_firm_OPINA", "lead_party_UCD"
#                                 ),
#                              listclass= c(""),
#                              grupos=4,
#                              sinicio=1234,
#                              repe=10)
# medias_reg_AIC_1$modelo="AIC_1"
# saveRDS(medias_reg_AIC_1, "AIC_1")
# medias_reg_AIC_1 <- readRDS("AIC")
# 
# #### 1.2.2. AIC Repetido: ####
# 
# source("funcion steprepetido.R")
# lista<-steprepetido(data= data,
#                     vardep=c("errores"),
#                     listconti=c("house_effect_e", "party_PODEMOS", "party_UP", 
#                                 "est_surv_vote", "prom_carrera_partido", "prom_carrera_wing", 
#                                 "party_VOX", "party_PSOE", "party_EA", "gov_pre_PP", "party_CIU", 
#                                 "party_IU", "party_CC", "party_AP", "pobl_pobreza_rate", "gov_exp_pib", 
#                                 "party_UPYD", "prom_general_wing", "prom_casa_partido", "prom_general_partido", 
#                                 "party_UCD", "eco_fisc_ing_percap", "gov_cor_rate", "gov_exp_edu", 
#                                 "party_PCE", "gov_pre_PSOE", "party_HB", "party_BNG", "poll_firm_ASEP", 
#                                 "eco_pib_var", "pobl_idh", "poll_firm_METROSCOPIA", "party_PA", 
#                                 "party_PNV", "party_EE", "pobl", "days_to_elec", "lead2_party_UP", 
#                                 "poll_firm_SOCIOMÉTRICA", "poll_firm_ELECTOPANEL", "poll_firm_GESOP", 
#                                 "poll_firm_TNS_DEMOSCOPIA", "poll_firm_NOXA", "lead_party_PODEMOS", 
#                                 "poll_firm_OPINA", "lead_party_UCD"),
#                     listclass=c(""),
#                     sinicio=1234,
#                     sfinal=1238,
#                     porcen=0.8,
#                     criterio="AIC")
# 
# tabla<-lista[[1]]
# dput(lista[[2]][[1]])
# 
# # medias2<-cruzadalin(data=data,
# #                      vardep="error",
# #                      listconti= c("party_UP", "party_PODEMOS", "est_surv_vote", 
# #                                   "prom_carrera_partido", "party_VOX", "party_EA", "party_IU", 
# #                                   "party_UPYD", "lead2_party_ARM", "party_UCD", 
# #                                   "party_CS", "gov_exp_san_percap", "party_BNG", 
# #                                   "party_CCC", "party_FN", "party_CIU", "poll_firm_OBRADOIRO_SOCIO", 
# #                                   "lead2_party_EA", "lead2_party_PSOE", "poll_firm_METROSCOPIA", 
# #                                   "poll_firm_MYWORD", "poll_firm_SIMPLE_LÓGICA", "poll_firm_NC_REPORT", 
# #                                   "porc_surveys_firm", "party_PNV", "party_CDS"),
# #                      listclass=c(""),
# #                      grupos=4,
# #                      sinicio=1234,
# #                      repe=10)
# #  medias2$modelo="repAIC"
# #  saveRDS(medias2, "repAIC")
# medias_step_rep_AIC <- readRDS("repAIC")
# 
# #### 1.2.3. BIC: ####
# 
# full<-glm(errores~.,data=data, family = gaussian(link = "identity"))
# null<-glm(errores~1,data=data, family = gaussian(link = "identity"))
# 
# selec1<-stepAIC(null, 
#                 scope=list(upper=full),
#                 direction="both",
#                 family = gaussian(link = "identity"),
#                 trace=FALSE, 
#                 k=3.86) #  k=log(n)
# 
# vec<-(names(selec1[[1]]))
# 
# length(vec)
# # 41
# dput(vec)
# 
# # detach(package:plyr)
# # library(dplyr)
# source("cruzadas avnnet y lin.R")
# medias_reg_BIC_1<-cruzadalin(data=data_lineal,
#                              vardep="errores",
#                              listconti= c("house_effect_e", "party_PODEMOS", "party_UP",
#                                           "est_surv_vote", "prom_carrera_partido", "prom_carrera_wing",
#                                           "party_VOX", "party_PSOE", "party_EA", "gov_pre_PP", "party_CIU",
#                                           "party_IU", "party_CC", "party_AP", "pobl_pobreza_rate", "party_UPYD",
#                                           "prom_general_wing", "prom_casa_partido", "prom_general_partido",
#                                           "party_UCD", "eco_fisc_ing_percap", "gov_cor_rate", "gov_exp_edu",
#                                           "party_PCE", "gov_pre_PSOE", "party_HB", "party_BNG", "poll_firm_ASEP",
#                                           "eco_pib_var", "pobl_idh", "poll_firm_METROSCOPIA", "party_PA",
#                                           "party_PNV", "party_EE", "pobl", "poll_firm_SOCIOMÉTRICA", "days_to_elec",
#                                           "poll_firm_ELECTOPANEL", "lead2_party_UP", "poll_firm_GESOP"),
#                              listclass=c(""),
#                              grupos=4,
#                              sinicio=1234,
#                              repe=10)
# medias_reg_BIC_1$modelo="BIC_1"
# saveRDS(medias_reg_BIC_1, "BIC_1")
# medias_reg_BIC_1 <- readRDS("BIC")
# # 
# 
# #### 1.2.4. BIC Repetido: ####
# source("funcion steprepetido.R")
# 
# lista<-steprepetido(data=data,
#                     vardep=c("errores"),
#                     listconti=c("house_effect_e", "party_PODEMOS", "party_UP", 
#                                 "est_surv_vote", "prom_carrera_partido", "prom_carrera_wing", 
#                                 "party_VOX", "party_PSOE", "party_EA", "gov_pre_PP", "party_CIU", 
#                                 "party_IU", "party_CC", "party_AP", "pobl_pobreza_rate", "party_UPYD", 
#                                 "prom_general_wing", "prom_casa_partido", "prom_general_partido", 
#                                 "party_UCD", "eco_fisc_ing_percap", "gov_cor_rate", "gov_exp_edu", 
#                                 "party_PCE", "gov_pre_PSOE", "party_HB", "party_BNG", "poll_firm_ASEP", 
#                                 "eco_pib_var", "pobl_idh", "poll_firm_METROSCOPIA", "party_PA", 
#                                 "party_PNV", "party_EE", "pobl", "poll_firm_SOCIOMÉTRICA", "days_to_elec", 
#                                 "poll_firm_ELECTOPANEL", "lead2_party_UP", "poll_firm_GESOP"),
#                     sinicio=12345,
#                     sfinal=12385,
#                     porcen=0.8,
#                     criterio="BIC")
# 
# #repBIC
# tabla<-lista[[1]]
# dput(lista[[2]][[1]])
# 
# # medias4<-cruzadalin(data=data,
# #                      vardep="error",
# #                      listconti= 
# #                        c("party_UP", "party_PODEMOS", "est_surv_vote", 
# #                          "prom_carrera_partido", "party_VOX", "party_EA", "party_IU", 
# #                          "party_UPYD", "lead2_party_ARM", "party_UCD", 
# #                          "party_CS", "lead2_party_UCD", "party_BNG", 
# #                          "party_CCC", "party_FN", "party_CIU", "poll_firm_OBRADOIRO_SOCIO", 
# #                          "lead2_party_EA", "lead2_party_PSOE", "poll_firm_METROSCOPIA"),
# #                      listclass=c(""),
# #                      grupos=4,
# #                      sinicio=1234,
# #                      repe=10)
# # medias4$modelo="repBIC"
# # saveRDS(medias4, "repBIC")
# medias_step_rep_BIC <- readRDS("repBIC")
# 
# #### 1.2.5. Boruta: ####
# out.boruta <- Boruta(errores~., data = data)
# 
# print(out.boruta)
# 
# summary(out.boruta)
# 
# sal<-data.frame(out.boruta$finalDecision)
# 
# sal2<-sal[which(sal$out.boruta.finalDecision=="Confirmed"),,drop=FALSE]
# dput(row.names(sal2))
# # c("age", "landValue", "livingArea", "pctCollege", "bedrooms", 
# # "fireplaces", "bathrooms", "rooms", "lot", "nonlivingare", "heating_hot.air", 
# # "heating_hot.water.steam", "fuel_gas", "fuel_oil", "sewer_public.commercial", 
# # "sewer_septic", "waterfront_Yes", "newConstruction_Yes", "centralAir_Yes")
# length(dput(row.names(sal2)))
# # 19  
# # detach(package:plyr)
# # library(dplyr)
# source("cruzadas avnnet y lin.R")
# medias_reg_Boruta <-cruzadalin(data= data,
#                                vardep="errores",
#                                listconti= c( "error_carrera_casa_partido", "est_surv_vote", 
#                                              "prom_carrera_casa_partido", "error_carrera_wing", "gov_pre_PSOE", 
#                                              "party_EH.BILDU", "poll_firm_SOCIOMÉTRICA", "n", "poll_firm_GESOP", 
#                                              "poll_firm_VOX_PÚBLICA", "lead2_party_PSOE", "urna_7"),
#                                listclass= c(""),
#                                grupos=4,
#                                sinicio=1234,
#                                repe=10)
# medias_reg_boruta$modelo="boruta"
# saveRDS(medias_reg_boruta, "boruta")
# medias_reg_boruta <- readRDS("boruta")
# 
# 
# union<-rbind(medias_reg_AIC_1, medias_reg_BIC_1)
# 
# par(cex.axis=0.5)
# boxplot(data=union, error~modelo) 
# union$error2<-sqrt(union$error)
# ggplot(union, aes(x=modelo, y=error2, fill=modelo)) +
#   geom_boxplot(outlier.colour="black", outlier.shape=1,
#                outlier.size=2) +
#   labs(x = "Wrappers y Filters", y = 'MAE', title = "Boxplot vc repetida") 
# #### 1.2.6. RFE: ####
# #### 1.2.7. MXM_MMPC: ####
# #### 1.2.8. MXM_SES: ####