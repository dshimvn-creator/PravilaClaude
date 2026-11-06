# Правила Claude — резервная копия

Это **копия**. Claude читает правила не отсюда, а из `C:\Users\Dmitrii\.claude\`.
Править правила нужно там (или просить Claude), а сюда — обновлять копию.

| Здесь | Откуда копия | Что это |
|---|---|---|
| `CLAUDE.md` | `C:\Users\Dmitrii\.claude\CLAUDE.md` | общие правила для всех проектов |
| `settings.json` | `C:\Users\Dmitrii\.claude\settings.json` | настройки и включённые плагины |
| `skills\` | `C:\Users\Dmitrii\.claude\skills\` | установленные скиллы |
| `память\` | память сессии «Анализ сервисов» | правило «только названные папки», свойства ПК |

## Обновить копию

Двойной клик по `Обновить копию.bat`: скопирует свежие файлы и отправит их на GitHub
(`dshimvn-creator/PravilaClaude`).

## Восстановить на новом ПК

1. Скачать репозиторий: `git clone https://github.com/dshimvn-creator/PravilaClaude.git`
2. Скопировать `CLAUDE.md`, `settings.json` и папку `skills` в `C:\Users\<имя>\.claude\`.
3. Плагины из `settings.json` (enabledPlugins) Claude Code поставит сам при первом запуске
   или их ставят командой `/plugin`.
