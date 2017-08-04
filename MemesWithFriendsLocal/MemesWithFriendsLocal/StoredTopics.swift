//
//  StoredTopics.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/1/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class StoredTopics {
    
    /*********************************************************
     * Topics -                                              *
     *          Comics                                       *
     *          Movies                                       *
     *          Video Games                                  *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *********************************************************/
    
    static let topics: [String] = [
        "Comics", // 0
        "Art", // 1
        "Country", // 2
        "Drinking", // 3
        "Food", // 4
        "Fashion", // 5
        "Music", // 6
        "Politics", // 7
        "Religion", // 8
        "Sports", // 9
        "Technology" // 10
    ]
    
    static let comicTopics: [String] = [
        "Batman", // 0
        "Superman", // 1
        "Spider-Man", // 2
        "Thor", // 3
        "Hal Jordan", // 4
        "Wonder Woman", // 5
        "Captain America", // 6
        "Martian Manhunter", // 7
        "Dick Grayson", // 8
        "Walley West", // 9
        "Kyle Rayner", // 10
        "Thing", // 11
        "Mr. Fantastic", // 12
        "Invisible Woman", // 13
        "Silver Surfer", // 14
        "Barry Allen", // 15
        "Wolverine", // 16
        "Iron Man", // 17
        "Tim Drake", // 18
        "Human Torch", // 19
        "Super Boy", // 20
        "Super Girl", // 21
        "Aqua Man", // 22
        "Terry Mcginnis", // 23
        "Dare Devil", // 24
        "Plastic Man", // 25
        "Hulk", // 26
        "Barbara Gordon", // 27
        "Green Arrow", // 28
        "Cyborg", // 29
        "Hercules", // 30
        "Billy Batson", // 31
        "Black Canary", // 32
        "Orion", // 33
        "Black Panther", // 34
        "Jay Garrick", // 35
        "Leonardo", // 36
        "Alan Scott", // 37
        "Raphael", // 38
        "Raven", // 39
        "Donna Troy", // 40
        "Beast Boy", // 41
        "Donatello", // 42
        "StarFire", // 43
        "Steel", // 44
        "Red Tornado", // 45
        "Michelangelo", // 46
        "Vixen", // 47
        "Zatanna", // 48
        "Professor X", // 49
        "Bucky Barnes", // 50
        "Casssandra Cain", // 51
        "Ray Palmer", // 52
        "Hank Pym", // 53
        "Doctor Strange", // 54
        "John Stewart", // 55
        "Captain Atom", // 56
        "HawkEye", // 57
        "Roy Harper", // 58
        "Etrigan", // 59
        "Fire Storm", // 60
        "Hawk Man", // 61
        "Bart Allen", // 62
        "Blue Beetle (Reyes)", // 63
        "Nick Fury", // 64
        "Christopher Kent", // 65
        "Damian Wayne", // 66
        "Vision", // 67
        "Wasp", // 68
        "Phantom Stranger", // 69
        "Huntress (Bertinelli)", // 70
        "Black Lightning", // 71
        "Mr. Miracle", // 72
        "Big Barda", // 73
        "Zauriel", // 74
        "Beast", // 75
        "Nova", // 76
        "Skaar", // 77
        "Power Girl", // 78
        "Beta Ray Bill", // 79
        "Iron Fist", // 80
        "Booster Gold", // 81
        "Elektra", // 82
        "ThunderBolt Ross", // 83
        "HawkGirl", // 84
        "Jon Kent", // 85
        "Light Ray", // 86
        "Geo-Force", // 87
        "Damage", // 88
        "Mr. Terrific", // 89
        "Captain Britain", // 90
        "Mon-el", // 91
        "Knight (Sheldrake)", // 92
        "Black Widow", // 93
        "StarGirl", // 94
        "Adam Strange", // 95
        "Kaine", // 96
        "Congorilla", // 97
        "Animal Man", // 98
        "Swamp Thing", // 99
        "Harley Quinn", // 100
        "The Joker", // 101
        "ScareCrow", // 103
        "Bane" // 104
    ]
    
    static let movieTopics: [String] = [
        "The lord Of The rings", // 0
        "The Dark Knight", // 1
        "Cabin In The Woods", // 2
        "The Beach", // 3
        "The Road", // 4
        "Gangs Of New York", // 5
        "28 Days Later", // 6
        "This Is The End", // 7
        "Little Miss Sunshine", // 8
        "500 Days Of Summer", // 9
        "Avengers", // 10
        "Guardians Of The Galazy", // 11
        "Captain America The Winter Soldier", // 12
        "Kill Bill", // 13
        "Super bad", // 14
        "American Pie", // 15
        "Into The Wild", // 16
        "Batman Begins", // 17
        "The Wolf Of Wall Street", // 18
        "Anchor Man", // 19
        "Iron Man", // 20
        "Iron Man 2", // 21
        "Get Out", // 22
        "All About Eve", // 23
        "Modern Times", // 24
        "It Happened One Night", // 25
        "Singin' in the Rain", // 26
        "A Hard Day's Night", // 27
        "Toy Story 3", // 28
        "Toy Story 2", // 29
        "Zootopia", // 30
        "The Philadelphia Story", // 31
        "Up", // 32
        "Baby Driver", // 33
        "Dr. Strangelove Or How I Learned to Stop Worrying and Love the Bomb", // 34
        "The Big Sick", // 35
        "Finding Nemo", // 36
        "La La Land", // 37
        "Roman Holiday", // 38
        "Toy Story", // 39
        "Cool Hand Luke", // 40
        "Monty Python and the Holy Grail", // 41
        "The LEGO Movie", // 42
        "The Gold Rush", // 43
        "La Dolce Vita", // 44
        "It's a Wonderful Life", // 45
        "Before Midnight", // 46
        "Shaun the Sheep Movie", // 47
        "The Artist", // 48
        "Love & Friendship", // 49
        "To Be or Not to Be", // 50
        "Playtime", // 51
        "Annie Hall", // 52
        "Mary Poppins", // 53
        "City Lights", // 54
        "The Rules of the Game", // 55
        "His Girl Friday", // 56
        "Ratatouille", // 57
        "The Discreet Charm Of The Bourgeoisie", // 58
        "Paterson", // 59
        "Gentlemen Prefer Blondes", // 60
        "The Incredibles", // 61
        "Tampopo", // 62
        "8 1/2", // 63
        "Hunt for the Wilderpeople", // 64
        "Don't Think Twice", // 65
        "Chicken Run", // 66
        "Airplane!", // 67
        "Ghostbusters", // 68
        "Big",  // 69
        "Paddington", // 70
        "101 Dalmatians", // 71
        "Duck Soup", // 72
        "Birdman", // 73
        "The Grand Budapest Hotel", // 74
        "Spy", // 75
        "Before Sunrise", // 76
        "Some Like It Hot", // 77
        "Moonrise Kingdom", // 78
        "Bringing Up Baby", // 79
        "The Princess Bride", // 80
        "Back to the Future", // 81
        "Sideways", // 82
        "Monsters, Inc.", // 83
        "Enough Said", // 84
        "The Muppets", // 85
        "Amadeus", // 86
        "The Nice Guys", // 87
        "Bull Durham", // 88
        "The Player", // 89
        "Truman", // 90
        "Who Framed Roger Rabbit", // 91
        "Tangerine", // 92
        "Anomalisa", // 93
        "What We Do In The Shadows", // 94
        "Sense and Sensibility", // 95
        "Le goût des autres (The Taste of Others)", // 96
        "Brazil", // 97
        "Todo sobre mi madre (All About My Mother)", // 98
        "Repo Man", // 99
        "We Are the Best!", // 100
        "The Band's Visit", // 101
        "Lost In Translation", // 102
        "The Lego Batman Movie", // 103
        "The Truman Show", // 104
        "Monty Python's Life of Brian", // 105
        "Manhattan", // 106
        "Broadcast News", // 107
        "Say Anything...", // 108
        "The Edge of Seventeen", // 109
        "Le Havre", // 110
        "The Apartment", // 111
        "Groundhog Day", // 112
        "Antz", // 113
        "Hairspray", // 114
        "Mafioso", // 115
        "Yellow Submarine", // 116
        "Juno", // 117
        "Monsieur Lazhar", // 118
        "Wallace & Gromit: The Curse of the Were-Rabbit", // 119
        "Silver Linings Playbook", // 120
        "My Fair Lady" // 121
    ]
    
    static let videoGameTopics: [String] = [
        "The Legend of Zelda: Ocarina of Time", // 0
        "Tony Hawk's Pro Skater 2", // 1
        "Grand Theft Auto IV", // 2
        "SoulCalibur", // 3
        "The Legend of Zelda: Breath of the Wild", // 4
        "Super Mario Galaxy", // 5
        "Super Mario Galaxy 2", // 6
        "Grand Theft Auto V", // 7
        "Tony Hawk's Pro Skater 3", // 8
        "Perfect Dark", // 9
        "Metroid Prime", // 10
        "Grand Theft Auto III", // 11
        "Halo: Combat Evolved", // 12
        "NFL 2K1", // 13
        "Half-Life 2", // 14
        "BioShock", // 15
        "GoldenEye 007", // 16
        "Uncharted 2: Among Thieves", // 17
        "Resident Evil 4", // 18
        "Batman: Arkham City", // 19
        "Tekken 3", // 20
        "Mass Effect 2", // 21
        "The Legend of Zelda: Twilight Princess", // 22
        "The Elder Scrolls V: Skyrim", // 23
        "Half-Life", // 24
        "The Legend of Zelda: The Wind Waker", // 25
        "Gran Turismo", // 26
        "Metal Gear Solid 2: Sons of Liberty", // 27
        "Baldur's Gate II: Shadows of Amn", // 28
        "Grand Theft Auto: San Andreas", // 29
        "Grand Theft Auto: Vice City", // 30
        "LittleBigPlanet", // 31
        "Red Dead Redemption", // 32
        "Gran Turismo 3: A-Spec", // 33
        "Halo 2", // 34
        "The Legend of Zelda: A Link to the Past", // 35
        "The Legend of Zelda: Majora's Mask", // 36
        "The Last of Us", // 37
        "Madden NFL", // 38
        "Portal 2", // 39
        "Metal Gear Solid V: The Phantom Pain", // 40
        "World of Goo", // 41
        "BioShock Infinite", // 42
        "Final Fantasy IX", // 43
        "Call of Duty: Modern Warfare 2", // 44
        "Tony Hawk's Pro Skater 4", // 45
        "Devil May Cry", // 46
        "Call of Duty 4: Modern Warfare", // 47
        "Madden NFL 2002", // 48
        "Chrono Cross", // 49
        "World Of Warcraft", // 50
        "Heroes of the Storm", // 51
        "Warcraft", // 52
        "Starcraft", // 53
        "Hearthstone", // 54
    ]
    
    static let sportTopics: [String] = [
    
        //FIXME: - Put Sports Stuff Here
    
    ]
    
    static let otherTopics: [String] = [
    
        //FIXME: - Put Other Topics here, For example that time at band camp, at the bar, highschool, ect
    
    ]
    
    static let actorTopics: [String] = [
    "Tom Hanks", // 0
    "Meryl Streep",
    "Leonardo DiCaprio",
    "Denzel Washington",
    "Morgan Freeman",
    "Sean Penn",
    "Christian Bale",
    "Robert De Niro",
    "Jennifer Lawrence",
    "Kevin Spacey",
    "Cate Blanchett",
    "Matthew McConaughey",
    "Brie Larson",
    "Michael Fassbender",
    "Jared Leto",
    "Kate Winslet",
    "Amy Adams",
    "Eddie Redmayne",
    "Michelle Williams",
    "Colin Firth",
    "George Clooney",
    "Julianne Moore",
    "Matt Damon",
    "Anthony Hopkins",
    "Bradley Cooper",
    "Christoph Waltz",
    "The Rock",
    "Bryan Cranston",
    "Alicia Vikander",
    "Steve Carell",
    "Jamie Foxx",
    "Tom Hardy",
    "Charlize Theron",
    "Johnny Depp",
    "Gary Oldman",
    "Jim Carrey",
    "Eddie Murphy",
    "Will Ferrell",
    "Adam Sandler",
    "Ben Stiller",
    "Bill Murray",
    "Jonah Hill",
    "Seth Rogen",
    "Steve Martin",
    "Zack Galifianakis",
    "Zac Efron",
    "Vin Diesel",
    "Jason Statham",
    "Michelle Rodriguez",
    "Scott Eastwood",
    "Kurt Russell",
    "Ludacris",
    "Lucas Black",
    "Charlize Theron",
    "Megan Fox"
    ]
    
}











