# Hacker News Client per iOS

Un'applicazione realizzata completamente con SwiftUI per visualizzare le notizie da Hacker News. Come da indicazioni, l'app mostra le liste delle novità, delle storie più popolari e delle migliori storie. Supporta la funzionalità di pull-to-refresh.

## Requisiti

- Xcode 15 o successivo
- macOS 14 o successivo

## Struttura del Codice

Il progetto è stato organizzato nei seguenti file/directory principali:

### 1. `HackerNewsClientApp.swift`

- Punto di ingresso dell'applicazione.

### 2. `ContentView.swift`

- La vista principale che gestisce la navigazione tra le varie sezioni dell'applicazione: Nuove, Storie Popolari e Migliori Storie.
- Configura la `TabView` con tre tab per le diverse categorie di storie, come da indicazioni.

### 3. `StoriesView.swift`

- Mostra la lista di storie.
- Gestisce la logica di recupero delle storie dalla rete.
- Implementa la funzionalità di pull-to-refresh.

### 4. `HackerNewsService.swift`

- Gestisce le chiamate HTTP all'API di Hacker News.
- Effettua il parsing della risposta JSON e restituisce i dati delle storie.

### 5. `Models/HackerNewsStory.swift`

- Modello dei dati per le storie di Hacker News.
- Definisce la struttura dei dati delle storie.
- Include proprietà come `id`, `by`, `title`, `url`, e `time`.

## Contatti

- **Autore:** Manuel
- **Email:** emanuele@rega.codes

---

**Made with <3 by Manuel**
