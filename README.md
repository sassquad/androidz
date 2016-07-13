# Androidz
Arcade game written for the BBC Micro

## Play the game online
The game is available to play online, via the Javascript BBC Micro Emulator [jsBeeb](https://github.com/mattgodbolt/jsbeeb):

http://bbc.godbolt.org/?disc=http://www.sassquad.com/downloads/Androidz.ssd&autoboot

## Watch a video of the game

https://youtu.be/2oWKNXXIkt8

## About the game

Androidz was written over a period of about two months from July to August 1993.

Written for the BBC Micro, the game is written predominantly in BBC Basic, with a very minor element of 6502 assembly language for faster plotting of the player character. The game runs in four colour MODE 5, which is a low resolution (640 x 256) display which uses 10k of the BBC Micro's memory.

The game itself was published by Acorn Computing, one of the major BBC Micro/Acorn news-stand magazines in June 1994. I was paid £25 for the game, and is apparently copyrighted to the then publishers Europress. Whoever owns the magazine archive would have jurisdiction. I've therefore not included a licence in this repo for the time being.

There are three main files, one to display instructions and setup sounds and UI graphics, the game code itself, and a final short piece of code to show you a report of your performance in the game.

Closer examination of the code will reveal a number of GOTOs throughout, which mean the line numbering must be retained. Also, the use of the DATA statement has meant further use of specific line numbers via the RESTORE command.

You will also notice that the actual game listing appears more compressed than the other two listings, this was done to reduce memory. I do recall that an attempt to make the code cleaner resulted in error messages concerning lack of memory, so I had to dispense with code readability.

I've added the code here so that it is easier to browse for historical purposes.
