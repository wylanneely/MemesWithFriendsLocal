//
//  StoredTopics.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/1/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation
import UIKit

class StoredTopics {
    
    static var images: [UIImage] = [
        #imageLiteral(resourceName: "Comics"),
        #imageLiteral(resourceName: "movies"),
        #imageLiteral(resourceName: "Game"),
        #imageLiteral(resourceName: "Football"),
        #imageLiteral(resourceName: "Question"),
        #imageLiteral(resourceName: "actor"),
        #imageLiteral(resourceName: "Politics")
    ]
    
    static var names: [String] = [
        "Comics",
        "Movies",
        "Video Games",
        "Sports",
        "Other",
        "Actors",
        "Politics"
    ]
    
    /*********************************************************
     * Topics -                                              *
     *          Comics                                       *
     *          Movies                                       *
     *          Video Games                                  *
     *          Sports                                       *
     *          Other                                        *
     *          Actors                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *                                                       *
     *********************************************************/
    
    static var topics: [String] = [
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
        "Superbowl 50", //0
        "Tom Brady", //1
        "Atlanta Falcons", //2
        "Lebron James", //3
        "Kyrie Irving", //4
        "Dallas Cowboys", //5
        "Golden State", //6
        "Steph Curry", //7
        "Kevin Durant", //8
        "NBA Finals", //9
        "Lionel Messi", //10
        "Paul Pomba", //11
        "Cristiano Ronaldo", //12
        "Hall of Fame", //13
        "World Series", //14
        "All Time Greats", //15
        "Draft Bust", //16
        "Michael Jordan", //17
        "PrimeTime", //18
        "Deion Sanders", //19
        "OJ Simpson", //20
        "G.O.A.T", //21
        "New England Patriots", //22
        "Chicago Bulls", //23
        "Los Angeles Lakers", //24
        "49ers", //25
        "Randy Moss", //26
        "Kobe Bryant", //27
        "Pittsburg Steelers", //28
        "Tiger Woods", //29
        "World Cup", //30
        "Russel Westbrook", //31
        "Mark Sanchez", //32
        "Seattle Seahawks", //33
        "Marshawn Lynch", //34
        "Muhammad Ali", //35
        "Connor Mcgregor", //36
        "Floyd Mayweather", //37
        "Mike Tyson", //38
        "Serena Willams", //39
        "Derek Jeter", //40
        "Barry Bonds", //41
        "Babe Ruth", //42
        "Nike", //43
        "Ray Lewis", //44
        "Tony Romo", //45
        "Alabama Sooners", //46
        "Villanova", //47
        "Duke", //48
        "UCLA", //49
        "Oregon" //50
        
    ]
    
    static let otherTopics: [String] = [
        "Last Night at the Bar"
    ]
    
    static let politics: [String] = [
        "Donald Trump", // 0
        "Donald Trump Jr.", // 1
        "Hillary Clinton", // 3
        "George Bush", // 4
        "Bill Clinton", // 5
        "The White House", // 6
        "Attorney General", // 7
        "Launch Codes", // 8
        "Washington D.C.", // 9
        "Senate", // 10
        "House of Representatives", // 11
        "Congress", // 12
        "Captial Hill", // 13
        "Fox News", // 14
        "CNN", // 15
        "Ronald Reagan", // 16
        "Nancy Reagan", // 17
        "Richard Nixon", // 18
        "John F. Kennedy", // 19
        "The Pentagon", // 20
        "Campaign", // 21
        "Economy", // 22
        "Jobs, Jobs, Jobs", // 23
        "Wall Street", // 24
        "Health Care", // 25
        "Gun Control", // 26
        "Environment", // 27
        "Religious Freedom", // 28
        "The Constiution", // 29
        "Deregulation", // 30
        "Regulation", // 31
        "Death Penalty", // 32
        "Build the Wall!", // 33
        "Immigration", // 34
        "Democrats", // 35
        "Republicans" // 36
    ]
    
    static let actorTopics: [String] = [
        "Tom Hanks", // 0
        "Meryl Streep", // 1
        "Leonardo DiCaprio", // 2
        "Denzel Washington", // 3
        "Morgan Freeman", // 4
        "Sean Penn", // 5
        "Christian Bale", // 6
        "Robert De Niro", // 7
        "Jennifer Lawrence", // 8
        "Kevin Spacey", // 9
        "Cate Blanchett", // 10
        "Matthew McConaughey", // 11
        "Brie Larson", // 12
        "Michael Fassbender", // 13
        "Jared Leto", // 14
        "Kate Winslet", // 15
        "Amy Adams", // 16
        "Eddie Redmayne", // 17
        "Michelle Williams", // 18
        "Colin Firth", // 19
        "George Clooney", // 20
        "Julianne Moore", // 21
        "Matt Damon", // 22
        "Anthony Hopkins", // 23
        "Bradley Cooper", // 24
        "Christoph Waltz", // 25
        "The Rock", // 26
        "Bryan Cranston", // 27
        "Alicia Vikander", // 28
        "Steve Carell", // 29
        "Jamie Foxx", // 30
        "Tom Hardy", // 31
        "Charlize Theron", // 32
        "Johnny Depp", // 33
        "Gary Oldman", // 34
        "Jim Carrey", // 35
        "Eddie Murphy", // 36
        "Will Ferrell", // 37
        "Adam Sandler", // 38
        "Ben Stiller", // 39
        "Bill Murray", // 40
        "Jonah Hill", // 41
        "Seth Rogen", // 42
        "Steve Martin", // 43
        "Zack Galifianakis", // 44
        "Zac Efron", // 45
        "Vin Diesel", // 46
        "Jason Statham", // 47
        "Michelle Rodriguez", // 48
        "Scott Eastwood", // 49
        "Kurt Russell", // 50
        "Ludacris", // 51
        "Lucas Black", // 52
        "Charlize Theron", // 53
        "Megan Fox" // 54
    ]
    
}

extension Notification.Name {
    static let Segue = Notification.Name("Segue")
}









