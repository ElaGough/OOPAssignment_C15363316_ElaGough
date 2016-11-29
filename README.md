# OOPAssignment_C15363316_ElaGough
OOPAssignment_C15363316_ElaGough

HOLODECK(from StarTrek - ignores voice interaction usually associated with the Holodeck):

A user interface that allows the user to choose a program to run in the Hollodeck. Includes both Physical Training and Mental Relaxation along with some information on various StarTrek planets and the Holodeck itself.
The UI is my own interpretation compared to the StarTrek Federations UI.

Translate:

The whole screen is translated so that the center of the screen is the x, y co-ordinates (0, 0).
This helps in making the Heart and Sars Functions.

How the Heart Function Works:

x = 16*sin(t)^3 ; 
y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t)

Stars Function:

Stars generated using an ArrayList in which stars have a life span by removing stars from the ArrayList after a certain point.
Stars flicker using a randomised white to black fill() colour.
Stars have a slightly randomised shape so they're not all the same and look more realistic.
Randomised directions and speeds using PVectors.

ScreenID:

Navigating screens using a ScreenID to avoid draws over other draws.
Use of Back button to make navigating screens much easier.

Inheretance:

Using extends to avoid writing same variables over and over. Also so that you can change data in the variables much easier.

Music:

The first is a StarTrek theme that constantly plays on loop in the background. Source: https://youtu.be/p5kcBxL7-qI
The second is the sound of a door opening. This plays when you have selected a program for the holodeck to run. It signifies the program is ready and you may enter the room. Source: SoundBible.com

Things used: 

variables, loops, methods, arrays, objects, inheritance, unit circle, trigonometry, translate ...

YouTube video of assignment:

Link: 
