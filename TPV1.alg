<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2defaut="" F2para="" F2etat="inactif" F2lignes=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param maxBoucle="500000" epaisseurLigne="2" arrondiAuto="vrai" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" totalBoucles="5000000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#saisie" algoitem="saisie EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbmystere" algoitem="nbmystere EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbmystere#ALGOBOX_ALEA_ENT(1,50)#pasliste" algoitem="nbmystere PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,50)"/>
        <item code="4#Donnez un nombre entre 1 et 50#1" algoitem="AFFICHER &quot;Donnez un nombre entre 1 et 50&quot;"/>
        <item code="2#saisie#pasliste" algoitem="LIRE saisie"/>
        <item code="103#commentaire" algoitem=""/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
