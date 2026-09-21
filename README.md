# kanata-profile

Configs [kanata](https://github.com/jtroo/kanata) pour mes différents claviers/machines.

## Profil principal (Linux, clavier interne + externes)

Chargé par le service systemd `kanata.service` (`sudo systemctl restart kanata` pour recharger après modif) :

- `kanatouille.kbd` — point d'entrée : `defcfg`, `defsrc`, et les deux `deflayer` liés
  directement à la grille physique (`base`, `symbols`).
- `aliases.kbd` — tous les alias (tap-hold, actions) utilisés dans `deflayer base`.
- `layers.kbd` — les layers activées via `layer-while-held`/`layer-switch` depuis les alias
  (nav, mouse, nums, niri-nav...).

Les deux derniers sont inclus depuis `kanatouille.kbd` via `(include ...)`.

## `micropc/`

Profil pour le clavier Wacom bluetooth (voir CLAUDE.md) utilisé avec un second appareil.
Lance deux instances kanata en parallèle via `micropc/launch.sh` :
`wacom.kbd` (clavier Wacom) + `others.kbd` (remapping du reste, nécessite le layout niri en
Ergol fr pour être correct). Pas de service systemd, lancement manuel.

## Fichiers Windows

`kanata.exe`, `kanata_gui.exe` et le raccourci associé : binaires pour la machine Windows,
committés directement dans le repo pour simplifier le déploiement (pas de service, lancement
via le raccourci/kanata_gui).
