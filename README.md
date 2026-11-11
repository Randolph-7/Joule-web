# Joule Web

Application web de journal de trading, avec synchronisation sécurisée par Supabase.

## Développement

Installez Node.js 20+, puis lancez :

```bash
npm install
npm run dev
```

## Déploiement Netlify

Le projet est configuré avec `netlify.toml`. Dans Netlify, ajoutez les variables d'environnement indiquées dans `.env.example`.

Les données sont protégées par des règles RLS Supabase : chaque utilisateur ne peut accéder qu'à son propre journal.
