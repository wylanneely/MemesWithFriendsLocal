//
//  StoredTopics.swift
//  MemesWithFriendsLocal
//
//  Created by Bradley GIlmore on 8/1/17.
//  Copyright © 2017 Bradley Gilmore. All rights reserved.
//

import Foundation

class StoredTopics {
    
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
    
    static let comicsTopics: [String] = [
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
        "The lord Of The rings",
        "The Dark Knight",
        "Cabin In The Woods",
        "The Beach",
        "The Road",
        "Gangs Of New York",
        "28 Days Later",
        "This Is The End",
        "Little Miss Sunshine",
        "500 Days Of Summer",
        "Avengers",
        "Guardians Of The Galazy",
        "Captain America The Winter Soldier",
        "Kill Bill",
        "Super bad",
        "American Pie",
        "Into The Wild",
        "Batman Begins",
        "The Wolf Of Wall Street",
        "Anchor Man",
        "Iron Man",
        "Iron Man 2",
        "Get Out",
        "All About Eve",
        "Modern Times",
        "It Happened One Night",
        "Singin' in the Rain",
        "A Hard Day's Night",
        "Toy Story 3",
        "Toy Story 2",
        "Zootopia",
        "The Philadelphia Story",
        "Up",
        "Baby Driver",
        "Dr. Strangelove Or How I Learned to Stop Worrying and Love the Bomb",
        "The Big Sick",
        "Finding Nemo",
        "La La Land",
        "Roman Holiday",
        "Toy Story",
        "Cool Hand Luke",
        "Monty Python and the Holy Grail",
        "The LEGO Movie",
        "The Gold Rush",
        "La Dolce Vita",
        "It's a Wonderful Life",
        "Before Midnight",
        "Shaun the Sheep Movie",
        "The Artist",
        "Love & Friendship",
        "To Be or Not to Be",
        "Playtime",
        "Annie Hall",
        "Mary Poppins",
        "City Lights",
        "The Rules of the Game",
        "His Girl Friday",
        "Ratatouille",
        "The Discreet Charm Of The Bourgeoisie",
        "Paterson",
        "Gentlemen Prefer Blondes",
        "The Incredibles",
        "Tampopo",
        "8 1/2",
        "Hunt for the Wilderpeople",
        "Don't Think Twice",
        "Chicken Run",
        "Airplane!",
        "Ghostbusters",
        "Big",
        "Paddington",
        "101 Dalmatians",
        "Duck Soup",
        "Birdman",
        "The Grand Budapest Hotel",
        "Spy",
        "Before Sunrise",
        "Some Like It Hot",
        "Moonrise Kingdom",
        "Bringing Up Baby",
        "The Princess Bride",
        "Back to the Future",
        "Sideways",
        "Monsters, Inc.",
        "Enough Said",
        "The Muppets",
        "Amadeus",
        "The Nice Guys",
        "Bull Durham",
        "The Player",
        "Truman",
        "Who Framed Roger Rabbit",
        "Tangerine",
        "Anomalisa",
        "What We Do In The Shadows",
        "Sense and Sensibility",
        "Le goût des autres (The Taste of Others)",
        "Brazil",
        "Todo sobre mi madre (All About My Mother)",
        "Repo Man",
        "We Are the Best!",
        "The Band's Visit",
        "Lost In Translation",
        "The Lego Batman Movie",
        "The Truman Show",
        "Monty Python's Life of Brian",
        "Manhattan",
        "Broadcast News",
        "Say Anything...",
        "The Edge of Seventeen",
        "Le Havre",
        "The Apartment",
        "Groundhog Day",
        "Antz",
        "Hairspray",
        "Mafioso",
        "Yellow Submarine",
        "Juno",
        "Monsieur Lazhar",
        "Wallace & Gromit: The Curse of the Were-Rabbit",
        "Silver Linings Playbook",
        "My Fair Lady"
    ]
    
}











