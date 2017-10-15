## pragmaSpoof

pragmaSpoof (Swift) is an Xcode source code editor extension. Once installed, you can set a keyboard command so that with a keystroke you can get this:

![//MARK: -](https://github.com/fareast555/pragmaSpoof/blob/master/markdown.png)

...with the insertion point always set ready to enter the section heading you wish to appear in your jump menu in Xcode. 

It's a huge time saver when reorganizing your Swift code. 

If you don't already know, MARK: is the Swift equivalent of #pragma - in Objective-C. It's super useful for breaking code into main sections. Unlike the awesome orange #pragma, the swift one is still all in commando green -- so not easy to spot, which is why I added some bling around it. 

## Make sure the extension works on your Mac
[Installation instructions heavily borrowed from Bouke. Cheers!](https://github.com/Bouke/SwiftInitializerGenerator)

1. Download the Mac app in this repo. 

2. On OS X 10.11 El Capitan, run the following command in a terminal window (Applications > Terminal > Windown):
 sudo /usr/libexec/xpccachectl  --> Enter your normal password when prompted (Sudo requires a password)

3. Open pragmaSpoof.xcodeproj and enable target signing for both the Application and the Source Code Extension using your own developer ID

4. Run the app. Select Xcode when asked which app to use. You will see a copy of Xcode with a black and white icon. This is normal. 

5. Put your cursor anywhere in the code. Then look in the Editor menu. Select pragma > Insert_pragma. You should see the MARK:- appear in your code. If not, close Xcode and try again. 


## Installation

1. After doing the testing steps above, restart you Mac. 

2. Open pragmaSpoof.xcodeproj, but don't run it.

3. Product > Archive

4. When the archive is complete Ctrl-click on the archive > Show in Finder.

5. Ctrl-click on the file > Show Package Contents. Open the Products folder > Applications folder. 

6. Drag the file from that applications folder to your actual Applications folder.

7. Close Xcode.

8. Double click on the pragmaSpoof file you just dragged into your Applications folder.

9. Open your System Preferences. In there, there should be the pragmaSpoof extension with "Xcode Source Editor" checked. If it's not checked, check it. 

10. IF YOU DON'T SEE IT HERE in the preferences, then you'll have to start over. Trash the file in your Applications folder. Try running the app once and restarting your computer. Eventually it will work. It occassionally takes me some luck and pixie dust to get these installed into my main extensions as well. But what I have here should work. 

11. Restart your machine

12. In any of your Xcode projects, if you put your cursor in the source code to edit it, you should see pragma at the bottom of the Editor menu. If not, see my comment above about trying again.


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
