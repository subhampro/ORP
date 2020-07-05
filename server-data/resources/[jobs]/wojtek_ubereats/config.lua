--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------


Config                         = {}

Config.PoliceDatabaseName = 'zomato'

Config.kosztrejestracji = 250 -- registration cost in the uber eats service (the menu will change automatically)

-- Payouts (The server will draw an amount between "1" and "2" which it will grant to the player)

Config.Wyplata1 = 500 -- min. wypłata za dostawę 
Config.Wyplata2 = 700 -- max. wypłaya za dostawę 

Config.Napiwek1 = 10 -- min. napiwek
Config.Napiwek2 = 100 -- max. napiwek

-- MISC draw settings -
Config.losuj = true

Config.wyplataNielosowa = 1 -- change only if Config.lose = false (delivery time (without a draw))
Config.NapiwekNielosowy = 1 -- change only if Config. draw = false (tip for delivery in less than 3 minutes (without a draw))

-- Ustawienia blipa (znacznika na mapie) --

Config.typ = 226  -- rodzaj ikonki na mapie -- (dostępne rodzaje: https://wiki.gtanet.work/index.php?title=Blips)
Config.kolor = 6 --  kolor ikonki na mapie -- (dostępne kolory: https://wiki.gtanet.work/index.php?title=Blips)
Config.wielkosc = 0.8   -- wielkość ikonki (domyślnie 0.8)

Config.blipx  = -1189.09     -- koordynaty (x) znacznika
Config.blipy  = -892.83   -- koordynaty (y) znacznika


Config.pojazd = 'faggio2' -- pojazd do wypożyczenia "skuter"
Config.pojazdx = -1165.57 -- gdzie ma się respić pojazd (x)
Config.pojazdy = -887.92 -- gdzie ma się respić pojazd (y)
Config.pojazdz = 14.13 -- gdzie ma się respić pojazd (z)

Config.Przebieranko = {

  MenuPodstawowe = {
    Pos   = { x = -1182.31, y = -883.51, z = 12.81}, -- koordynaty
    Size  = { x = 2.0, y = 2.0, z = 1.0 }, -- wielkość 
    Color = { r = 0, g = 100, b = 255 }, -- kolor (RGB) 
    Type  = 27, -- typ markera
  },
}

Config.Konczeniepracy = {

  Koniecpracyboi  = {
    Pos   = { x = -1177.59, y = -891.22, z = 12.80 }, -- coordinate
    Size  = { x = 2.0, y = 2.0, z = 1.0 }, -- wielkość 
    Color = { r = 255, g = 50, b = 50 }, -- kolor (RGB) 
    Type  = 27, -- typ markera
  },
}


--------------------------------------------
------ Napisane przez wojtek.cfg#0349 ------
----------------- ©  2019 ------------------
--------------------------------------------