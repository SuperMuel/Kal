# Kal

Kal est un outil permettant de transférer un emploi du temps de la fac sur un agenda électronique automatiquement. Il permet aussi de customiser l'emploi du temps automatiquement. (Supprimer des cours, modifier la couleur, les titres des événements...)

## Comment ça fonctionne

### 📱 Application:

Kal sera accesstible sur une application android et IOs (aussi sur le web), le tout fait en [Flutter](https://flutter.dev/). Elle permettra à l'utilisateur de configurer ses emplois du temps et agendas. Elle guide l'utilisateur au maximum.

### 📡 Backend

Kal sera constitué d'une [Backend](./Api/), qui fera le lien entre les serveurs de la fac et les serveurs de l'agenda électronique. Elle doit aussi gérer les comptes utilisateurs.

### En détails:

La brique de base de Kal est le **Miroir**. Cet object représente un ou plusieurs emplois du temps de la fac, ainsi que des éventuelles **Règle**s à appliquer sur les événements de ces edt.

Une **Règle** est la donnée d'une **Condition**, ainsi que d'une ou plusieurs **Action**s à réaliser sur les événements qui respectent la condition.

Exemple de mirroir :

> - Emplois du temps : [L1 Biologie Groupe A, L1 Biologie Groupe B]
> - Règles :
> - Si _le titre de l'événement contient "Anglais"_, Alors _Supprimer l'événement_

L'utilisateur s'**abonne** ensuite à ce mirroir : Il sélectionne l'agenda éléctronique vers lequel il souhaite que les événements soient transférés.

#### Remarques:

Ce système de Miroir et d'Abonnement sera complètement transparent pour l'utilisateur lambda. L'utilisateur sera guidé par l'application, et ne se rendra pas compte qu'il est en train de créer un Miroir, ou même qu'il s'abonne à celui-ci.

---

## 🏫 Universités supportées

La fac des sciences de Montpellier sera la première cible, d'autres pourront venir ensuite.

## 📅 Agendas pris en charge

Les agendas Googles seront les premiers compatibles.

Apple ne possède pas d'API pour ses agendas, donc Kal ne pourra pas fonctionner directement pour eux.
En revanche, il est possible d'ajouter un agenda Google à l'application Calendrier d'Apple.
