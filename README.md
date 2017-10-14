## pragmaSpoof

pragmaSpoof (Swift) is an Xcode source code editor extension. Once installed, you can set a keyboard command so that with a keystroke you can get this:

```swift
//*****************
  //MARK: - 
//*****************
```

with the insertion point always set ready to type in the heading you wish to appear in your jump menu in Xcode. It's a bit hit and miss to install and might take a try or two. But it's a huge time saver when reorganizing your Swift code. 

If you don't already know, MARK: is the Swift equivalent of #pragma - in Objective-C. Super useful for breaking code into main sections. Swift is still all in green -- so not easy to spot, which is why I added some bling around it. 


## Installation

Download the Mac app in this repo. 

Open it, but don't run the app.

Product > Archive

When the archive is complete Ctrl-click on the archive > Show in Finder

Ctrl-click on the file > Show Package Contents

Open the Products folder > Applications folder. 

Drag the file from that applications folder to your actual Applications folder.

Close Xcode

Double click on the pragma.Spoof file you just dragged into your Applications folder

Open your System Preferences. In there, there should be the pragmaSpoof extension, with "Xcode Source Editor" checked. If it's not checked, check it. 

IF YOU DON'T SEE IT HERE in the preferences, then you'll have to start over. Trash the file in your Applications folder. Try running the app once and restarting your computer. Eventually it will work. Took me some luck and pixie dust to get this installed the first time as well. If what I wrote above works the first time, please let me know. If you find a better way, I owe you a brew if you fill me in. 

Restart your machine

In any of your Xcode projects, if you put your cursor in the source code to edit it, you should see pragma at the bottom of th e Editor menu. If not, see my comment above about trying again.


<h3>To use:</h3>

Open any Swift project you're working on. Place the cursor on a blank line where you are ready to make your MARK:

Editor > Pragma > Insert_Pragma

 
<h3>To create a keyboard shortcut:</h3>

To avoid having to use menu commands, create your own keyboard shortcut.
1. In Xcode, open your preferences (⌘,)
2. Click on Key Bindings in the top list of headings
3. Search for pragma
4. Click in the blank space under "Key" and type in a shortcut. I use Ctrl-Shift-# (^shift#) as it doesn't conflict with any commands in the editor. 
5. Code away!

<h3>Version Update History:</h3>
  ~> 1.0.1 Working version pushed to git 14 Oct 2017. 
