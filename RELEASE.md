# Release workflow

Pour publier une nouvelle version sur CurseForge avec le format `LoxxInterruptTracker-1.2.x.zip` :

1. Mettre à jour la version dans `LoxxInterruptTracker.toc` (## Version: 1.2.x)
2. `git add .`
3. `git commit -m "v1.2.x"`
4. `git tag 1.2.x`
5. `git push origin main`
6. `git push origin 1.2.x`

CurseForge détecte le tag et crée `LoxxInterruptTracker-1.2.x.zip`. Aucun changelog n’est affiché (fichier vide).
