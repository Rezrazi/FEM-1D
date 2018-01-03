# Méthode d'éléments finis en 1D
![Splash](https://i.imgur.com/npm5Cny.png)

Considérant l'équation différentielle suivante : 
$$\alpha\ddot{u}+\beta u = f$$
On cherche à évaluer la solution de cette équation numériquement à l'aide d'un script écrit sous Matlab.
## Concept
Le programme **MEFSolution** fonctionne de la manière suivante : 
1. Maillage du domaine.
2. Calcul des matrices élémentaires avec la méthode de Boole.
3. Assemblage des matrices élémentaires en matrice globale pour tout le domaine.
4. Résolution numérique du problème.
5. Evaluation de l'erreur éventuelle.

Le programme prend donc les paramètres suivants :
- Le domaine en 1D [a,b]
- Pas de maillage
- Coefficients alpha et beta
- Fonction 2ème membre

## Utilisation
![Interface](https://i.imgur.com/Hq44K8A.png)
*L'interface générale de l'application*

Saisie des données d'entrée
![Données entrée](https://i.imgur.com/yibPcvP.png)

Si on désire évaluer l'erreur au cas ou la solution exacte du problème est connue
![Analyse d'erreur](https://i.imgur.com/D2V2ZpS.png)

Choisir la méthode d'approximation (P1/P2) et si le programme doit exporter
![Méthode et exportation](https://i.imgur.com/rn1QXOE.png)

Après saisie, lancer l'évaluation, un timer enregistre le temps de fonctionnement de l'application  
![Evaluation](https://i.imgur.com/szOrquw.png)

Panel des résultats, regroupe les éléments suivants : 
- Maillage
- Solution évaluée
- Comparaison des solution (En cas d'analyse d'erreur)
- Analyse d'erreur
- Erreur relative
- Log, suivi des étapes effectuées  


![Résultats](https://i.imgur.com/KmxzTRG.png)

## Exemple d'évaluation
Prenons le cas où $$f(x) = sin(x)$$ et $$\alpha=1$$ et $$\beta=2$$
### Maillage
![](https://i.imgur.com/n4FjqoN.png)
### Solution évaluée
![](https://i.imgur.com/6HIB9lI.png)
### Comparaison de solutions
![](https://i.imgur.com/2ESO77s.png)
### Analyse d'erreur
![](https://i.imgur.com/2ESO77s.png)
### Erreur relative
![](https://i.imgur.com/lQQprmR.png)
### Log
![](https://i.imgur.com/Ck6M8wo.png)