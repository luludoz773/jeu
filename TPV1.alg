<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="jeu du nombre mystère" courant="AFFICHER &quot;bravo ! Vous avez trouvé en &quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2defaut="" F2etat="inactif" F2para=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" nbDecimales="8" arrondiAuto="vrai" maxBoucle="500000" totalBoucles="5000000" epaisseurPoint="2" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#saisie" algoitem="saisie EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#nbmystere" algoitem="nbmystere EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#essais" algoitem="essais EST_DU_TYPE NOMBRE"/>
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
            <item code="5#saisie#essais+1#pasliste" algoitem="saisie PREND_LA_VALEUR essais+1"/>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="4#bravo ! Vous avez trouvé en #0" algoitem="AFFICHER &quot;bravo ! Vous avez trouvé en &quot;"/>
        <item code="3#essais#0#pasliste" algoitem="AFFICHER essais"/>
        <item code="4# essais#0" algoitem="AFFICHER &quot; essais&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
