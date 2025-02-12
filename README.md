# Le Projet Prog2 des wiiinneeers


## Description
This project is a game named Vehicle Company Tycoon. You own a company that makes trains, boats and planes and you have to build connexions between cities in a growing world in order to transport passengers and merchandise through different biomes. You will lose if a city is isolated for too long.

## Visuals
![screenshot from the game](https://zupimages.net/up/25/06/lwjw.png)

## Installation
Prerequisites: Scala 3, SBT, SFML 2.6 and garbage collector bdwgc (package libgc on Ubuntu).

To install the game, run `git clone https://gitlab.crans.org/mcngnt/le-projet-prog2-des-wiiinneeers` in the terminal.

To run the game, run `sbt run` in the directory le-projet-prog2-des-wiiinneeers.

## Usage
In this game, you can:
- move around the map by dragging your mouse or using hjkl directions.
- pause the game using the space key.
- restart the game using the R key.
- save the game using F5 (it will be saved under le-projet-prog2-des-wiiinneeers/src/main/resources/save.vct, there can only be one save at once so if you want to keep multiple saves you should copy this file outside of the repo).
- load the current save using F9.
- chose a connection type (train, boat or plane) using the three buttons in the bottom right corner, or the T, B and P keys.
- draw a connection between two cities by dragging your mouse from a city to another. A train connexion costs 1000 coins, a boat connexion costs 1100 coins and a plane connexion costs 1200 coins.
- delete a connexion by right clicking on it, you will be refunded.
- buy a vehicle by dragging your mouse from a vehicle button on the bottom of the screeen to a connexion. A starter train costs 1200, a starter boat costs 1248 and a starter plane costs 2304.
- open an information panel about a vehicle by clicking on it (the panel can be closed by clicking anywhere outside of it, or by pressing enter).
- do maintenance on a vehicle by clicking on the button on the right of the information panel, or the M key. This restores the vehicle's hp to 100 (a vehicle with 0 hp is broken and stops on the tracks).
- upgrade a vehicle by clicking on the button on the left of the information panel, or the U key. This improves its speed and capacity.

During the game, vehicles naturally lose hp as they are used. When a vehicle has low hp, a yellow warning triangle will be displayed next to it. When the vehicle breaks, this triangle becomes red. Certain events can further damage vehicles:
- earthquakes can happen on plains and slow down and damage trains driving on those plains or boats stopping at harbours on those plains. Planes do not land in cities undergoing earthquakes.
- sandstorms can happen in deserts and have the same effect as earthquakes on trains and boats. Planes are also slowed down and damaged.
- oilspills can happen in oceans and lakes, they slow down and damage boats.
- monsters can appear and attack vehicles. They can be killed by clicking on them twice. If they reach a vehicle, they will board it and destroy it.

The company earns money for each passenger and each portion of merchandise transported. Every time passengers get off in a city, or merchandise is sold in a city, it gains XP. Cities progress to the next level every 500 XP. A city with a higher level produces more merchandise.

If a city is becoming too isolated (too many passengers have been waiting to leave for too long), a growing red circle will appear. When the circle reaches its full size, the game is lost.

Don't forget to look for easter eggs. 😼

## Roadmap
Possible next improvement: allowing stopovers to improve merchandise transportation.

## Authors
Martin Cuingnet and Maëlle Cornély

## Project status
The project is still being regularly updated.