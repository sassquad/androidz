# Androidz
Androidz is a 20 level arcade game written in 1993 for the BBC Microcomputer. Set in the near future, you work as a police officer working for the Robot Apprehension Unit (R.A.U.), whose job concerns the decomissioning of rogue robotic machines within industrial settings. Due to a power surge, the entire cohort of robots within the 20 factory industrial complex are running amok, and must be destroyed with your laser gun.

Full instructions are provided within the game.

*UPDATE for 2021* - a remastered version - Androidz Redux - is now available. Check out the [repo](https://github.com/sassquad/androidz-redux) for more details.

![Image of Androidz](https://www.sassquad.net/images/riscos/androidz1.png)
![Image of Androidz](https://www.sassquad.net/images/riscos/androidz2.png)
![Image of Androidz](https://www.sassquad.net/images/riscos/androidz3.png)

## Play the game online
The game is available to play [online](https://bbc.godbolt.org/?disc=https://www.sassquad.net/downloads/androidz/original/Androidz.ssd&autoboot), via the Javascript BBC Micro Emulator [jsBeeb](https://github.com/mattgodbolt/jsbeeb):

## Watch a video of the game

https://youtu.be/2oWKNXXIkt8

## About the game

Androidz was written over a period of about two months from July to August 1993. I cobbled the code together from a variety of other type in game listings published over the years - my primary method of learning how to code at the time. A bit like Github, Codepen etc, but in paper form, and less shiny shiny.

The game is written predominantly in BBC Basic, with a very minor element of 6502 assembly language for faster plotting of the player character. The game runs in four colour MODE 5, which is a low resolution (640 x 256 pixel) display that uses 10k of the BBC Micro's 32k memory.

The game itself was published in the magazine Acorn Computing, one of the major BBC Micro/Acorn publications of the early 1990s. 

There are three files, `DROID1.bas` to display the instructions, setup sounds and UI graphics, `DROID2.bas` for the game code itself, and a final short piece of code - `DROID3.bas` to show you a report of your performance in the game.

Closer examination of the code will reveal a number of `GOTO`s throughout, which mean the line numbering must be retained. Also, the use of the `DATA` statement has meant further use of specific line numbers via the `RESTORE` command.

You will also notice that the `DROID2.bas` game listing appears more compressed than the other two listings. This was done to reduce memory. I do recall that an attempt to make the code cleaner resulted in error messages concerning lack of memory, so I had to dispense with code readability.

## How to build

If you wish to build your own disc image of the game, you'll need Beebasm installed on your computer. If you are using Visual Studio Code, then you can use the Task feature to build an image via Ctrl-Shift-B. This will assemble the contents of the src folder, and create the `Android.ssd` image, for use on your computer or emulator of choice.
