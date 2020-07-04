# Revision
Minecraft Windows 10 License Disabler

# How Its Works?
The plugin just disable the License with addition .dll and xbox account routing. So you cant login xbox since its routed to Offline uses and can be customly changed on "xbox-live.json" included on the plugin.
Forgot to mention, since its disabling the online license checking.. You cant access Marketplace, realm, and server but its still work on LAN Multiplayer.

# How To Use?
Simply put all given files to your Minecraft ingame directory (not local package).

# How To Get Minecraft Dir?
To put the plugin, firstly first.. You need to download Minecraft Windows 10 through external Microsoft Store Downloader such as [Adguard Store](https://store.rg-adguard.net/). Instruction to download from the external web :
1. Search on google for "Minecraft Windows 10 Store", search the link that lead to Microsoft Windows Store Website. Then you just need to copy the link above to get App ID.
2. Paste the link on Adguard Store given bar and click "Enter". After that, it will show Minecraft Windows 10 Package along with its package depedency.
3. Note : If you're already have Microsoft Store installed on your machine, just download Minecraft UWP appx and Microsoft.Store.Service.Engagement
4. Make sure you're choosing on the right package, check your operating system. If its 64x bit, then you also need to download Minecraft x64 package (Same with other package depedency)
5. Install Microsoft.Store.Service.Engagement through powershell with this command : 
```
add-appxpackage "Name.Of.The.Package"
```
6. Next, extract Microsoft Windows 10 Appx using zip or rar to get in-game data.
7. After done extracting, just simply put the plugin to extracted MCWin10 Directory and use powershell again to register the package : 
```
add-appxpackage AppxManifest.xml -register
```

# Congratulation!
You already done all the steps! Just launch the game and enjoy!

# Note :
- Marketplace connection removed.
- Server connection removed.
- Realm Connection removed.
Addition : If you still want to play on server and accessing Marketplace, you can download Minecraft Pocket Edition and use [MCrack plugin](https://github.com/Yuuki-kito/MCrack).
