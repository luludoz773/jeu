<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="jeu du nombre mystère" courant="AFFICHER &quot;Donnez un nombre entre 1 et 50&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2para="" F2lignes="" F2etat="inactif" F2defaut=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param totalBoucles="5000000" epaisseurPoint="2" totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" epaisseurLigne="2" maxBoucle="500000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#saisie" algoitem="saisie EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbmystere" algoitem="nbmystere EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="5#nbmystere#ALGOBOX_ALEA_ENT(1,50)#pasliste" algoitem="nbmystere PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,50)"/>
        <item code="4#Donnez un nombre entre 1 et 50#1" algoitem="AFFICHER &quot;Donnez un nombre entre 1 et 50&quot;"/>
        <item code="2#saisie#pasliste" algoitem="LIRE saisie"/>
        <item code="15#saisie!=nbmystere" algoitem="TANT_QUE (saisie!=nbmystere) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="6#saisie>nbmystere" algoitem="SI (saisie>nbmystere) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#trop grand#0" algoitem="AFFICHER &quot;trop grand&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#trop petit#0" algoitem="AFFICHER &quot;trop petit&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="2#saisie#pasliste" algoitem="LIRE saisie"/>
            <item code="4#Réessaye#1" algoitem="AFFICHER &quot;Réessaye&quot;"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#bravo#0" algoitem="AFFICHER &quot;bravo&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
