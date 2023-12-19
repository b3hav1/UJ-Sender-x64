## How to install
- Login or register in [Google Cloud Console](https://console.cloud.google.com/)
- Get [Tenor API Key](https://developers.google.com/tenor/guides/quickstart) and put them into lua/autorun/server/sender.lua
- Move "lua" to your Garry's Mod folder (%programfiles(x86)%\Steam\steamapps\common\GarrysMod\garrysmod)
- Make sure you have installed [Custom Chat](https://steamcommunity.com/sharedfiles/filedetails/?id=2799307109) (or any other chat addon that supports markdown)
- [Select x64 beta branch](https://steamcommunity.com/sharedfiles/filedetails/?id=2882777333) if you haven't already

## How to use
- Open chat and type command /gif {query}
- Send received link on your behalf
- Resend command and it will work
> **Please note:** this will have to be done every time on server start

## FAQ
1. Why do I have to repeat steps above every time?
> This is not my problem, this is how GLua HTTP requests works.
2. Why addon installation so hard?
> Because it provides access to API to generate image URL.
3. Can I'm change command name?
> Yes, go to lua/autorun/server/sender.lua and change value of command name field.
4. Can I'm use source code in my own project?
> Yes, no problem! If you needed parser please.
5. Whats about support and updates?
> I'm dont promise support, but i'll try to code GUI for addon.
6. Will this available at Steam Workshop?
> Sorry, not yet. I'm changed main account and playing by Family Share.
