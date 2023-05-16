*** Settings ***
Library  Selenium2Library
*** Variables ***
#xpath & #ID

#########Login########
${User_Email}         id : mui-1
${user_Mot de passe}  id : mui-2
${Signin}             id : mui-3
#####others#######
${Continuer_vers_Espace_fidélité}  id:GoToFidelitySpace
${Acceuil}          xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[1]
${Générer_un_bon_achat}   Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[1]/div[2]/button
${Bringo}              Xpath://*[@id="__next"]/div/div[1]/div[2]/div[2]/button[1]
${Mes_bons_Achat}      Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/div[2]/button
${Messanger}           xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[3]
${ProduitsCarrefour}   Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[3]
${Promotions}          Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[3]
${Services}            Xpath://*[@id="__next"]/div/div[1]/div[2]/nav/a[4]
${Transfert_de_Point}  Xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/div[4]/button
${Choisir_votre_magasin_principal}  xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/div[2]/button
${WhatsApp}            xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/div[2]/button
${Afficher_FAQs}       Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/a[5]
${HistoriqueAchats}    Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[1]/div/a
${ProduitsBoost}       Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[1]/div[1]/div/a
${TicketDeCaisse}      Xpath://*[@id="__next"]/div/div[2]/div/div[2]/div[2]/div[2]/table/tbody/tr[1]/td[1]/div
${codePin}             xpath://*[@id="__next"]/div/div[2]/div/div[1]/div[2]/button[1]
${Connecté_Vous}
${Notification}
${CarteFID}
${Envoyer-remarque}   Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[3]/button
${Formulaire_De_contant}
${Rendre_mot_de_passe_visible}  Xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[2]/div[2]/div/div/button
${connecter_pour_la_première_fois}   xpath://*[@id="__next"]/div/div/div[2]/div[2]/div[1]/button
${Continuer_PremiereConnexion}     id : mui-5
${Facebook}     Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[4]/a[1]
${Instagram}      Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[4]/a[2]
${Youtube}        Xpath://*[@id="__next"]/div/div[3]/div[2]/div[1]/nav[4]/a[3]
${ResterConnecter_Checkbox}   xpath://*[@id="__next"]/div/div/div[2]/div[2]/form/div[3]/label/span[1]
${SeDeconnecter}            xpath://*[@id="mui-1"]/div/div/div[3]
${TicketdeCaisse}




