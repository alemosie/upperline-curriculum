module AsciiArt

  SHOWDOWN = <<-SHOWDOWN
                      _____  _____ _____ _____
               /\\    / ____|/ ____|_   _|_   _|
              /  \\  | (___ | |      | |   | |
             / /\\ \\  \\___ \\| |      | |   | |
            / ____ \\ ____) | |____ _| |_ _| |_
           /_/    \\_\\_____/ \\_____|_____|_____|
           __                      __
     _____/ /_  ____ _      ______/ /___ _      ______
    / ___/ __ \\/ __ \\ | /| / / __  / __ \\ | /| / / __ \\
   (__  ) / / / /_/ / |/ |/ / /_/ / /_/ / |/ |/ / / / /
  /____/_/ /_/\\____/|__/|__/\\__,_/\\____/|__/|__/_/ /_/

  SHOWDOWN

  WINNER = <<-WINNER

      |@@@@|     |####|
      |@@@@|     |####|
      |@@@@|     |####|
      \\@@@@|     |####/
       \\@@@|     |###/
        `@@|_____|##'
             (O)
          .-'''''-.
        .'  * * *  `.
       :  *       *  :
      : ~           ~ :
      : ~W I N N E R~ :
       :  *       *  :
        `.  * * *  .'
          `-.....-'
  WINNER


  DOG = <<-DOG

     |\\_/|
     | @ @   Woof!
     |   <>              _
     |  _/\\------____ ((| |))
     |               `--' |
 ____|_       ___|   |___.'
/_/_____/____/_______|

  DOG

  BULLDOG = <<-BULLDOG
       ,_____ ,
      ,._ ,_. 7\\
     j `-'     /
     |o_, o    \\
    .`_y_`-,'   !
    |/   `, `._ `-,
    |_     \\   _.'*\\
      >--,-'`-'*_*'``---.
      |\\_* _*'-'         '
     /    `               \\
     \\.         _ .       /
      '`._     /   )     /
       \\  |`-,-|  /c-'7 /
        ) \\ (_,| |   / (_
       ((_/   ((_;)  \\_)))

  BULLDOG

  BEAVER = <<-BEAVER

              ___
            .="   "=._.---.
          ."         c ' Y'`p
         /   ,       `.  w_/
         |   '-.   /     /
   _,..._|      )_-\\ \\_=.\\
  `-....-'`------)))`=-'"`'

  BEAVER

  COW = <<-COW

               /( ,,,,, )\\
              _\\,;;;;;;;,/_
           .-"; ;;;;;;;;; ;"-.
           '.__/`_ / \\ _`\\__.'
              | (')| |(') |
              | .--' '--. |
              |/ o     o \\|
              |           |
             / \\ _..=.._ / \\
            /:. '._____.'   \\
           ;::'    / \\      .;
           |     _|_ _|_   ::|
         .-|     '==o=='    '|-.
        /  |  . /       \\    |  \\
        |  | ::|         |   | .|
        |  (  ')         (.  )::|
        |: |   |; U U U ;|:: | `|
        |' |   | \\ U U / |'  |  |
        ##V|   |_/`"""`\\_|   |V##
           ##V##         ##V##
  COW

  TIGER = <<-TIGER
                       __,,,,_
         _ __..-;''`--/'/ /.',-`-.
     (`/' ` |  \\ \\ \\\\ / / / / .-'/`,_
    /'`\\ \\   |  \\ | \\| // // / -.,/_,'-,
   /<7' ;  \\ \\  | ; ||/ /| | \\/    |`-/,/-.,_,/')
  /  _.-, `,-\\,__|  _-| / \\ \\/|_/  |    '-/.;.\\'
  `-`  f/ ;      / __/ \\__ `/ |__/ |
       `-'      |  -| =|\\_  \\  |-' |
             __/   /_..-' `  ),'  //
            ((__.-'((___..-'' \\__.'

  TIGER

  SCORPION = <<-SCORPION
     ___    ___
    ( _<    >_ )
    //        \\\\
    \\\\___..___//
     `-(    )-'
       _|__|_
      /_|__|_\\
      /_|__|_\\
      /_\\__/_\\
       \\ || /  _)
         ||   ( )
         \\\\___//
          `---'

  SCORPION

  ANIMAL_ART = [DOG, BULLDOG, BEAVER, COW, TIGER, SCORPION]
  ANIMAL_NAMES = ["Dog", "Bulldog", "Beaver", "Cow", "Tiger", "Scorpion"]

end
