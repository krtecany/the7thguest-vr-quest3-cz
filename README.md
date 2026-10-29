# The 7th Guest VR – čeština pro Meta Quest 3

Neoficiální fanouškovský překlad hry **The 7th Guest VR** (Vertigo Games) do češtiny pro **Meta Quest 3**.

Přeloženo je vše textové: titulky a dialogy, menu a nastavení, nápovědy k hádankám i achievementy. Dabing zůstává anglický.

> ⚠️ Překlad neobsahuje žádná data hry. Hru si musíš koupit v Meta Store a mít ji nainstalovanou na headsetu.

## Podporovaná verze

| Hra | Verze | versionCode |
|---|---|---|
| The 7th Guest VR (Quest) | 1.1.3 | 66 |

Po aktualizaci hry může čeština přestat fungovat. Instalační skript tě na jinou verzi upozorní.

## Co budeš potřebovat

- Meta Quest 3 s nainstalovanou hrou The 7th Guest VR
- PC s Windows a USB-C kabel
- **Vývojářský režim** na headsetu (aplikace Meta Horizon v telefonu → Zařízení → Nastavení headsetu → Vývojářský režim)
- `adb.exe` z [Android SDK Platform-Tools](https://developer.android.com/tools/releases/platform-tools) – stačí rozbalit a `adb.exe`, `AdbWinApi.dll` a `AdbWinUsbApi.dll` dát do stejné složky jako `instalovat.bat`

## Instalace

1. Stáhni tento repozitář: zelené tlačítko **Code → Download ZIP** a rozbal ho.
2. Do rozbalené složky přidej `adb.exe` (viz výše), pokud ho nemáš v systémové cestě.
3. Připoj Quest kabelem k PC a nasaď si headset. Objeví se dotaz **„Allow USB debugging?“** → zaškrtni *Always allow from this computer* a potvrď **Allow**.
4. Spusť `instalovat.bat`.
5. Spusť hru a v nastavení vyber jazyk **Čeština** (je na místě původní angličtiny).

## Odinstalace

Spusť `odinstalovat.bat`. Smaže se jen soubor s češtinou a hra se vrátí do původního stavu.

## Ruční instalace (bez skriptu)

Soubor `overflow2.66.com.VertigoGames.The7thGuestVR.obb` nakopíruj do headsetu do složky

```
/sdcard/Android/obb/com.VertigoGames.The7thGuestVR/
```

např. přes SideQuest nebo příkazem:

```
adb push overflow2.66.com.VertigoGames.The7thGuestVR.obb /sdcard/Android/obb/com.VertigoGames.The7thGuestVR/
```

## Jak to funguje

Hra na Unreal Engine 5 načítá kromě svých datových souborů i doplňkový balík `overflow2`. Ten obsahuje jen českou lokalizační tabulku, která nahradí anglické texty. Původní soubory hry se nemění.

## Chyby a připomínky

Našel jsi překlep, useknutý titulek nebo nepřeložený text? Založ [Issue](../../issues), ideálně s popisem místnosti a situace nebo s fotkou z headsetu.

## Právní upozornění

Jde o neoficiální, nekomerční fanouškovský překlad. Projekt není spojen se společností Vertigo Games ani s držiteli práv k The 7th Guest. Všechny ochranné známky patří jejich vlastníkům. Pokud jsi držitel práv a nesouhlasíš se zveřejněním, ozvi se přes Issues a překlad bude stažen.
