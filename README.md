# Inception
Inception 42
Doc : medium.com/@imyzf/inception-3979046d90a0

Docker : outil qui permet de construire, deployer et exec des app de maniere isolee et coherente sur toutes les machines
une sorte de boite externe ou on exec et ca s'adapte a toutes les machines.

Containers : environnement virtuel leger qui conditionne toutes les dependances et le code dont une app a besoin pour s'exec dans un seul fichier
texte et qui peut fonctionner de la meme maniere sur n'importe quelle machine.
La difference avec une VM c'est que le conteneurs virtualise du materiel tandis qu'une Vm virtualise un systeme d'exploitation
Les conteneurs sont plus portable etefficace.

Image Docker : c'est un package executable leger qui inclut tout ce dont l'app a besoin pour s'executer, y compris le code, l'environement d'exec,
les outils systeme, les librairies et les dependances.
(son utilisation ne garantie pas des perfs sans erreur mis l'utlisation de docker peut les limiter).
On construit un Docker Image a partir d'un DOCKERFILE qui est un simple fichier texte qui contientcun ensemble d'instructions pour construire l'image.
Chaques instruction cree un nouveau calque dans l'image.

DockerFile : fichier texte contient un ensemble d'instruction pour construire une image DOCKER.
Il specifie l'image de base a utiliser, puis conprend une serie de commande qui automatise le processus de config et de construction de l'image
comme l'instalation des paquets, la copie de fichiers et la configuration de variable d'environnement.
Chaques instruction cree un nouveau calque dans l'image.

Docker Compose : outil qui simplifie le deploiement et ka gestion des app Docker multi-conteneurs.
Simplifie le process de definition des services connexes, des volumes pour la persistance des donnees et des reseaux de connexion de conteneur.
Utile pour configurer les parametres de chaques service, y compris l'image a utiliser, les ports a exposer et les variables d'environnement a definir

Docker Compose : 3 parties importantes
- SERVICES : c'est une unite de travail dans Docker Compose, il a un nom et il defini une image de conteneur, un ensemble de varable d'environnement
et un ensemble de port qui sont expose a la machine hote
Si on run docker-compose up, Docker va cree un nouveau conteneur pour chaque service de notre fichier Compose

- RESEAU : c'est un moyen pour les conteneurs de communiquer entre eux. Lorsque on cree un reseau de notre fichier Compose 
Docker creera un nouveau reseau auquel tous les autres conteneurs de notre fichier Compose seront connecte.
Ca permet aux conteneurs de communiquer entre eux sans meme connaitre l'adresse ip de l'autre. Juste avec son nom.

- VOLUME : C'est un moyen de stocker des donnees qui sont partagees entre les conteneurs. 
Quand on creez un volume dans notre fichier Compose, Docker va creer un nouveau volume (un dossier d'une autre maniere) auquel
tous les conteneurs ont acces. Ca permet de partager des donnees entre les conteneurs sans avoir a copier coller chaque fois qu'on veux une donnees.


PID1 : c'est l'identifiant du processus init, qui est le premier processus qui est lance lorsque le systeme demarre.
Il est responsable du demarrage et de l'arret de tout les autres processus sur le systeme.
PID 1 dans un conteneur docker se comporte differement du process d'initialisation dans un systeme normal base sur UNIX.

WP-CLI : c'est une interface en ligne de commande pour WordPress. C est un outil qui permet d'interagir avec notre site WordPress
a partir de ligne de commande.
On l'utilise pour automatiser des taches, des pb de debugage, l'installation / suppr des plugins en accompagnement des themes, la gestion des
utilisateurs et des roles, l'import/export de donnees, l'exec de requete de bas de donnee..
Il est utilisable depuis le terminal et permet de gagner beaucoup de temops pour gerer tout le site WordPress

FTP : File Transfer Protocol : protocole utilise pour transferer des fichier entre un client et un serveur sur un reseau TCP/IP comme internet.
Il fournit un mecanisme robuste permettant aux utilisateur de telecharger et gerer des fichiers sur des serveurs disant.
Il fonctionne en ouvrant deux connexion qui relient les 2 hotes (client et serveur). une connexion pour les reponses et une pour le transfert de donnees.



Adminer : c'est un outil qui permet de visualiser, d'editer facilement des bases de donnee via une interface conviviale.
il contient des systeme tel que MariaDB, MySQL, SQlite, etc..
en gros c est un gestionnaire de base de donnees.
