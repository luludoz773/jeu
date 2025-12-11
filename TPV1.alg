<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="TANT_QUE (saisie!=nbmystere ET essais&lt;maxessais) FAIRE" texte="jeu du nombre mystère"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2defaut="" F2para=""/>
    <repere repcode="-10#10#-10#10#2#2" repetat="inactif"/>
    <param epaisseurPoint="2" epaisseurLigne="2" totalBoucles="5000000" nbDecimales="8" arrondiAuto="vrai" totalAffichages="1000" maxBoucle="500000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="saisie EST_DU_TYPE NOMBRE" code="1#NOMBRE#saisie"/>
        <item algoitem="nbmystere EST_DU_TYPE NOMBRE" code="1#NOMBRE#nbmystere"/>
        <item algoitem="essais EST_DU_TYPE NOMBRE" code="1#NOMBRE#essais"/>
        <item algoitem="maxessais EST_DU_TYPE NOMBRE" code="1#NOMBRE#maxessais"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="nbmystere PREND_LA_VALEUR ALGOBOX_ALEA_ENT(1,50)" code="5#nbmystere#ALGOBOX_ALEA_ENT(1,50)#pasliste"/>
        <item algoitem="AFFICHER &quot;Donnez un nombre entre 1 et 50&quot;" code="4#Donnez un nombre entre 1 et 50#1"/>
        <item algoitem="LIRE saisie" code="2#saisie#pasliste"/>
        <item algoitem="maxessais PREND_LA_VALEUR 10" code="5#maxessais#10#pasliste"/>
        <item algoitem="TANT_QUE (saisie!=nbmystere ET essais&lt;maxessais) FAIRE" code="15#saisie!=nbmystere ET essais&lt;maxessais">
            <item algoitem="DEBUT_TANT_QUE" code="16#debuttantque"/>
            <item algoitem="SI (saisie>nbmystere) ALORS" code="6#saisie>nbmystere">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="AFFICHER &quot;trop grand&quot;" code="4#trop grand#0"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="AFFICHER &quot;trop petit&quot;" code="4#trop petit#0"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="LIRE saisie" code="2#saisie#pasliste"/>
            <item algoitem="AFFICHER &quot;Réessaye&quot;" code="4#Réessaye#1"/>
            <item algoitem="essais PREND_LA_VALEUR essais+1" code="5#essais#essais+1#pasliste"/>
            <item algoitem="FIN_TANT_QUE" code="17#fintantque"/>
        </item>
        <item algoitem="SI (saisie==nbmystere) ALORS" code="6#saisie==nbmystere">
            <item algoitem="DEBUT_SI" code="7#debutsi"/>
            <item algoitem="AFFICHER &quot;bravo ! Vous avez trouvé en &quot;" code="4#bravo ! Vous avez trouvé en #0"/>
            <item algoitem="AFFICHER essais" code="3#essais#0#pasliste"/>
            <item algoitem="AFFICHER &quot; essais&quot;" code="4# essais#0"/>
            <item algoitem="FIN_SI" code="8#finsi"/>
            <item algoitem="SINON" code="9#sinon">
                <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                <item algoitem="AFFICHER &quot;perdu !&quot;" code="4#perdu !#0"/>
                <item algoitem="FIN_SINON" code="11#finsinon"/>
            </item>
        </item>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
