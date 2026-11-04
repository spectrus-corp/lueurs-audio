# lueurs-audio

Fichier audio original `musique.m4a` (durée ~2 min, qualité originale).

## Pourquoi en plusieurs parties ?

Le fichier fait ~1,9 Mo. Les outils automatiques ne peuvent pas uploader de gros binaires d’un coup, donc il a été découpé en base64 (texte) en 33 parties.

## Comment reconstruire sur mobile / PC

### Sur un ordinateur (le plus simple)
```bash
git clone https://github.com/spectrus-corp/lueurs-audio.git
cd lueurs-audio
bash reconstruct.sh
# → musique.m4a est créé
```

### Sur mobile (Termux / a-Shell / etc.)
1. Télécharge tous les fichiers `part_00` à `part_32`
2. Dans le terminal :
```bash
cat part_* > musique.m4a.b64
base64 -d musique.m4a.b64 > musique.m4a
```

Tu auras le fichier audio original intact.
