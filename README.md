autodeeplabVSothers

Nella cartella ICNet si trova il codice degli autori di ICNet che tuttavia non forniscono il codice per l addestramento del modello. Seguendo le istruzioni nel loro repository: https://github.com/hszhao/ICNet
e possibile scaricare dei modelli pre addestrati per eseguirvi dei test.


Nella cartella ICNet-tensorflow-master si puo invece trovare un implementazione piu recente di ICNet in Tensorflow : https://github.com/hellochick/ICNet-tensorflow
    
    -Dai commenti al codice pare che senza pesi preaddestrati (PSPnet) sia molto difficile avere dei risultati (verificare che anche nell articolo parlano di questi preaddestramenti).
    -I pesi preaddestrati per cityscape si trovano su model e se si vogliono scaricare quelli per ADA dentro script si puo chiamare il file .py per scaricarli.
    -Per quanto riguarda i percorsi alle cartelle di dataset e gli iperparametri di train ecc si possono trovare dentro utils/config.
    -ho modificato il codice che dalla lista di immagini crea il dataset ma va rimesso originale usando come lista non la lista attuale in cityscapes ma in ICNet-tensorflow-master/data ecc
    -c e da verificare se in fase di addestramento vengono salvati i nuovi pesi (forse dentro la cartella snapshot?) e in caso ricaricati in fase di test, e vedere in qual modo calcolare e pr9intare la mIoU.
    -Nel notebook demo doverbbero esserci gli strumenti per il test della rete.