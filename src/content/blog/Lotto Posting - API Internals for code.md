---
title: Lotto Posting - API Internals for code
description: Enter boilerplate description about Lotto shit.
pubDate: Feb 08 2024
heroImage: /blog-placeholder-3.jpg
---


**Some other unique stuff**
`RealityCheck API Endpoint`
```HTTP
GET /services/account-details.json HTTP/1.1
HOST: https://www.lottery.ie
```
```json
{
  "remindRealityCheck": false
}
```

`PlayerName API`
`https://www.lottery.ie/services/playername.json`
```json
{
  "username": "calvinbergin212@gmail.com",
  "greeting": "CALVIN",
  "balance": null,
  "firstname": "CALVIN",
  "lastname": "BERGIN",
  "loggedinTime": null,
  "hasAcceptedTerms": true,
  "spendingLimitsData": null,
  "hasCard": null,
  "playerId": null,
  "registrationDate": null,
  "subscriberId": null,
  "marketingOptIn": null,
  "marketingList": null,
  "marketingListUnchecked": null
}
```

`playerNotifications`
`https://www.lottery.ie/services/playernotifications.json`
```json
{
  "unreadCount": 0
}
```

`wallet`
`https://www.lottery.ie/services/wallet.json`
```json
{
  "totalAmount": "0.00"
}
```

`systime`
`https://www.lottery.ie/services/systime.json`
```json
{
  "millis": 1725469328393
}
```




-------------

**JSON Embed:**

```json
{
    "props":
    {
        "pageProps":
        {
            "list": [
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-09-02T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                20,
                                24,
                                27,
                                33,
                                36
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 145,
                        "numberOfNationalWinners": 7,
                        "prize": "€93"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5020,
                        "numberOfNationalWinners": 237,
                        "prize": "€43"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 71518,
                        "numberOfNationalWinners": 3624,
                        "prize": "€6"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 423593,
                        "numberOfNationalWinners": 21522,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 25,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-29T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                4,
                                14,
                                22,
                                24,
                                36
                            ]
                        ],
                        "additional": [
                            [
                                4
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 98,
                        "numberOfNationalWinners": 5,
                        "prize": "€138"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 4859,
                        "numberOfNationalWinners": 232,
                        "prize": "€45"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 74195,
                        "numberOfNationalWinners": 3613,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 446142,
                        "numberOfNationalWinners": 21593,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was one winner of the EuroDreams top prize. The winning ticket was sold in France. In total, over 25,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-26T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                5,
                                6,
                                8,
                                12,
                                30,
                                32
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 118,
                        "numberOfNationalWinners": 1,
                        "prize": "€105"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 4865,
                        "numberOfNationalWinners": 263,
                        "prize": "€41"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 74144,
                        "numberOfNationalWinners": 3956,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 427327,
                        "numberOfNationalWinners": 22796,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-22T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                1,
                                11,
                                16,
                                26,
                                28,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 121,
                        "numberOfNationalWinners": 6,
                        "prize": "€112"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5252,
                        "numberOfNationalWinners": 282,
                        "prize": "€42"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 73568,
                        "numberOfNationalWinners": 3979,
                        "prize": "€6"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 431588,
                        "numberOfNationalWinners": 23000,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was one winner of the EuroDreams top prize. The winning ticket was sold in Portugal. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-19T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                6,
                                11,
                                14,
                                17,
                                28,
                                33
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 148,
                        "numberOfNationalWinners": 8,
                        "prize": "€82"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5481,
                        "numberOfNationalWinners": 310,
                        "prize": "€36"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 73445,
                        "numberOfNationalWinners": 4093,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 417719,
                        "numberOfNationalWinners": 22989,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-15T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                6,
                                14,
                                20,
                                34,
                                38,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 94,
                        "numberOfNationalWinners": 3,
                        "prize": "€154"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 4193,
                        "numberOfNationalWinners": 219,
                        "prize": "€56"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 63370,
                        "numberOfNationalWinners": 3595,
                        "prize": "€7"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 387588,
                        "numberOfNationalWinners": 20965,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 24,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-12T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                10,
                                13,
                                19,
                                22,
                                25,
                                28
                            ]
                        ],
                        "additional": [
                            [
                                2
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 192,
                        "numberOfNationalWinners": 8,
                        "prize": "€55"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 6339,
                        "numberOfNationalWinners": 266,
                        "prize": "€27"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 82268,
                        "numberOfNationalWinners": 4296,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 436480,
                        "numberOfNationalWinners": 23604,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 28,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-08T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                2,
                                8,
                                9,
                                17,
                                21,
                                22
                            ]
                        ],
                        "additional": [
                            [
                                2
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 150,
                        "numberOfNationalWinners": 6,
                        "prize": "€79"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5974,
                        "numberOfNationalWinners": 317,
                        "prize": "€32"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 84961,
                        "numberOfNationalWinners": 4727,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 477993,
                        "numberOfNationalWinners": 26081,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 31,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-05T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                10,
                                13,
                                16,
                                31,
                                38
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 134,
                        "numberOfNationalWinners": 4,
                        "prize": "€91"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5083,
                        "numberOfNationalWinners": 296,
                        "prize": "€39"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 71236,
                        "numberOfNationalWinners": 3933,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 414478,
                        "numberOfNationalWinners": 23498,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-08-01T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                1,
                                6,
                                23,
                                27,
                                33,
                                34
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 98,
                        "numberOfNationalWinners": 5,
                        "prize": "€142"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 4658,
                        "numberOfNationalWinners": 272,
                        "prize": "€48"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 72999,
                        "numberOfNationalWinners": 3940,
                        "prize": "€6"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 445091,
                        "numberOfNationalWinners": 23483,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-29T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                1,
                                5,
                                9,
                                19,
                                22,
                                25
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 158,
                        "numberOfNationalWinners": 7,
                        "prize": "€72"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 6054,
                        "numberOfNationalWinners": 322,
                        "prize": "€30"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 77904,
                        "numberOfNationalWinners": 4404,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 420686,
                        "numberOfNationalWinners": 24623,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-25T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                16,
                                18,
                                27,
                                30,
                                37
                            ]
                        ],
                        "additional": [
                            [
                                4
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 134,
                        "numberOfNationalWinners": 4,
                        "prize": "€101"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5156,
                        "numberOfNationalWinners": 297,
                        "prize": "€42"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 71511,
                        "numberOfNationalWinners": 4032,
                        "prize": "€6"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 414442,
                        "numberOfNationalWinners": 23470,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-22T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                12,
                                18,
                                19,
                                21,
                                24
                            ]
                        ],
                        "additional": [
                            [
                                4
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 2,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 157,
                        "numberOfNationalWinners": 15,
                        "prize": "€67"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5836,
                        "numberOfNationalWinners": 305,
                        "prize": "€29"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 79487,
                        "numberOfNationalWinners": 4507,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 430226,
                        "numberOfNationalWinners": 24704,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-18T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                8,
                                22,
                                28,
                                31,
                                38,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                1
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 2,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 134,
                        "numberOfNationalWinners": 12,
                        "prize": "€107"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5363,
                        "numberOfNationalWinners": 233,
                        "prize": "€43"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 74718,
                        "numberOfNationalWinners": 3845,
                        "prize": "€6"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 433570,
                        "numberOfNationalWinners": 22756,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 26,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-15T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                15,
                                19,
                                21,
                                23,
                                28,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 109,
                        "numberOfNationalWinners": 4,
                        "prize": "€104"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5232,
                        "numberOfNationalWinners": 270,
                        "prize": "€35"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 77088,
                        "numberOfNationalWinners": 3952,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 435683,
                        "numberOfNationalWinners": 22467,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 26,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-11T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                5,
                                19,
                                20,
                                24,
                                28,
                                30
                            ]
                        ],
                        "additional": [
                            [
                                4
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 109,
                        "numberOfNationalWinners": 7,
                        "prize": "€123"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5473,
                        "numberOfNationalWinners": 307,
                        "prize": "€40"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 78522,
                        "numberOfNationalWinners": 3971,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 455767,
                        "numberOfNationalWinners": 23632,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-08T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                3,
                                13,
                                21,
                                26,
                                36,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 142,
                        "numberOfNationalWinners": 9,
                        "prize": "€88"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5369,
                        "numberOfNationalWinners": 301,
                        "prize": "€38"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 75156,
                        "numberOfNationalWinners": 3960,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 432488,
                        "numberOfNationalWinners": 23114,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-04T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                4,
                                8,
                                22,
                                23,
                                27,
                                33
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 128,
                        "numberOfNationalWinners": 7,
                        "prize": "€100"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 6258,
                        "numberOfNationalWinners": 333,
                        "prize": "€33"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 87453,
                        "numberOfNationalWinners": 4298,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 489918,
                        "numberOfNationalWinners": 24495,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-07-01T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                4,
                                8,
                                11,
                                12,
                                20,
                                38
                            ]
                        ],
                        "additional": [
                            [
                                2
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 135,
                        "numberOfNationalWinners": 7,
                        "prize": "€98"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5680,
                        "numberOfNationalWinners": 316,
                        "prize": "€37"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 77494,
                        "numberOfNationalWinners": 4065,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 438598,
                        "numberOfNationalWinners": 23883,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 28,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-27T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                9,
                                13,
                                15,
                                18,
                                27,
                                37
                            ]
                        ],
                        "additional": [
                            [
                                2
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 141,
                        "numberOfNationalWinners": 9,
                        "prize": "€96"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 6801,
                        "numberOfNationalWinners": 304,
                        "prize": "€32"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 90550,
                        "numberOfNationalWinners": 4103,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 501955,
                        "numberOfNationalWinners": 23288,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 27,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-24T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                5,
                                13,
                                16,
                                20,
                                23,
                                30
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 153,
                        "numberOfNationalWinners": 8,
                        "prize": "€75"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5935,
                        "numberOfNationalWinners": 284,
                        "prize": "€31"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 78903,
                        "numberOfNationalWinners": 4002,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 435475,
                        "numberOfNationalWinners": 22663,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 26,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-20T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                1,
                                2,
                                7,
                                13,
                                19,
                                21
                            ]
                        ],
                        "additional": [
                            [
                                5
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 206,
                        "numberOfNationalWinners": 8,
                        "prize": "€57"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 7689,
                        "numberOfNationalWinners": 333,
                        "prize": "€24"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 97325,
                        "numberOfNationalWinners": 4332,
                        "prize": "€4"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 504951,
                        "numberOfNationalWinners": 23992,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 28,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-17T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                14,
                                16,
                                19,
                                22,
                                23,
                                32
                            ]
                        ],
                        "additional": [
                            [
                                4
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 118,
                        "numberOfNationalWinners": 7,
                        "prize": "€113"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5274,
                        "numberOfNationalWinners": 288,
                        "prize": "€41"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 74922,
                        "numberOfNationalWinners": 4259,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 439661,
                        "numberOfNationalWinners": 25197,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-13T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                17,
                                19,
                                21,
                                22,
                                23,
                                27
                            ]
                        ],
                        "additional": [
                            [
                                1
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 1,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 145,
                        "numberOfNationalWinners": 7,
                        "prize": "€90"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5966,
                        "numberOfNationalWinners": 292,
                        "prize": "€35"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 85310,
                        "numberOfNationalWinners": 4360,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 507865,
                        "numberOfNationalWinners": 25380,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was one winner of the EuroDreams top prize. The winning ticket was sold in Austria. In total, over 30,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-10T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                4,
                                7,
                                27,
                                31,
                                33,
                                40
                            ]
                        ],
                        "additional": [
                            [
                                3
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 127,
                        "numberOfNationalWinners": 8,
                        "prize": "€101"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5622,
                        "numberOfNationalWinners": 290,
                        "prize": "€37"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 81259,
                        "numberOfNationalWinners": 4356,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 459212,
                        "numberOfNationalWinners": 24693,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            },
            {
                "standard":
                {
                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                    "jackpotAmount": "€7,200,000",
                    "drawDates": [
                        "2024-06-06T18:30:00.000Z"
                    ],
                    "grids": [
                    {
                        "standard": [
                            [
                                12,
                                15,
                                24,
                                28,
                                29,
                                31
                            ]
                        ],
                        "additional": [
                            [
                                1
                            ]
                        ]
                    }],
                    "prizes": [
                    {
                        "match": "6+1",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 360,
                        "annuityAmount": 2000000,
                        "prize": "€20,000"
                    },
                    {
                        "match": "6",
                        "prizeType": "Annuity",
                        "numberOfWinners": 0,
                        "numberOfNationalWinners": 0,
                        "annuityPeriod": 60,
                        "annuityAmount": 200000,
                        "prize": "€2,000"
                    },
                    {
                        "match": "5",
                        "prizeType": "Cash",
                        "numberOfWinners": 133,
                        "numberOfNationalWinners": 10,
                        "prize": "€112"
                    },
                    {
                        "match": "4",
                        "prizeType": "Cash",
                        "numberOfWinners": 5847,
                        "numberOfNationalWinners": 327,
                        "prize": "€41"
                    },
                    {
                        "match": "3",
                        "prizeType": "Cash",
                        "numberOfWinners": 83128,
                        "numberOfNationalWinners": 4439,
                        "prize": "€5"
                    },
                    {
                        "match": "2",
                        "prizeType": "Cash",
                        "numberOfWinners": 489286,
                        "numberOfNationalWinners": 25997,
                        "prize": "€2.50"
                    }],
                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 30,000 players in Ireland won prizes.",
                    "gameTitle": "EuroDreams"
                },
                "addonGames": []
            }],
            "pageSize": 5,
            "gameInfo":
            {
                "gameid": "42",
                "minLines": 1,
                "maxLines": 6,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40
                ],
                "playSet":
                {
                    "mainSelections": [
                        6
                    ],
                    "extraSelections": [
                        1
                    ]
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 6
                    },
                    "bonus":
                    {
                        "size": 1
                    }
                },
                "size": 40,
                "bonusSize": 5,
                "bonusRange": [
                    1,
                    2,
                    3,
                    4,
                    5
                ],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [],
                "pricePerLineInCents": 250,
                "plusGameCostInCents": 0,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    4,
                    6,
                    8
                ],
                "drawDays": [
                {
                    "day": "MONDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 30,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                },
                {
                    "day": "THURSDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 30,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "42"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                "smalllogo": "",
                "title": "EuroDreams",
                "contentid": "eurodreams",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "42",
                    "nextDrawDate": "2024-09-05T18:30:00.000Z",
                    "amount": 720000000,
                    "guaranteed": true,
                    "drawId": 88,
                    "topPrizeAnnuity": 2000000,
                    "annuityPeriod": 360
                }],
                "drawBreakDuration": 30,
                "specialDrawDate": "",
                "webappMobileHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg",
                "webappDesktopHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg"
            },
            "banner":
            {
                "url": "https://www.lottery.ie/month-of-millionaires/#:~:text=Responsible%20Play-,Month%20of%20Millionaires%20%2D%204%20new%20Millionaires%20to%20be%20made%20in,FOUR%20more%20Millionaires%20this%20September!",
                "img": "/content/dam/pli/banners/month-of-millionaires/NL_4_More_Milionaires_Web_917x432.jpg"
            },
            "loadedDateRange":
            {
                "start": "2024-06-05",
                "end": "2024-09-04"
            }
        },
        "channel": "WebApp",
        "cachedDataActions": [
        {
            "kind": "Set",
            "key": "language",
            "val": "en"
        },
        {
            "kind": "Set",
            "key": "drawBasedGames",
            "val": [
            {
                "gameid": "1",
                "minLines": 2,
                "maxLines": 10,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47
                ],
                "playSet":
                {
                    "mainSelections": [
                        6
                    ],
                    "extraSelections": null
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 6
                    },
                    "bonus":
                    {
                        "size": 1
                    }
                },
                "size": 47,
                "bonusSize": 0,
                "bonusRange": [],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "2",
                    "minLines": 2,
                    "maxLines": 10,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            6
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 6
                        },
                        "bonus":
                        {
                            "size": 1
                        }
                    },
                    "size": 47,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "WEDNESDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "3",
                    "minLines": 2,
                    "maxLines": 10,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            6
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 6
                        },
                        "bonus":
                        {
                            "size": 1
                        }
                    },
                    "size": 47,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "WEDNESDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "13",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "WEDNESDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 200,
                "plusGameCostInCents": 100,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    4,
                    8
                ],
                "drawDays": [
                {
                    "day": "WEDNESDAY",
                    "time": "19:45",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "19:45",
                    "resultsOffset": 0
                },
                {
                    "day": "SATURDAY",
                    "time": "19:45",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "19:45",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "1"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/Lotto.svg",
                "smalllogo": "/content/dam/pli/logos/lotto-small.svg",
                "title": "Lotto",
                "contentid": "lotto",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "1",
                    "nextDrawDate": "2024-09-04T18:45:00.000Z",
                    "amount": 350000000,
                    "guaranteed": false,
                    "drawId": 3687
                },
                {
                    "gameId": "1",
                    "nextDrawDate": "2024-09-07T18:45:00.000Z",
                    "amount": 0,
                    "guaranteed": false,
                    "drawId": 3688
                },
                {
                    "gameId": "1",
                    "nextDrawDate": "2024-09-11T18:45:00.000Z",
                    "amount": 0,
                    "guaranteed": false,
                    "drawId": 3689
                }],
                "drawBreakDuration": 10,
                "specialDrawDate": "2024-07-06T19:45:00.000",
                "webappMobileHeroBannerPhotoImage": "",
                "webappDesktopHeroBannerPhotoImage": ""
            },
            {
                "gameid": "4",
                "minLines": 1,
                "maxLines": 6,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50
                ],
                "playSet":
                {
                    "mainSelections": [
                        5
                    ],
                    "extraSelections": [
                        2
                    ]
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 5
                    },
                    "bonus":
                    {
                        "size": 2
                    }
                },
                "size": 50,
                "bonusSize": 12,
                "bonusRange": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12
                ],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "5",
                    "minLines": 1,
                    "maxLines": 6,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47,
                        48,
                        49,
                        50
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            5
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 5
                        }
                    },
                    "size": 50,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        6,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "14",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        "I"
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 1,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": true,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        6,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "15",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        "I"
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 1,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        6,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "19:30",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 630,
                        "salesCloseTime": "19:30",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 250,
                "plusGameCostInCents": 100,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    4,
                    6,
                    8
                ],
                "drawDays": [
                {
                    "day": "TUESDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 630,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                },
                {
                    "day": "FRIDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 630,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "4",
                    "14",
                    "15"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/EuroMillions.svg",
                "smalllogo": "/content/dam/pli/logos/euromillions-small.svg",
                "title": "EuroMillions",
                "contentid": "euromillions",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "4",
                    "nextDrawDate": "2024-09-03T18:30:00.000Z",
                    "amount": 13000000000,
                    "guaranteed": false,
                    "drawId": 1735
                },
                {
                    "gameId": "4",
                    "nextDrawDate": "2024-09-06T18:30:00.000Z",
                    "amount": 15000000000,
                    "guaranteed": false,
                    "drawId": 1736
                },
                {
                    "gameId": "4",
                    "nextDrawDate": "2024-09-10T18:30:00.000Z",
                    "amount": 0,
                    "guaranteed": false,
                    "drawId": 1737
                }],
                "drawBreakDuration": 630,
                "specialDrawDate": "2024-09-06T19:30:00.000",
                "webappMobileHeroBannerPhotoImage": "/content/dam/pli/banners/euromillions-dream-inspector-web-home.png",
                "webappDesktopHeroBannerPhotoImage": "/content/dam/pli/banners/euromillions-dream-inspector-web-home.png"
            },
            {
                "gameid": "6",
                "minLines": 1,
                "maxLines": 10,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39
                ],
                "playSet":
                {
                    "mainSelections": [
                        6
                    ],
                    "extraSelections": null
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 6
                    },
                    "bonus":
                    {
                        "size": 1
                    }
                },
                "size": 39,
                "bonusSize": 0,
                "bonusRange": [],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "7",
                    "minLines": 1,
                    "maxLines": 10,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            6
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 6
                        },
                        "bonus":
                        {
                            "size": 1
                        }
                    },
                    "size": 39,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7
                    ],
                    "drawDays": [
                    {
                        "day": "MONDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "MONDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "TUESDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "TUESDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "WEDNESDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "WEDNESDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SUNDAY",
                        "time": "14:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "14:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SUNDAY",
                        "time": "21:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "21:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 100,
                "plusGameCostInCents": 50,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7
                ],
                "drawDays": [
                {
                    "day": "MONDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "MONDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "TUESDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "TUESDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "WEDNESDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "WEDNESDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "THURSDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "THURSDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "FRIDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "FRIDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "SATURDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "SATURDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                },
                {
                    "day": "SUNDAY",
                    "time": "14:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "14:00",
                    "resultsOffset": 0
                },
                {
                    "day": "SUNDAY",
                    "time": "21:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "21:00",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "6"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/DailyMillion.svg",
                "smalllogo": "/content/dam/pli/logos/daily-million-small.svg",
                "title": "Daily Million",
                "contentid": "daily-million",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "6",
                    "nextDrawDate": "2024-09-04T13:00:00.000Z",
                    "amount": 100000000,
                    "guaranteed": true,
                    "drawId": 7438
                }],
                "drawBreakDuration": 10,
                "specialDrawDate": "2023-12-07T21:00:00.000",
                "webappMobileHeroBannerPhotoImage": "",
                "webappDesktopHeroBannerPhotoImage": ""
            },
            {
                "gameid": "8",
                "minLines": 1,
                "maxLines": 10,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47
                ],
                "playSet":
                {
                    "mainSelections": [
                        1,
                        2,
                        3,
                        4,
                        5
                    ],
                    "extraSelections": null
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 6
                    },
                    "bonus":
                    {
                        "size": 1
                    }
                },
                "size": 47,
                "bonusSize": 0,
                "bonusRange": [],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "9",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            6
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 6
                        },
                        "bonus":
                        {
                            "size": 1
                        }
                    },
                    "size": 47,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "WEDNESDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "10",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            6
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 6
                        },
                        "bonus":
                        {
                            "size": 1
                        }
                    },
                    "size": 47,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [
                        1,
                        2,
                        4,
                        8
                    ],
                    "drawDays": [
                    {
                        "day": "WEDNESDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    },
                    {
                        "day": "SATURDAY",
                        "time": "19:45",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 10,
                        "salesCloseTime": "19:45",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 100,
                "plusGameCostInCents": 200,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    4,
                    8
                ],
                "drawDays": [
                {
                    "day": "WEDNESDAY",
                    "time": "19:45",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "19:45",
                    "resultsOffset": 0
                },
                {
                    "day": "SATURDAY",
                    "time": "19:45",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 10,
                    "salesCloseTime": "19:45",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "8"
                ],
                "soldIndependently": true,
                "prizeMappings":
                {
                    "1": "6",
                    "2": "45",
                    "3": "550",
                    "4": "6000",
                    "5": "125000"
                },
                "bonusPrizeMappings":
                {
                    "1": "5",
                    "2": "32",
                    "3": "275",
                    "4": "3000",
                    "5": "40000"
                },
                "lineCostOptions": [
                    100,
                    200,
                    300,
                    400,
                    500
                ],
                "plusGameCostOptions": [
                    300,
                    600,
                    900,
                    1200,
                    1500
                ],
                "plusGameIndivualCosts": [
                    200,
                    400,
                    600,
                    800,
                    1000
                ],
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/Lotto54321.svg",
                "smalllogo": "/content/dam/pli/logos/lotto-54321-small.svg",
                "title": "Lotto 5-4-3-2-1",
                "contentid": "lotto54321",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "8",
                    "nextDrawDate": "2024-09-04T18:45:00.000Z",
                    "amount": 12500000,
                    "guaranteed": true,
                    "drawId": 2876
                }],
                "drawBreakDuration": 10,
                "specialDrawDate": "",
                "webappMobileHeroBannerPhotoImage": "",
                "webappDesktopHeroBannerPhotoImage": ""
            },
            {
                "gameid": "11",
                "minLines": 0,
                "maxLines": 0,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40,
                    41,
                    42,
                    43,
                    44,
                    45,
                    46,
                    47,
                    48,
                    49,
                    50,
                    51,
                    52,
                    53,
                    54,
                    55,
                    56,
                    57,
                    58,
                    59,
                    60,
                    61,
                    62,
                    63,
                    64,
                    65,
                    66,
                    67,
                    68,
                    69,
                    70,
                    71,
                    72,
                    73,
                    74,
                    75
                ],
                "playSet":
                {
                    "mainSelections": [
                        24
                    ],
                    "extraSelections": null
                },
                "drawSet":
                {},
                "size": 75,
                "bonusSize": 0,
                "bonusRange": [],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "20",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 5,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "21",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "22",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47,
                        48,
                        49,
                        50,
                        51,
                        52,
                        53,
                        54,
                        55,
                        56,
                        57,
                        58,
                        59,
                        60,
                        61,
                        62,
                        63,
                        64,
                        65,
                        66,
                        67,
                        68,
                        69,
                        70,
                        71,
                        72,
                        73,
                        74,
                        75
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {},
                    "size": 75,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "23",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47,
                        48,
                        49,
                        50,
                        51,
                        52,
                        53,
                        54,
                        55,
                        56,
                        57,
                        58,
                        59,
                        60,
                        61,
                        62,
                        63,
                        64,
                        65,
                        66,
                        67,
                        68,
                        69,
                        70,
                        71,
                        72,
                        73,
                        74,
                        75
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {},
                    "size": 75,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "24",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47,
                        48,
                        49,
                        50,
                        51,
                        52,
                        53,
                        54,
                        55,
                        56,
                        57,
                        58,
                        59,
                        60,
                        61,
                        62,
                        63,
                        64,
                        65,
                        66,
                        67,
                        68,
                        69,
                        70,
                        71,
                        72,
                        73,
                        74,
                        75
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 75,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "25",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9,
                        10,
                        11,
                        12,
                        13,
                        14,
                        15,
                        16,
                        17,
                        18,
                        19,
                        20,
                        21,
                        22,
                        23,
                        24,
                        25,
                        26,
                        27,
                        28,
                        29,
                        30,
                        31,
                        32,
                        33,
                        34,
                        35,
                        36,
                        37,
                        38,
                        39,
                        40,
                        41,
                        42,
                        43,
                        44,
                        45,
                        46,
                        47,
                        48,
                        49,
                        50,
                        51,
                        52,
                        53,
                        54,
                        55,
                        56,
                        57,
                        58,
                        59,
                        60,
                        61,
                        62,
                        63,
                        64,
                        65,
                        66,
                        67,
                        68,
                        69,
                        70,
                        71,
                        72,
                        73,
                        74,
                        75
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 75,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": false,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "TUESDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "THURSDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    },
                    {
                        "day": "FRIDAY",
                        "time": "11:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 15,
                        "salesCloseTime": "11:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 200,
                "plusGameCostInCents": 0,
                "allowedNumberOfDraws": [],
                "drawDays": [
                {
                    "day": "TUESDAY",
                    "time": "11:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 15,
                    "salesCloseTime": "11:00",
                    "resultsOffset": 0
                },
                {
                    "day": "THURSDAY",
                    "time": "11:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 15,
                    "salesCloseTime": "11:00",
                    "resultsOffset": 0
                },
                {
                    "day": "FRIDAY",
                    "time": "11:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 15,
                    "salesCloseTime": "11:00",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "11"
                ],
                "soldIndependently": false,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/TellyBingo.svg",
                "smalllogo": "/content/dam/pli/logos/telly-bingo-small.svg",
                "title": "Telly Bingo",
                "contentid": "tellybingo",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "11",
                    "nextDrawDate": "2024-09-05T10:00:00.000Z",
                    "amount": 0,
                    "guaranteed": false,
                    "drawId": 3229
                }],
                "drawBreakDuration": 15,
                "specialDrawDate": "",
                "webappMobileHeroBannerPhotoImage": "",
                "webappDesktopHeroBannerPhotoImage": ""
            },
            {
                "gameid": "12",
                "minLines": 1,
                "maxLines": 1,
                "range": [
                    0,
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9
                ],
                "playSet":
                {
                    "mainSelections": [
                        1
                    ],
                    "extraSelections": null
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 1
                    }
                },
                "size": 10,
                "bonusSize": 0,
                "bonusRange": [],
                "claimPeriodDays": 91,
                "isRaffle": true,
                "isEuroMillionaireGame": false,
                "addonGames": [
                {
                    "gameid": "31",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "32",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "33",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "34",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "35",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "36",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                },
                {
                    "gameid": "37",
                    "minLines": 0,
                    "maxLines": 0,
                    "range": [
                        0,
                        1,
                        2,
                        3,
                        4,
                        5,
                        6,
                        7,
                        8,
                        9
                    ],
                    "playSet":
                    {
                        "mainSelections": [
                            1
                        ],
                        "extraSelections": null
                    },
                    "drawSet":
                    {
                        "standard":
                        {
                            "size": 1
                        }
                    },
                    "size": 10,
                    "bonusSize": 0,
                    "bonusRange": [],
                    "claimPeriodDays": 91,
                    "isRaffle": true,
                    "isEuroMillionaireGame": false,
                    "addonGames": [],
                    "pricePerLineInCents": 0,
                    "plusGameCostInCents": 0,
                    "allowedNumberOfDraws": [],
                    "drawDays": [
                    {
                        "day": "SUNDAY",
                        "time": "22:00",
                        "drawBreakOffset": 0,
                        "drawBreakDuration": 5,
                        "salesCloseTime": "22:00",
                        "resultsOffset": 0
                    }],
                    "defaultPlayCombination": [],
                    "soldIndependently": false,
                    "prizeMappings": null,
                    "bonusPrizeMappings": null,
                    "lineCostOptions": null,
                    "plusGameCostOptions": null,
                    "plusGameIndivualCosts": null,
                    "soldout": false
                }],
                "pricePerLineInCents": 2500,
                "plusGameCostInCents": 0,
                "allowedNumberOfDraws": [
                    1
                ],
                "drawDays": [
                {
                    "day": "SUNDAY",
                    "time": "22:00",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 5,
                    "salesCloseTime": "22:00",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "12"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": true,
                "gameOnSale": false,
                "logo": "/content/dam/pli/logos/left/rgb/MillionaireRaffle.svg",
                "smalllogo": "/content/dam/pli/logos/millionaire-raffle-small.svg",
                "title": "Millionaire Raffle",
                "contentid": "millionaire-raffle",
                "showResults": false,
                "jackpotInfo": [
                {
                    "gameId": "12",
                    "nextDrawDate": "2024-12-31T22:00:00.000Z",
                    "amount": 100000000,
                    "guaranteed": true,
                    "drawId": 38
                }],
                "drawBreakDuration": 5,
                "specialDrawDate": "",
                "webappMobileHeroBannerPhotoImage": "",
                "webappDesktopHeroBannerPhotoImage": ""
            },
            {
                "gameid": "42",
                "minLines": 1,
                "maxLines": 6,
                "range": [
                    1,
                    2,
                    3,
                    4,
                    5,
                    6,
                    7,
                    8,
                    9,
                    10,
                    11,
                    12,
                    13,
                    14,
                    15,
                    16,
                    17,
                    18,
                    19,
                    20,
                    21,
                    22,
                    23,
                    24,
                    25,
                    26,
                    27,
                    28,
                    29,
                    30,
                    31,
                    32,
                    33,
                    34,
                    35,
                    36,
                    37,
                    38,
                    39,
                    40
                ],
                "playSet":
                {
                    "mainSelections": [
                        6
                    ],
                    "extraSelections": [
                        1
                    ]
                },
                "drawSet":
                {
                    "standard":
                    {
                        "size": 6
                    },
                    "bonus":
                    {
                        "size": 1
                    }
                },
                "size": 40,
                "bonusSize": 5,
                "bonusRange": [
                    1,
                    2,
                    3,
                    4,
                    5
                ],
                "claimPeriodDays": 91,
                "isRaffle": false,
                "isEuroMillionaireGame": false,
                "addonGames": [],
                "pricePerLineInCents": 250,
                "plusGameCostInCents": 0,
                "allowedNumberOfDraws": [
                    1,
                    2,
                    4,
                    6,
                    8
                ],
                "drawDays": [
                {
                    "day": "MONDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 30,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                },
                {
                    "day": "THURSDAY",
                    "time": "19:30",
                    "drawBreakOffset": 0,
                    "drawBreakDuration": 30,
                    "salesCloseTime": "19:30",
                    "resultsOffset": 0
                }],
                "defaultPlayCombination": [
                    "42"
                ],
                "soldIndependently": true,
                "prizeMappings": null,
                "bonusPrizeMappings": null,
                "lineCostOptions": null,
                "plusGameCostOptions": null,
                "plusGameIndivualCosts": null,
                "soldout": false,
                "gameOnSale": true,
                "logo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                "smalllogo": "",
                "title": "EuroDreams",
                "contentid": "eurodreams",
                "showResults": true,
                "jackpotInfo": [
                {
                    "gameId": "42",
                    "nextDrawDate": "2024-09-05T18:30:00.000Z",
                    "amount": 720000000,
                    "guaranteed": true,
                    "drawId": 88,
                    "topPrizeAnnuity": 2000000,
                    "annuityPeriod": 360
                }],
                "drawBreakDuration": 30,
                "specialDrawDate": "",
                "webappMobileHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg",
                "webappDesktopHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg"
            }]
        },
        {
            "kind": "Set",
            "key": "headerIwgDetails",
            "val": [
            {
                "id": "92",
                "cost": 300,
                "topPrize": 3000000,
                "odds": 2.69,
                "topPrizeOdds": "1.5M",
                "active": true,
                "image": "/content/dam/pli/games/cashword-2021/site-lobby-380x203.gif",
                "title": "Cashword",
                "url": "/instant-win-games/cashword",
                "popular": false,
                "slug": "cashword",
                "backgroundImage": "/content/dam/pli/games/cashword-2021/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/cashword-2021/logo1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-cashword-2021.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Cashword rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/cashword-2021/cashwordsquare-bg@1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/cashword-2021/logo1x.png",
                "lobbyOrder": 18
            },
            {
                "id": "80",
                "cost": 200,
                "topPrize": 1500000,
                "odds": 3.39,
                "topPrizeOdds": "1M",
                "active": true,
                "image": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-gold-2020/site_lobby_380x203.gif",
                "title": "Digital All Cash Gold",
                "url": "/instant-win-games/digital-all-cash-gold",
                "popular": false,
                "slug": "digital-all-cash-gold",
                "backgroundImage": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-gold-2020/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-gold-2020/logo-original1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-digital-all-cash-gold-2020.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Digital All Cash Gold rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-gold-2020/square-bg1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-gold-2020/logo-original1x.png",
                "lobbyOrder": 2
            },
            {
                "id": "84",
                "cost": 1000,
                "topPrize": 20000000,
                "odds": 2.69,
                "topPrizeOdds": "2M",
                "active": true,
                "image": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-spectacular-2020/site_lobby_380x203.png",
                "title": "Digital All Cash Spectacular",
                "url": "/instant-win-games/digital-all-cash-spectacular",
                "popular": false,
                "slug": "digital-all-cash-spectacular",
                "backgroundImage": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-spectacular-2020/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-spectacular-2020/logo-original1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-digital-all-cash-spectacular-2020.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Digital All Cash Spectacular rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-spectacular-2020/square-bg1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/digital-all-cash-family/digital-all-cash-spectacular-2020/logo-original1x.png",
                "lobbyOrder": 15
            },
            {
                "id": "110",
                "cost": 1000,
                "topPrize": 25000000,
                "odds": 2.81,
                "topPrizeOdds": "1M",
                "active": true,
                "image": "/content/dam/pli/games/digital-mega-money-multiplier/site-lobby-380x203.gif",
                "title": "Digital Mega Money Multiplier",
                "url": "/instant-win-games/digital-mega-money-multiplier",
                "popular": false,
                "slug": "digital-mega-money-multiplier",
                "backgroundImage": "/content/dam/pli/games/digital-mega-money-multiplier/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/digital-mega-money-multiplier/logo1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-digital-mega-money-multiplier.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Digital Mega Money Multiplier rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/digital-mega-money-multiplier/square-bg1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/digital-mega-money-multiplier/logo1x.png",
                "lobbyOrder": 12
            },
            {
                "id": "90",
                "cost": 200,
                "topPrize": 1000000,
                "odds": 3.12,
                "topPrizeOdds": "1M",
                "active": true,
                "image": "/content/dam/pli/games/lucky-rainbow-doubler/site-lobby-380x203.gif",
                "title": "Lucky Rainbow Doubler",
                "url": "/instant-win-games/lucky-rainbow-doubler",
                "popular": false,
                "slug": "lucky-rainbow-doubler",
                "backgroundImage": "/content/dam/pli/games/lucky-rainbow-doubler/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/lucky-rainbow-doubler/logo1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-lucky-rainbow-doubler.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Lucky Rainbow Doubler rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/lucky-rainbow-doubler/luckyrdsquare-bg@1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/lucky-rainbow-doubler/logo1x.png",
                "lobbyOrder": 34
            },
            {
                "id": "95",
                "cost": 500,
                "topPrize": 7500000,
                "odds": 2.8,
                "topPrizeOdds": "1M",
                "active": true,
                "image": "/content/dam/pli/games/paradise-prizes/site-lobby-380x203.gif",
                "title": "Paradise Prizes",
                "url": "/instant-win-games/paradise-prizes",
                "popular": false,
                "slug": "paradise-prizes",
                "backgroundImage": "/content/dam/pli/games/paradise-prizes/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/paradise-prizes/logo1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-paradise-prizes.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Paradise Prizes rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/paradise-prizes/square-bg1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/paradise-prizes/logo1x.png",
                "lobbyOrder": 7
            },
            {
                "id": "109",
                "cost": 500,
                "topPrize": 10000000,
                "odds": 2.86,
                "topPrizeOdds": "2M",
                "active": true,
                "image": "/content/dam/pli/games/digital-money-multiplier/site-lobby-380x203-02.gif",
                "title": "Digital Money Multiplier",
                "url": "/instant-win-games/digital-money-multiplier",
                "popular": false,
                "slug": "digital-money-multiplier",
                "backgroundImage": "/content/dam/pli/games/digital-money-multiplier/landscape-bg1x.jpg",
                "foregroundImage": "/content/dam/pli/games/digital-money-multiplier/logo1x.png",
                "appGameRules": "To aid player comprehension, the “General Rules for Account Management and Interactive Instant Win Games” and the “Interactive Instant Win Game Specific Rules” for each individual game have been updated. Please click on the links below to access these rules. ",
                "gameRulesUrl": "/content/dam/pli/game-rules/iwgs/game-rules-for-digital-money-multiplier.pdf",
                "gameRulesTitle": "Download a copy of the National Lottery Digital Money Multiplier rules (PDF)",
                "backgroundImageSmall": "/content/dam/pli/games/digital-money-multiplier/square-bg1x.jpg",
                "foregroundImageSmall": "/content/dam/pli/games/digital-money-multiplier/logo1x.png",
                "lobbyOrder": 13
            }]
        },
        {
            "kind": "Set",
            "key": "isIWGAvailable",
            "val": false
        },
        {
            "kind": "Set",
            "key": "globalConfiguration",
            "val":
            {
                "scratchCardMenuImage": "/content/dam/pli/scratch-cards/all-cash-surprise/287-all-cash-surprise-scratch-card-packshot.png",
                "scratchCardMenuTitle": "Available in stores",
                "scratchCardMenuBody": "\u003cp\u003eLearn more about our latest scratch cards!\u003c/p\u003e",
                "scratchCardsRulesPdfTitle": "Download a copy of the Scratch Card Game General Rules",
                "scratchCardsRulesPdfPath": "/content/dam/pli/game-rules/scratch-card-game-general-rules.pdf",
                "iwgRulesPdfTitle": "Download a copy of the General Rules for Instant Win Games (PDF)",
                "iwgRulesPdfPath": "/content/dam/pli/game-rules/general-rules-for-account-management-and-interactive-instant-win-games.pdf"
            }
        },
        {
            "kind": "Set",
            "key": "seoMetadata",
            "val":
            {
                "draw-games/eurodreams":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play EuroDreams online from €2.50! Pick six numbers from 1 to 40 and one Dream number from 1 to 5. Top prize is €20,000 per month for 30 years! Must be 18 or older to play.",
                    "ogdescription": "Play EuroDreams online from €2.50! Pick six numbers from 1 to 40 and one Dream number from 1 to 5. Top prize is €20,000 per month for 30 years! Must be 18 or older to play.",
                    "title": "Play EuroDreams Online | Irish National Lottery"
                },
                "draw-games/lotto":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play Lotto online! Pick any six numbers from 1 to 47. Minimum two lines. Find out the latest jackpot! Must be 18 or older to play.",
                    "ogdescription": "Play Lotto online! Pick any six numbers from 1 to 47. Minimum two lines. Find out the latest jackpot! Must be 18 or older to play.",
                    "title": "Play Lotto Online | Irish National Lottery"
                },
                "draw-games/lotto/add-plus":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add Lotto Plus for the chance to win up to €1 million for just €1 extra! Must be 18 or older to play.",
                    "ogdescription": "Add Lotto Plus for the chance to win up to €1 million for just €1 extra! Must be 18 or older to play.",
                    "title": "Add Lotto Plus | Play Lotto | Irish National Lottery"
                },
                "draw-games/euromillions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play EuroMillions online from €2.50! Pick five numbers from 1 to 50 and two Lucky Star numbers from 1 to 12. Find out the latest jackpot! Must be 18 or older to play.",
                    "ogdescription": "Play EuroMillions online from €2.50! Pick five numbers from 1 to 50 and two Lucky Star numbers from 1 to 12. Find out the latest jackpot! Must be 18 or older to play.",
                    "title": "Play EuroMillions Online | Irish National Lottery"
                },
                "draw-games/euromillions/add-plus":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add EuroMillions Plus for the chance to win up to €500,000 for just €1 extra! Must be 18 or older to play.",
                    "ogdescription": "Add EuroMillions Plus for the chance to win up to €500,000 for just €1 extra! Must be 18 or older to play.",
                    "title": "Add EuroMillions Plus | Play EuroMillions | Irish National Lottery"
                },
                "draw-games/daily-million":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play Daily Million online from €1! Pick any six numbers from 1 to 39. €1 million top prize guaranteed! Must be 18 or older to play.",
                    "ogdescription": "Play Daily Million online from €1! Pick any six numbers from 1 to 39. €1 million top prize guaranteed! Must be 18 or older to play.",
                    "title": "Play Daily Million Online | Irish National Lottery"
                },
                "draw-games/daily-million/add-plus":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add Daily Million Plus for the chance to win up to €500,000 for just 0.50 extra! Must be 18 or older to play.",
                    "ogdescription": "Add Daily Million Plus for the chance to win up to €500,000 for just 0.50 extra! Must be 18 or older to play.",
                    "title": "Add Daily Million Plus | Play Daily Million | Irish National Lottery"
                },
                "draw-games/lotto-54321":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play Lotto 5-4-3-2-1 online from €1! Pick up to five numbers from 1 to 47. Top prize per €1 played for the 6-number game is €125,000! Must be 18 or older to play.",
                    "ogdescription": "Play Lotto 5-4-3-2-1 online from €1! Pick up to five numbers from 1 to 47. Top prize per €1 played for the 6-number game is €125,000! Must be 18 or older to play.",
                    "title": "Play Lotto 5-4-3-2-1 Online | Irish National Lottery"
                },
                "draw-games/lotto-54321/add-plus":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add Lotto 5-4-3-2-1 Plus for the chance to win up to €125,000! Increase your chances of winning! Must be 18 or older to play.",
                    "ogdescription": "Add Lotto 5-4-3-2-1 Plus for the chance to win up to €125,000! Increase your chances of winning! Must be 18 or older to play.",
                    "title": "Add Plus | Play Lotto 5-4-3-2-1 Online | Irish National Lottery"
                },
                "draw-games/basket":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Buy all your draw games in one go. Add, review, edit, or delete games. Must be 18 or older to play.",
                    "ogdescription": "Buy all your draw games in one go. Add, review, edit, or delete games. Must be 18 or older to play.",
                    "title": "My Basket | Draw Games | Irish National Lottery"
                },
                "draw-games/basket/confirm":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Buy all your draw games in one go. Add, review, edit, or delete games. Must be 18 or older to play.",
                    "ogdescription": "Buy all your draw games in one go. Add, review, edit, or delete games. Must be 18 or older to play.",
                    "title": "Confirmation | My Basket | Irish National Lottery"
                },
                "draw-games/explore-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Check out the Irish National Lottery lotto games! Find out the next jackpots, when are the next draws and closing times. Must be 18 or older to play.",
                    "ogdescription": "Check out the Irish National Lottery lotto games! Find out the next jackpots, when are the next draws and closing times. Must be 18 or older to play.",
                    "title": "Explore Other Games | Draw Games | Irish National Lottery"
                },
                "draw-games/millionaire-raffle":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play Millionaire Raffle online! Over €6.3 million will be won across 8,500 prizes! Tickets are €25 each. Must be 18 or older to play.",
                    "ogdescription": "Play Millionaire Raffle online! Over €6.3 million will be won across 8,500 prizes! Tickets are €25 each. Must be 18 or older to play.",
                    "title": "Play Millionaire Raffle Online | Irish National Lottery"
                },
                "draw-games/millionaire-raffle/summary":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play Millionaire Raffle online! Over €6.3 million will be won across 8,500 prizes! Tickets are €25 each. Must be 18 or older to play.",
                    "ogdescription": "Play Millionaire Raffle online! Over €6.3 million will be won across 8,500 prizes! Tickets are €25 each. Must be 18 or older to play.",
                    "title": "Summary | Play Millionaire Raffle | Irish National Lottery"
                },
                "draw-games/after-hours":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Our games are sleeping. They are available to play between 7am and 10pm. Please check back tomorrow. Must be 18 or older to play.",
                    "ogdescription": "Our games are sleeping. They are available to play between 7am and 10pm. Please check back tomorrow. Must be 18 or older to play.",
                    "title": "Games Are Sleeping | Draw Games | Irish National Lottery"
                },
                "instant-win-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Check out this week's most popular Instant Win Games! Games starting from €1! Play or try first! Must be 18 or older to play.",
                    "ogdescription": "Check out this week's most popular Instant Win Games! Games starting from €1! Play or try first! Must be 18 or older to play.",
                    "title": "Instant Win Games | Irish National Lottery"
                },
                "instant-win-games/\u003c\u003cgame-name\u003e\u003e":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play the National Lottery \u003c\u003cgame-name\u003e\u003e Instant Win Game and win up to €\u003c\u003cprize\u003e\u003e! €\u003c\u003cprice\u003e\u003e per play. Must be 18 or older to play.",
                    "ogdescription": "Play the National Lottery \u003c\u003cgame-name\u003e\u003e Instant Win Game and win up to €\u003c\u003cprize\u003e\u003e! €\u003c\u003cprice\u003e\u003e per play. Must be 18 or older to play.",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Instant Win Games | Irish National Lottery"
                },
                "instant-win-games/\u003c\u003cgame-name\u003e\u003e/play/purchased/\u003c\u003cticket-id\u003e\u003e":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Thank you for purchasing \u003c\u003cgame-name\u003e\u003e Instant Win Game.",
                    "ogdescription": "Thank you for purchasing \u003c\u003cgame-name\u003e\u003e Instant Win Game.",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Instant Win Games | Irish National Lottery"
                },
                "instant-win-games/\u003c\u003cgame-name\u003e\u003e/play/result":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Thank you for playing \u003c\u003cgame-name\u003e\u003e Instant Win Game. ",
                    "ogdescription": "Thank you for playing \u003c\u003cgame-name\u003e\u003e Instant Win Game. ",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Instant Win Games | Irish National Lottery"
                },
                "instant-win-games/\u003c\u003cgame-name\u003e\u003e/try":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Thank you for trying \u003c\u003cgame-name\u003e\u003e Instant Win Game. ",
                    "ogdescription": "Thank you for trying \u003c\u003cgame-name\u003e\u003e Instant Win Game. ",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Instant Win Games | Irish National Lottery"
                },
                "instant-win-games/\u003c\u003cgame-name\u003e\u003e/try/result":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "If you enjoyed \u003c\u003cgame-name\u003e\u003e select play or explore our other available games in the lobby. Must be 18 or older to play.",
                    "ogdescription": "If you enjoyed \u003c\u003cgame-name\u003e\u003e select play or explore our other available games in the lobby. Must be 18 or older to play.",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Instant Win Games | Irish National Lottery"
                },
                "scratch-cards":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Explore all the National Lottery Ireland's latest scratch cards! Find out how much the tickets cost, what are the odds, top prizes, and how to play. Must be 18 or older to play.",
                    "ogdescription": "Explore all the National Lottery Ireland's latest scratch cards! Find out how much the tickets cost, what are the odds, top prizes, and how to play. Must be 18 or older to play.",
                    "title": "Scratch Cards | Irish National Lottery"
                },
                "scratch-cards/\u003c\u003cgame-name\u003e\u003e":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Play the National Lottery \u003c\u003cgame-name\u003e\u003e scratch card and win up to €\u003c\u003cprize\u003e\u003e! €\u003c\u003cprice\u003e\u003e. Must be 18 or older to play.",
                    "ogdescription": "Play the National Lottery \u003c\u003cgame-name\u003e\u003e scratch card and win up to €\u003c\u003cprize\u003e\u003e! €\u003c\u003cprice\u003e\u003e. Must be 18 or older to play.",
                    "title": "\u003c\u003cgame-name\u003e\u003e | Scratch Cards | Irish National Lottery"
                },
                "results":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View all National Lottery draw game results. Find out the latest winning numbers, bonus numbers and prize breakdowns today.",
                    "ogdescription": "View all National Lottery draw game results. Find out the latest winning numbers, bonus numbers and prize breakdowns today.",
                    "title": "Lotto EuroMillions Results | Irish National Lottery"
                },
                "results/lotto/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View Lotto results history. Find out the latest winning numbers, bonus numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View Lotto results history. Find out the latest winning numbers, bonus numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "title": "Lotto Results History | Results | Irish National Lottery"
                },
                "results/euromillions/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View EuroMillions results history. Find out the latest winning numbers, Lucky Star numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View EuroMillions results history. Find out the latest winning numbers, Lucky Star numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "title": "EuroMillions Results History | Results | Irish National Lottery"
                },
                "results/daily-million/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View Daily Million results history. Find out the latest winning numbers, bonus numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View Daily Million results history. Find out the latest winning numbers, bonus numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "title": "Daily Million Results History | Results | Irish National Lottery"
                },
                "results/lotto-54321/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View Lotto 5-4-3-2-1 results history. Find out the latest winning numbers and prize breakdowns for the 6- number and 7-number games today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View Lotto 5-4-3-2-1 results history. Find out the latest winning numbers and prize breakdowns for the 6- number and 7-number games today. View all draw results for up to the past 90 days.",
                    "title": "Lotto 5-4-3-2-1 Results History | Results | Irish National Lottery"
                },
                "results/millionaire-raffle/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View Millionaire Raffle results history. Find out the winning numbers and prize breakdowns. View all draw results for up to the past 90 days.",
                    "ogdescription": "View Millionaire Raffle results history. Find out the winning numbers and prize breakdowns. View all draw results for up to the past 90 days.",
                    "title": "Millionaire Raffle Results History | Results | Irish National Lottery"
                },
                "results/telly-bingo/history":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View Telly Bingo results history. Find out the latest winning numbers, Snowball prizes and other prize breakdowns today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View Telly Bingo results history. Find out the latest winning numbers, Snowball prizes and other prize breakdowns today. View all draw results for up to the past 90 days.",
                    "title": "Telly Bingo Results History | Results | Irish National Lottery"
                },
                "results/lotto/checker":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Enter your numbers and check your Lotto ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "ogdescription": "Enter your numbers and check your Lotto ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "title": "Lotto Number Checker | Results | Irish National Lottery"
                },
                "results/euromillions/checker":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Enter your numbers and check your EuroMillions ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "ogdescription": "Enter your numbers and check your EuroMillions ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "title": "EuroMillions Number Checker | Results | Irish National Lottery"
                },
                "results/daily-million/checker":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Enter your number(s) and check your Daily Million ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "ogdescription": "Enter your number(s) and check your Daily Million ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "title": "Daily Million Number Checker | Results | Irish National Lottery"
                },
                "results/millionaire-raffle/checker":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Enter your number and check your Millionaire Raffle ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "ogdescription": "Enter your number and check your Millionaire Raffle ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "title": "Millionaire Raffle Number Checker | Results | Irish National Lottery"
                },
                "accessible-results":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Check the latest Irish National Lottery results online in a clean and simple black and white layout that is in large font and printable.",
                    "ogdescription": "Check the latest Irish National Lottery results online in a clean and simple black and white layout that is in large font and printable.",
                    "title": "Accessible Lotto Results | Irish National Lottery"
                },
                "account/login":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Sign in to your Irish National Lottery account to play online, check your play history and manage your game play patterns. Must be 18 or older to play. ",
                    "ogdescription": "Sign in to your Irish National Lottery account to play online, check your play history and manage your game play patterns. Must be 18 or older to play. ",
                    "title": "Login | Account | Irish National Lottery"
                },
                "account/logout":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Logout of your Irish National Lottery account",
                    "ogdescription": "Logout of your Irish National Lottery account",
                    "title": "Logout | Account | Irish National Lottery"
                },
                "account/logout-basket":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Logout with abandoned basket  ",
                    "ogdescription": "Logout with abandoned basket  ",
                    "title": "Logout with Abandoned Basket | Irish National Lottery"
                },
                "account/logout-instant-win-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Logout with unfinished instant win games",
                    "ogdescription": "Logout with unfinished instant win games",
                    "title": "Logout with Unfinished Instant Win Games | Irish National Lottery"
                },
                "account/logout-basket-instant-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Logout with abandoned basket and unfinished instant win games",
                    "ogdescription": "Logout with abandoned basket and unfinished instant win games",
                    "title": "Logout Abandoned Basket Instant Win Games | Irish National Lottery"
                },
                "account/forgotusername":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Having issues signing in? Call us on (01) 889 1000 or contact our Contact Centre who can help you to recover your account.",
                    "ogdescription": "Having issues signing in? Call us on (01) 889 1000 or contact our Contact Centre who can help you to recover your account.",
                    "title": "Login Help | Account | Irish National Lottery"
                },
                "account/forgotpassword":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Forgot your password? We will send you an email with a link to reset your password. ",
                    "ogdescription": "Forgot your password? We will send you an email with a link to reset your password. ",
                    "title": "Reset Your Password | Account | Irish National Lottery"
                },
                "account/forgotPassword/new-password":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Create a new password to access your National Lottery acccount.",
                    "ogdescription": "Create a new password to access your National Lottery acccount.",
                    "title": "Create New Password | Account | Irish National Lottery"
                },
                "account/forgotPassword/reset-success":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your password has been reset successfully.",
                    "ogdescription": "Your password has been reset successfully.",
                    "title": "Reset Password Success | Account | Irish National Lottery"
                },
                "account/forgotPassword/link-inactive":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "The password link is no longer active. Please restart the password reset process.",
                    "ogdescription": "The password link is no longer active. Please restart the password reset process.",
                    "title": "Password Reset Link Inactive | Account | Irish National Lottery"
                },
                "account/forgotPassword/reset-link":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "A password reset link has been sent. Please check your email.",
                    "ogdescription": "A password reset link has been sent. Please check your email.",
                    "title": "Password Reset Link Sent | Account | Irish National Lottery"
                },
                "account/dashboard":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "My National Lottery Account Dashboard",
                    "ogdescription": "My National Lottery Account Dashboard",
                    "title": "My Dashboard | Account | Irish National Lottery"
                },
                "account/tickets/draw-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your draw based games tickets",
                    "ogdescription": "View your draw based games tickets",
                    "title": "Draw Based Games | My Tickets | Irish National Lottery"
                },
                "account/tickets/instant-win-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your instant win games tickets",
                    "ogdescription": "View your instant win games tickets",
                    "title": "Instant Win Games | My Tickets | Irish National Lottery"
                },
                "account/favourite-numbers/lotto":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your Lotto favourite number sets",
                    "ogdescription": "View your Lotto favourite number sets",
                    "title": "Lotto Favourite Numbers | Account | Irish National Lottery"
                },
                "account/favourite-numbers/euromillions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your EuroMillions favourite number sets",
                    "ogdescription": "View your EuroMillions favourite number sets",
                    "title": "EuroMillions Favourite Numbers | Account | Irish National Lottery"
                },
                "account/favourite-numbers/daily-million":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your Daily Million favourite number sets",
                    "ogdescription": "View your Daily Million favourite number sets",
                    "title": "Daily Million Favourite Numbers | Account | Irish National Lottery"
                },
                "account/marketing-preferences":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Update your marketing preferences here",
                    "ogdescription": "Update your marketing preferences here",
                    "title": "Marketing Preferences | Account | Irish National Lottery"
                },
                "account/change-password":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Change your password here",
                    "ogdescription": "Change your password here",
                    "title": "Change Password | Account | Irish National Lottery"
                },
                "account/security-questions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Security Questions | Account | Irish National Lottery",
                    "ogdescription": "Security Questions | Account | Irish National Lottery",
                    "title": "Security Questions | Account | Irish National Lottery"
                },
                "account/notifications":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your notifications here",
                    "ogdescription": "View your notifications here",
                    "title": "Notifications | Account | Irish National Lottery"
                },
                "account/id-verification":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Let's verify your ID",
                    "ogdescription": "Let's verify your ID",
                    "title": "ID Verification | Account | Irish National Lottery"
                },
                "account/id-verification/start":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Things you will need to start verifying your ID",
                    "ogdescription": "Things you will need to start verifying your ID",
                    "title": "ID Verification Start | Account | Irish National Lottery"
                },
                "account/id-verification/success":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your documents are successfully uploaded",
                    "ogdescription": "Your documents are successfully uploaded",
                    "title": "ID Verification Success  | Account | Irish National Lottery"
                },
                "account/id-verification/review":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your documents have been referred to the Customer Support team for further review.",
                    "ogdescription": "Your documents have been referred to the Customer Support team for further review.",
                    "title": "ID Verification Referral | Account | Irish National Lottery"
                },
                "account/id-verification/error":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "An error has occurred during the ID verification the process. Please try again. ",
                    "ogdescription": "An error has occurred during the ID verification the process. Please try again. ",
                    "title": "ID Verification Error | Account | Irish National Lottery"
                },
                "account/id-verification/underage":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "You are under 18 years of age so you cannot have an account with us. ",
                    "ogdescription": "You are under 18 years of age so you cannot have an account with us. ",
                    "title": "ID Verification Underage | Account | Irish National Lottery"
                },
                "account/id-verification/instructions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Use your smartphone to verify your ID",
                    "ogdescription": "Use your smartphone to verify your ID",
                    "title": "ID Verification Instructions | Account | Irish National Lottery"
                },
                "account/close-account":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "You can close your account here",
                    "ogdescription": "You can close your account here",
                    "title": "Close Account | Account | Irish National Lottery"
                },
                "account/take-a-break":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "If you are concerned about your game play patterns, you can temporarily or permanently self-exclude from your Lottery account here.",
                    "ogdescription": "If you are concerned about your game play patterns, you can temporarily or permanently self-exclude from your Lottery account here.",
                    "title": "Take a Break | Account | Irish National Lottery"
                },
                "account/locked-games":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "You can choose to lock specific or all instant win games here.",
                    "ogdescription": "You can choose to lock specific or all instant win games here.",
                    "title": "Lock Games | Account | Irish National Lottery"
                },
                "account/spending-limits":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Adjust your daily, weekly, and monthly limits here. ",
                    "ogdescription": "Adjust your daily, weekly, and monthly limits here. ",
                    "title": "Spending Limits | Account | Irish National Lottery"
                },
                "account/add-card":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add a payment card to your Irish National Lottery account",
                    "ogdescription": "Add a payment card to your Irish National Lottery account",
                    "title": "Add Card | Account | Irish National Lottery"
                },
                "account/add-funds":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add funds to your Irish National Lottery account. Play responsibly.",
                    "ogdescription": "Add funds to your Irish National Lottery account. Play responsibly.",
                    "title": "Add Funds | Account | Irish National Lottery"
                },
                "account/card-details":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Update your payment card details here.",
                    "ogdescription": "Update your payment card details here.",
                    "title": "Card Details | Account | Irish National Lottery"
                },
                "account/withdraw-funds":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "You may fill in the details to withdraw funds here. ",
                    "ogdescription": "You may fill in the details to withdraw funds here. ",
                    "title": "Withdraw Funds | Account | Irish National Lottery"
                },
                "account/financial-transactions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "View your transaction history here.",
                    "ogdescription": "View your transaction history here.",
                    "title": "Transaction History | Account | Irish National Lottery"
                },
                "register/step-1":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "ogdescription": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "title": "Open an Account to Play Online | Register | Irish National Lottery"
                },
                "register/step-2":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "ogdescription": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "title": "User Details | Register | Irish National Lottery"
                },
                "register/step-3":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "ogdescription": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "title": "Contact Details | Register | Irish National Lottery"
                },
                "register/step-4":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "ogdescription": "Register an account to play all our online games - Become one of thousands of online winners every week. Must be 18 or older to play.",
                    "title": "Accept Terms \u0026 Conditions | Register | Irish National Lottery"
                },
                "register/account-setup":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Set up your account in three simple steps.",
                    "ogdescription": "Set up your account in three simple steps.",
                    "title": "Account Set Up | Post-registration | Irish National Lottery"
                },
                "register/add-card":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add your payment card here",
                    "ogdescription": "Add your payment card here",
                    "title": "Add Card | Account Set Up | Irish National Lottery"
                },
                "register/add-card/skip":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Are you sure you want to skip add card?",
                    "ogdescription": "Are you sure you want to skip add card?",
                    "title": "Skip Add Card | Account Set Up | Irish National Lottery"
                },
                "register/add-funds":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Add funds to your account. Play responsibly.",
                    "ogdescription": "Add funds to your account. Play responsibly.",
                    "title": "Add Funds | Account Set Up | Irish National Lottery"
                },
                "register/add-funds/skip":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Are you sure you want to skip add funds?",
                    "ogdescription": "Are you sure you want to skip add funds?",
                    "title": "Skip Add Funds | Account Set Up | Irish National Lottery"
                },
                "register/spend-limits":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Adjust your daily, weekly, and monthly limits here. ",
                    "ogdescription": "Adjust your daily, weekly, and monthly limits here. ",
                    "title": "Spend Limits | Account Set Up | Irish National Lottery"
                },
                "register/marketing-preferences":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Update your marketing preferences here",
                    "ogdescription": "Update your marketing preferences here",
                    "title": "Marketing Preferences | Account Set Up | Irish National Lottery"
                },
                "register/onboarding":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Find out what you can do with your new account!",
                    "ogdescription": "Find out what you can do with your new account!",
                    "title": "Onboarding | Quick Guide | Irish National Lottery"
                },
                "account/verify-email":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Verify your email today to complete the registration process. ",
                    "ogdescription": "Verify your email today to complete the registration process. ",
                    "title": "Check Your Email | Email Verification | Irish National Lottery"
                },
                "account/email-verified":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your email has been verified.",
                    "ogdescription": "Your email has been verified.",
                    "title": "Email Verified | Email Verification | Irish National Lottery"
                },
                "account/resend-email":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Resend the link to complete email verification.",
                    "ogdescription": "Resend the link to complete email verification.",
                    "title": "Resend Me the Link | Email Verification | Irish National Lottery"
                },
                "account/expired-link":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your email verification link has expired. ",
                    "ogdescription": "Your email verification link has expired. ",
                    "title": "Email Verification Link Expired | Irish National Lottery"
                },
                "account/already-email-verified":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Your email has already been verified.",
                    "ogdescription": "Your email has already been verified.",
                    "title": "Email Has Already Been Verified | Account | Irish National Lottery"
                },
                "account/email-verification-error":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Email verification error occurred.",
                    "ogdescription": "Email verification error occurred.",
                    "title": "Email Verification Error | Irish National Lottery"
                },
                "stores":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Want to buy or check lotto tickets? In the store locator, you can find the National Lottery retail agents and shops near you. Must be 18 or older to play.",
                    "ogdescription": "Want to buy or check lotto tickets? In the store locator, you can find the National Lottery retail agents and shops near you. Must be 18 or older to play.",
                    "title": "Store Locator | Lotto Agent Near Me | Irish National Lottery"
                },
                "restrictedLocation":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "To play National Lottery games online, you must be a resident of Ireland at all times. You must also be physically located in Ireland when buying a ticket.",
                    "ogdescription": "To play National Lottery games online, you must be a resident of Ireland at all times. You must also be physically located in Ireland when buying a ticket.",
                    "title": "Restricted Location | Irish National Lottery"
                },
                "account/accept-terms-and-conditions":
                {
                    "ogimage": "/content/dam/pli/logos/star.png",
                    "description": "Please accept the Terms and Conditions of the Irish National Lottery.",
                    "ogdescription": "Please accept the Terms and Conditions of the Irish National Lottery.",
                    "title": "Terms and Conditions | Account | Irish National Lottery"
                },
                "draw-games/eurodreams/advance-play":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "Select one, two, four, six, or eight EuroDreams draws in advance with the same numbers. Must be 18 or older to play.",
                    "ogdescription": "Select one, two, four, six, or eight EuroDreams draws in advance with the same numbers. Must be 18 or older to play.",
                    "title": "Advance Play | Play EuroDreams | Irish National Lottery"
                },
                "draw-games/eurodreams/draw-in-progress":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "Draw in Progress | Play EuroDreams | Irish National Lottery"
                },
                "results/eurodreams/history":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "View EuroDreams results history. Find out the latest winning numbers, Dream numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "ogdescription": "View EuroDreams results history. Find out the latest winning numbers, Dream numbers and prize breakdowns today. View all draw results for up to the past 90 days.",
                    "title": "EuroDreams Results History | Results | Irish National Lottery"
                },
                "results/eurodreams/checker":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": "Enter your numbers and check your EuroDreams ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "ogdescription": "Enter your numbers and check your EuroDreams ticket(s). Find out if you are the winner! You can check all draw results for up to the past 90 days.",
                    "title": "EuroDreams Number Checker | Results | Irish National Lottery"
                },
                "draw-in-progress/eurodreams":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "EuroDreams Draw in Progress | Results | Irish National Lottery"
                },
                "draw-in-progress/euromillions":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "EuroMillions Draw in Progress | Results | Irish National Lottery"
                },
                "draw-in-progress/lotto":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "Lotto Draw in Progress | Results | Irish National Lottery"
                },
                "draw-in-progress/daily-million":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "Daily Million Draw in Progress | Results | Irish National Lottery"
                },
                "account/favourite-numbers/eurodreams":
                {
                    "ogimage": "/content/dam/pli/logos/Cosmo.png",
                    "description": ".",
                    "ogdescription": ".",
                    "title": "Favourite Numbers | Account | Irish National Lottery"
                }
            }
        },
        {
            "kind": "Set",
            "key": "isAllInstantWinGamesLocked",
            "val": false
        },
        {
            "kind": "Set",
            "key": "isLoggedIn",
            "val": false
        }],
        "winnersFeed":
        {
            "enabled": true,
            "heading": "Digital Money Multiplier Top Prize Winner! ",
            "winnerDescription": "A Dublin player won the top prize of €50,000 on Saturday August 31st! Will you be next?",
            "link": "https://lotteryie.page.link/?link=https://iwg/dmm\u0026ibi=com.agency.lotto\u0026apn=com.agency.lotto\u0026ifl=https://www.lottery.ie/instant-win-games/digital-money-multiplier\u0026afl=https://www.lottery.ie/instant-win-games/digital-money-multiplier\u0026ofl=https://www.lottery.ie/instant-win-games/digital-money-multiplier"
        },
        "adobeLaunchUrl": "//assets.adobedtm.com/a73baa1ef69f/e0c75847a22d/launch-63596704a423.min.js",
        "refreshSessionFrequencyMinConfig": "5",
        "maxSessionTTLMinsConfig": "15",
        "maxSessionTotalMinsConfig": "235",
        "realityCheckTimeout": "3600000",
        "lowBalancePromptValue": "5.00",
        "defaultGameOrder": [
            "1",
            "4",
            "42",
            "6",
            "8",
            "11",
            "12"
        ],
        "currentPathname": "results/eurodreams/history",
        "__N_SSP": true
    },
    "page": "/results/eurodreams/history",
    "query":
    {},
    "buildId": "z24ZjzCBlzt0Vzo3H_7NM",
    "isFallback": false,
    "dynamicIds": [
        80511,
        94717,
        37168,
        8709,
        12275,
        7481,
        51876,
        53576
    ],
    "gssp": true,
    "customServer": true,
    "appGip": true,
    "locale": "en",
    "locales": [
        "en",
        "ga"
    ],
    "defaultLocale": "en",
    "scriptLoader": []
}
```


















`Accessible Results`
`https://www.lottery.ie/accessible-results`
```
https://www.lottery.ie/static/scripts/templates.js
https://assets.adobedtm.com/launch-EN486b11a0919c4a4d8c1c1e788e5406dd.min.js
```



`From above Assets URL`
```json
 company: {
        orgId: "EBE940175A95520F0A495EC8@AdobeOrg",
        dynamicCdnEnabled: !1
    },
    property: {
        name: "Dev_IE",
        settings: {
            domains: ["lottery.ie"],
            undefinedVarsReturnEmpty: !0,
            ruleComponentSequencingEnabled: !1
        },
        id: "PR7253338c937b4b6d90ffcfaca3958539"
    },
    rules: [{
        id: "[string]",
        name: "[string]",
        events: [{
            modulePath: "",
            settings: {},
            ruleOrder: 
        }],
        conditions: [{
            modulePath: "",
            settings: {
                comparison: {
                    operator: "contains"
                },
                leftOperand: "%OnetrustActiveGroups%",
                rightOperand: ",5:1,"
            }
        }],
        actions: [{
            modulePath: "",
            settings: {
                source: "",
                language: "javascript",
                isExternal: !0
            }
        }]
    },
```




























-----------------




```md
microsoft-graph-docs-contrib/api-reference/beta/config
/link-validation-config.json



GET     https://www.lottery.ie/results/eurodreams/history   HTTP/1.1




"AddSingleQuotesForStringParameters": true,



"grids": [
{
    "standard": [
        [
            12,
            15,
            24,
            28,
            29,
            31
        ]
    ],
    "additional": [
        [
            1
        ]
    ]
}
],
"grids": [
{
    "standard": [
        [
            4,
            7,
            27,
            31,
            33,
            40
        ]
    ],
    "additional": [
        [
            3
        ]
    ]
}
],
"grids": [
{
    "standard": [
        [
            17,
            19,
            21,
            22,
            23,
            27
        ]
    ],
    "additional": [
        [
            1
        ]
    ]
}
],



























{
                                "standard": {
                                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                                    "jackpotAmount": "€7,200,000",
                                    "drawDates": [
                                        "2024-06-03T18:30:00.000Z"
                                    ],
                                    "grids": [
                                        {
                                            "standard": [
                                                [
                                                    1,
                                                    3,
                                                    11,
                                                    22,
                                                    34,
                                                    38
                                                ]
                                            ],
                                            "additional": [
                                                [
                                                    4
                                                ]
                                            ]
                                        }
                                    ],
                                    "prizes": [
                                        {
                                            "match": "6+1",
                                            "prizeType": "Annuity",
                                            "numberOfWinners": 0,
                                            "numberOfNationalWinners": 0,
                                            "annuityPeriod": 360,
                                            "annuityAmount": 2000000,
                                            "prize": "€20,000"
                                        },
                                        {
                                            "match": "6",
                                            "prizeType": "Annuity",
                                            "numberOfWinners": 0,
                                            "numberOfNationalWinners": 0,
                                            "annuityPeriod": 60,
                                            "annuityAmount": 200000,
                                            "prize": "€2,000"
                                        },
                                        {
                                            "match": "5",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 137,
                                            "numberOfNationalWinners": 8,
                                            "prize": "€112"
                                        },
                                        {
                                            "match": "4",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 5192,
                                            "numberOfNationalWinners": 329,
                                            "prize": "€47"
                                        },
                                        {
                                            "match": "3",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 75196,
                                            "numberOfNationalWinners": 4256,
                                            "prize": "€6"
                                        },
                                        {
                                            "match": "2",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 446308,
                                            "numberOfNationalWinners": 25029,
                                            "prize": "€2.50"
                                        }
                                    ],
                                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                                    "gameTitle": "EuroDreams"
                                },
                                "addonGames": [
                                ]
                            }
                        ],
                        "pageSize": 5,
                        "gameInfo": {
                            "gameid": "42",
                            "minLines": 1,
                            "maxLines": 6,
                            "range": [
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40
                            ],
                            "playSet": {
                                "mainSelections": [
                                    6
                                ],
                                "extraSelections": [
                                    1
                                ]
                            },
                            "drawSet": {
                                "standard": {
                                    "size": 6
                                },
                                "bonus": {
                                    "size": 1
                                }
                            },
                            "size": 40,
                            "bonusSize": 5,
                            "bonusRange": [
                                1,
                                2,
                                3,
                                4,
                                5
                            ],
                            "claimPeriodDays": 91,
                            "isRaffle": false,
                            "isEuroMillionaireGame": false,
                            "addonGames": [
                            ],
                            "pricePerLineInCents": 250,
                            "plusGameCostInCents": 0,
                            "allowedNumberOfDraws": [
                                1,
                                2,
                                4,
                                6,
                                8
                            ],
                            "drawDays": [
                                {
                                    "day": "MONDAY",
                                    "time": "19:30",
                                    "drawBreakOffset": 0,
                                    "drawBreakDuration": 30,
                                    "salesCloseTime": "19:30",
                                    "resultsOffset": 0
                                },
                                {
                                    "day": "THURSDAY",
                                    "time": "19:30",
                                    "drawBreakOffset": 0,
                                    "drawBreakDuration": 30,
                                    "salesCloseTime": "19:30",
                                    "resultsOffset": 0
                                }
                            ],
                            "defaultPlayCombination": [
                                "42"
                            ],
                            "soldIndependently": true,
                            "prizeMappings": null,
                            "bonusPrizeMappings": null,
                            "lineCostOptions": null,
                            "plusGameCostOptions": null,
                            "plusGameIndivualCosts": null,
                            "soldout": false,
                            "gameOnSale": true,
                            "logo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                            "smalllogo": "",
                            "title": "EuroDreams",
                            "contentid": "eurodreams",
                            "showResults": true,
                            "jackpotInfo": [
                                {
                                    "gameId": "42",
                                    "nextDrawDate": "2024-09-02T18:30:00.000Z",
                                    "amount": 720000000,
                                    "guaranteed": true,
                                    "drawId": 87,
                                    "topPrizeAnnuity": 2000000,
                                    "annuityPeriod": 360
                                }
                            ],
                            "drawBreakDuration": 30,
                            "specialDrawDate": "",
                            "webappMobileHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg",
                            "webappDesktopHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg"
                        },
                        "banner": {
                            "url": "https://www.lottery.ie/scratch-cards/scratch-n-win",
                            "img": "/content/dam/pli/banners/scratch-cards/NL_Scratch_N_Win_Web_768x285_V2.png"
                        },
                        "loadedDateRange": {
                            "start": "2024-06-01",
                            "end": "2024-08-31"
                        }
                    },
```





```md
     



















































Lotto Results request resposne (burried in HTML)

```powershell
$session = New-Object Microsoft.PowerShell.Commands.WebRequestSession
$session.UserAgent = "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36"
$session.Cookies.Add((New-Object System.Net.Cookie("SRV", "f9fad8ae", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("rememberMe", "calvinbergin212@gmail.com", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("defaultLang", "en", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("PLAYER_REF_COOKIE", "eyJ1c2VybmFtZSI6ImNhbHZpbmJlcmdpbjIxMkBnbWFpbC5jb20iLCJncmVldGluZyI6IkNBTFZJTiIsImJhbGFuY2UiOm51bGwsImZpcnN0bmFtZSI6IkNBTFZJTiIsImxhc3RuYW1lIjoiQkVSR0lOIiwibG9nZ2VkaW5UaW1lIjpudWxsLCJoYXNBY2NlcHRlZFRlcm1zIjp0cnVlLCJzcGVuZGluZ0xpbWl0c0RhdGEiOm51bGwsImhhc0NhcmQiOm51bGwsInBsYXllcklkIjpudWxsLCJyZWdpc3RyYXRpb25EYXRlIjpudWxsLCJzdWJzY3JpYmVySWQiOm51bGwsIm1hcmtldGluZ09wdEluIjpudWxsLCJtYXJrZXRpbmdMaXN0IjpudWxsLCJtYXJrZXRpbmdMaXN0VW5jaGVja2VkIjpudWxsfQ==", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("BT", "1f386b62-8114-4c71-95ee-ea93ab642530", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("TIMESTAMP", "1725134674606", "/", "www.lottery.ie")))
$session.Cookies.Add((New-Object System.Net.Cookie("tid", "009f0c1c2d126e558fe746c3787c84bf_1725134674", "/", "www.lottery.ie")))
Invoke-WebRequest -UseBasicParsing -Uri "https://www.lottery.ie/results/eurodreams/history" `
-WebSession $session `
-Headers @{
"Accept"="text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8"
  "Accept-Encoding"="gzip, deflate, br, zstd"
  "Accept-Language"="en-US,en;q=0.5"
  "Cache-Control"="max-age=0"
  "Referer"="https://www.lottery.ie/account/login?error=1"
  "Sec-Fetch-Dest"="document"
  "Sec-Fetch-Mode"="navigate"
  "Sec-Fetch-Site"="same-origin"
  "Sec-Fetch-User"="?1"
  "Sec-GPC"="1"
  "Upgrade-Insecure-Requests"="1"
  "sec-ch-ua"="`"Chromium`";v=`"128`", `"Not;A=Brand`";v=`"24`", `"Brave`";v=`"128`""
  "sec-ch-ua-mobile"="?0"
  "sec-ch-ua-platform"="`"Windows`""
}
```






Buried in HTML (Requires sanitization)

```
     {
                                "standard": {
                                    "gameLogo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                                    "jackpotAmount": "€7,200,000",
                                    "drawDates": [
                                        "2024-06-03T18:30:00.000Z"
                                    ],
                                    "grids": [
                                        {
                                            "standard": [
                                                [
                                                    1,
                                                    3,
                                                    11,
                                                    22,
                                                    34,
                                                    38
                                                ]
                                            ],
                                            "additional": [
                                                [
                                                    4
                                                ]
                                            ]
                                        }
                                    ],
                                    "prizes": [
                                        {
                                            "match": "6+1",
                                            "prizeType": "Annuity",
                                            "numberOfWinners": 0,
                                            "numberOfNationalWinners": 0,
                                            "annuityPeriod": 360,
                                            "annuityAmount": 2000000,
                                            "prize": "€20,000"
                                        },
                                        {
                                            "match": "6",
                                            "prizeType": "Annuity",
                                            "numberOfWinners": 0,
                                            "numberOfNationalWinners": 0,
                                            "annuityPeriod": 60,
                                            "annuityAmount": 200000,
                                            "prize": "€2,000"
                                        },
                                        {
                                            "match": "5",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 137,
                                            "numberOfNationalWinners": 8,
                                            "prize": "€112"
                                        },
                                        {
                                            "match": "4",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 5192,
                                            "numberOfNationalWinners": 329,
                                            "prize": "€47"
                                        },
                                        {
                                            "match": "3",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 75196,
                                            "numberOfNationalWinners": 4256,
                                            "prize": "€6"
                                        },
                                        {
                                            "match": "2",
                                            "prizeType": "Cash",
                                            "numberOfWinners": 446308,
                                            "numberOfNationalWinners": 25029,
                                            "prize": "€2.50"
                                        }
                                    ],
                                    "prizeMessage": "There was no winner of the EuroDreams top prize. In total, over 29,000 players in Ireland won prizes.",
                                    "gameTitle": "EuroDreams"
                                },
                                "addonGames": [
                                ]
                            }
                        ],
                        "pageSize": 5,
                        "gameInfo": {
                            "gameid": "42",
                            "minLines": 1,
                            "maxLines": 6,
                            "range": [
                                1,
                                2,
                                3,
                                4,
                                5,
                                6,
                                7,
                                8,
                                9,
                                10,
                                11,
                                12,
                                13,
                                14,
                                15,
                                16,
                                17,
                                18,
                                19,
                                20,
                                21,
                                22,
                                23,
                                24,
                                25,
                                26,
                                27,
                                28,
                                29,
                                30,
                                31,
                                32,
                                33,
                                34,
                                35,
                                36,
                                37,
                                38,
                                39,
                                40
                            ],
                            "playSet": {
                                "mainSelections": [
                                    6
                                ],
                                "extraSelections": [
                                    1
                                ]
                            },
                            "drawSet": {
                                "standard": {
                                    "size": 6
                                },
                                "bonus": {
                                    "size": 1
                                }
                            },
                            "size": 40,
                            "bonusSize": 5,
                            "bonusRange": [
                                1,
                                2,
                                3,
                                4,
                                5
                            ],
                            "claimPeriodDays": 91,
                            "isRaffle": false,
                            "isEuroMillionaireGame": false,
                            "addonGames": [
                            ],
                            "pricePerLineInCents": 250,
                            "plusGameCostInCents": 0,
                            "allowedNumberOfDraws": [
                                1,
                                2,
                                4,
                                6,
                                8
                            ],
                            "drawDays": [
                                {
                                    "day": "MONDAY",
                                    "time": "19:30",
                                    "drawBreakOffset": 0,
                                    "drawBreakDuration": 30,
                                    "salesCloseTime": "19:30",
                                    "resultsOffset": 0
                                },
                                {
                                    "day": "THURSDAY",
                                    "time": "19:30",
                                    "drawBreakOffset": 0,
                                    "drawBreakDuration": 30,
                                    "salesCloseTime": "19:30",
                                    "resultsOffset": 0
                                }
                            ],
                            "defaultPlayCombination": [
                                "42"
                            ],
                            "soldIndependently": true,
                            "prizeMappings": null,
                            "bonusPrizeMappings": null,
                            "lineCostOptions": null,
                            "plusGameCostOptions": null,
                            "plusGameIndivualCosts": null,
                            "soldout": false,
                            "gameOnSale": true,
                            "logo": "/content/dam/pli/logos/left/rgb/EuroDreams.svg",
                            "smalllogo": "",
                            "title": "EuroDreams",
                            "contentid": "eurodreams",
                            "showResults": true,
                            "jackpotInfo": [
                                {
                                    "gameId": "42",
                                    "nextDrawDate": "2024-09-02T18:30:00.000Z",
                                    "amount": 720000000,
                                    "guaranteed": true,
                                    "drawId": 87,
                                    "topPrizeAnnuity": 2000000,
                                    "annuityPeriod": 360
                                }
                            ],
                            "drawBreakDuration": 30,
                            "specialDrawDate": "",
                            "webappMobileHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg",
                            "webappDesktopHeroBannerPhotoImage": "/content/dam/pli/banners/eurodreams/eurodreams-576x302-web-home.jpg"
                        },
                        "banner": {
                            "url": "https://www.lottery.ie/scratch-cards/scratch-n-win",
                            "img": "/content/dam/pli/banners/scratch-cards/NL_Scratch_N_Win_Web_768x285_V2.png"
                        },
                        "loadedDateRange": {
                            "start": "2024-06-01",
                            "end": "2024-08-31"
                        }
                    },
```
```

```












-------------------------

### Adobe Assets Link to backend game logic.


```js
// For license information, see `https://assets.adobedtm.com/launch-EN486b11a0919c4a4d8c1c1e788e5406dd.js`.
window._satellite = window._satellite || {},
window._satellite.container = {
    buildInfo: {
        minified: !0,
        buildDate: "2024-07-24T13:09:18Z",
        turbineBuildDate: "2023-02-22T20:37:26Z",
        turbineVersion: "27.5.0"
    },
    environment: {
        id: "EN486b11a0919c4a4d8c1c1e788e5406dd",
        stage: "production"
    },
    dataElements: {
        "Game Cost": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_cost"
            }
        },
        "User: User ID": {
            defaultValue: "",
            storageDuration: "visitor",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_id"
            }
        },
        "UTM Source": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "utm_source",
                caseInsensitive: !0
            }
        },
        "User: Subscriber ID": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.subscriber_id"
            }
        },
        "DBG: Number of Tickets": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.number_of_tickets"
            }
        },
        "Page Title": {
            defaultValue: "",
            storageDuration: "pageview",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.page_title"
            }
        },
        "User: User Wallet Balance": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_wallet_balance"
            }
        },
        Locale: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.env_locale"
            }
        },
        System: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.env_system"
            }
        },
        "Timestamp UTC": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.env_utv_timestamp"
            }
        },
        Subscription: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "undefined" != typeof digitalData && void 0 !== digitalData.subscription_cost_per_draw ? "Y" : "N"
                }
            }
        },
        "GA - Check Outcome": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "Win" == digitalData.dbg_results_check_outcome ? "Ticket Win" : "Win" == digitalData.dgb_results_check_raffle_outcome ? "Raflle Win" : "Lose" == digitalData.dgb_results_check_raffle_outcome ? "Raflle Lose" : "Lose" == digitalData.dbg_results_check_outcome ? "Ticket Lose" : 0
                }
            }
        },
        "Game Type": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_type"
            }
        },
        "User: Marketing Optin": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_marketing_opt_in"
            }
        },
        "Game Name": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_name"
            }
        },
        "GA - Login Click": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/cookie.js",
            settings: {
                name: "loginClick"
            }
        },
        "GA - Advertising Cookies Allowed": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return _satellite.getVar("OnetrustActiveGroups").indexOf(",4:1,") > -1
                }
            }
        },
        "GA - Environment Type": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return console.log(document.location.hostname),
                    document.location.hostname.indexOf("load.") > -1 ? "Staging" : "Live"
                }
            }
        },
        "QS: Code": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "code",
                caseInsensitive: !0
            }
        },
        "Order: Order Total": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.order_total"
            }
        },
        "Run GUA": {
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return _satellite.getVar("OnetrustActiveGroups").includes(",5:1,") && _satellite.cookie.set("run_gua", "true", {
                        expires: 365
                    }),
                    "run_gua"
                }
            }
        },
        "DBG: Results Check Raffle Outcome": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.dgb_results_check_raffle_outcome"
            }
        },
        "IWG: Outcome": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.iwg_play_outcome"
            }
        },
        "Google: AdWords Conversion - DBG Play": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = _satellite.getVar("Game Name");
                    return "Daily Million" == e ? "gv05CLPRrG0Q6u-77AM" : "EuroMillions" == e ? "5ssuCI7TrG0Q6u-77AM" : "Lotto" == e && "umQRCO3uwG0Q6u-77AM"
                }
            }
        },
        "GA - Click Data Element": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/domAttribute.js",
            settings: {
                elementProperty: "value",
                elementSelector: "input"
            }
        },
        "Order: Total": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return _satellite.getVar("Order: Order Total") || _satellite.getVar("Subscription Cost")
                }
            }
        },
        "DBG: Upsell Selected": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.upsell_selected"
            }
        },
        Platform: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.env_medium"
            }
        },
        "User: Marketing Preferences": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_marketing_list"
            }
        },
        "UTM Medium": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "utm_medium",
                caseInsensitive: !0
            }
        },
        "digitalData Test": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    if ("undefined" != typeof digitalData && digitalData.test)
                        return !0
                }
            }
        },
        "UTM Campaign": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "utm_campaign",
                caseInsensitive: !0
            }
        },
        "User: Logged In": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_logged_in"
            }
        },
        "DoubleClick: Player Age": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    if (!year_of_birth)
                        return !1;
                    var e = _satellite.getVar("Age")
                      , t = new Date
                      , n = new Date(e)
                      , r = (t.getFullYear(),
                    n.getFullYear(),
                    t.getMonth() - n.getMonth());
                    r < 0 || 0 === r && (t.getDate(),
                    n.getDate())
                }
            }
        },
        "Game Name Results": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_name_results"
            }
        },
        "Natural Search Term": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "q",
                caseInsensitive: !0
            }
        },
        "Timestamp Local": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.env_local_timestamp"
            }
        },
        "User: Spend Limits": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.player_spend_limit"
            }
        },
        "Page Name": {
            defaultValue: "",
            storageDuration: "pageview",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.page_name"
            }
        },
        "DC: Account": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "2336235"
                }
            }
        },
        "User: Registration Date": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    if ("undefined" != typeof digitalData && void 0 !== digitalData.user_registration_date) {
                        var e = digitalData.user_registration_date;
                        if (console.log("DATE: " + e),
                        "" !== e) {
                            var t = ["jan", "feb", "mar", "apr", "may", "jun", "jul", "aug", "sep", "oct", "nov", "dec"]
                              , n = e.substr(0, 2)
                              , r = e.toLowerCase().substr(2, 3)
                              , o = e.substr(5, 4)
                              , a = (t.indexOf(r) + 1).toString();
                            return 1 == a.length && (a = "0" + a),
                            n + "/" + a + "/" + o
                        }
                    }
                    return !1
                }
            }
        },
        "GA - Timestamp": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = new Date
                      , t = e.getDate() + "/" + (e.getMonth() + 1) + "/" + e.getFullYear() + " - " + e.getHours() + ":" + e.getMinutes() + ":" + e.getSeconds();
                    return console.log(t),
                    t
                }
            }
        },
        "DBG: Jackpot": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.dbg_jackpot_amount"
            }
        },
        "Game Odds": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_odds"
            }
        },
        Random: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return (new Date).getTime()
                }
            }
        },
        "DBG: Number of Drawings": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.number_of_drawings"
            }
        },
        "DBG: Results Check Outcome": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.dbg_results_check_outcome"
            }
        },
        "GA - Page Title": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return document.title
                }
            }
        },
        "User: Registration Status": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.user_registration_status"
            }
        },
        OnetrustActiveGroups: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/cookie.js",
            settings: {
                name: "OptanonConsent"
            }
        },
        Funds: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.funds_change_amount"
            }
        },
        "DBG: Draw Day": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.draw_day"
            }
        },
        "DC: Category": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = _satellite.getVar("Game Name")
                      , t = _satellite.getVar("Game Type")
                      , n = _satellite.getVar("Page Type");
                    if ("Millionaire Raffle" == e) {
                        if ("landing" == n)
                            return "2016_006";
                        if ("play" == n)
                            return "2016_003"
                    }
                    if ("Daily Million" == e) {
                        if ("landing" == n)
                            return "2016_002";
                        if ("play" == n)
                            return "2016_000"
                    }
                    if ("Lotto" == e) {
                        if ("landing" == n)
                            return "2016_000";
                        if ("play" == n)
                            return "2016_0"
                    }
                    if ("EuroMillions" == e) {
                        if ("landing" == n)
                            return "2016_001";
                        if ("play" == n)
                            return "2016_00"
                    }
                    if ("IWG" == t)
                        return "landing" == n ? "2016_003" : "2016_001"
                }
            }
        },
        "GA - Game Results": {
            defaultValue: "",
            cleanText: !0,
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {}
            }
        },
        "Page Type": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = document.location.href
                      , t = /confirm|summary|purchased|result$/
                      , n = /summary|purchased$/
                      , r = /purchased/;
                    if (-1 !== e.indexOf("/games/")) {
                        if (!t.test(e))
                            return "landing";
                        if (n.test(e) || r.test(e))
                            return "play"
                    }
                }
            }
        },
        "DC: Type": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "landing" == _satellite.getVar("Page Type") ? "newlo0" : "newlo000"
                }
            }
        },
        "Google: AdWords Conversion - Registration": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "j3MYCLnwwG0Q6u-77AM"
                }
            }
        },
        "DBG: Draws per Week": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.draws_per_week"
            }
        },
        Referrer: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = /&username(\=[^&]*)?(?=&|$)|(?!\?)username\=[^&]*?(&|$)/;
                    return document.referrer.replace(e, "")
                }
            }
        },
        "QS: Username": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "username",
                caseInsensitive: !0
            }
        },
        "Page View Count": {
            defaultValue: "",
            storageDuration: "session",
            modulePath: "core/src/lib/dataElements/visitorBehavior.js",
            settings: {
                attribute: "sessionPageViewCount"
            }
        },
        "Game ID": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_id"
            }
        },
        "User: Login Wallet Balance": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.login_wallet_balance"
            }
        },
        "Page Template": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.page_template"
            }
        },
        "DBG: Subscription Cost per Draw": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.dbg_subscription_cost_per_draw"
            }
        },
        "Game Prize": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.game_prize"
            }
        },
        "Post Test": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return $_POST.test
                }
            }
        },
        "Login Cookie": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/cookie.js",
            settings: {
                name: "lc"
            }
        },
        "UTAG Test": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return "undefined" != typeof utag
                }
            }
        },
        "Page URL": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = /&username(\=[^&]*)?(?=&|$)|(?!\?)username\=[^&]*?(&|$)/;
                    return document.location.href.replace(e, "")
                }
            }
        },
        "User: Funds Change Amount": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.funds_change_amount"
            }
        },
        "GA - Page Path": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return document.location.pathname
                }
            }
        },
        "GA - Winning Amount Value": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    return null != document.getElementsByClassName("amount")[0] ? parseInt(document.getElementsByClassName("amount")[0].textContent.trim().replace("\u20ac", "").replace(",", "")) : 0
                }
            }
        },
        "Order: Order ID": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.order_id"
            }
        },
        BID: {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "bid",
                caseInsensitive: !0
            }
        },
        "Registration Steps Cookie": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/cookie.js",
            settings: {
                name: "regsteps"
            }
        },
        "Channel Cookie": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/cookie.js",
            settings: {
                name: "v81"
            }
        },
        "UTM Term": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/queryStringParameter.js",
            settings: {
                name: "utm_term",
                caseInsensitive: !0
            }
        },
        "Subscription Cost": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    if ("undefined" != typeof utag_data && void 0 !== utag_data.dbg_subscription_cost_per_draw)
                        return utag_data.dbg_subscription_cost_per_draw
                }
            }
        },
        "UTM Content": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/customCode.js",
            settings: {
                source: function() {
                    var e = window.location.href
                      , t = new RegExp("[?&]url_content(=([^&#]*)|&|#|$)").exec(e);
                    return t && t[2] ? t[2].replace(/\+/g, " ").replace("%", "") : ""
                }
            }
        },
        "IWG: Prize Won": {
            defaultValue: "",
            modulePath: "core/src/lib/dataElements/javascriptVariable.js",
            settings: {
                path: "digitalData.iwg_prize_won"
            }
        }
    },
    extensions: {
        core: {
            displayName: "Core",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EP1fdd2a6ec2ae468fb1d2cac08df65f83/",
            modules: {
                "core/src/lib/dataElements/javascriptVariable.js": {
                    name: "javascript-variable",
                    displayName: "JavaScript Variable",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("../helpers/getObjectProperty.js");
                        e.exports = function(e) {
                            return r(window, e.path)
                        }
                    }
                },
                "core/src/lib/dataElements/queryStringParameter.js": {
                    name: "query-string-parameter",
                    displayName: "Query String Parameter",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-window")
                          , o = n("@adobe/reactor-query-string");
                        e.exports = function(e) {
                            var t = o.parse(r.location.search);
                            if (!e.caseInsensitive)
                                return t[e.name];
                            for (var n = e.name.toLowerCase(), a = Object.keys(t), i = 0; i < a.length; i++) {
                                var s = a[i];
                                if (s.toLowerCase() === n)
                                    return t[s]
                            }
                        }
                    }
                },
                "core/src/lib/dataElements/customCode.js": {
                    name: "custom-code",
                    displayName: "Custom Code",
                    script: function(e) {
                        "use strict";
                        e.exports = function(e, t) {
                            return e.source(t)
                        }
                    }
                },
                "core/src/lib/dataElements/cookie.js": {
                    name: "cookie",
                    displayName: "Cookie",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-cookie");
                        e.exports = function(e) {
                            return r.get(e.name)
                        }
                    }
                },
                "core/src/lib/dataElements/domAttribute.js": {
                    name: "dom-attribute",
                    displayName: "DOM Attribute",
                    script: function(e) {
                        "use strict";
                        e.exports = function(e) {
                            var t = document.querySelector(e.elementSelector);
                            if (t) {
                                var n = e.elementProperty;
                                return "text" === n ? t.innerText || t.textContent : n in t ? t[n] : t.getAttribute ? t.getAttribute(n) : void 0
                            }
                        }
                    }
                },
                "core/src/lib/dataElements/visitorBehavior.js": {
                    name: "visitor-behavior",
                    displayName: "Visitor Behavior",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("../helpers/visitorTracking");
                        e.exports = function(e) {
                            switch (e.attribute) {
                            case "landingPage":
                                return r.getLandingPage();
                            case "trafficSource":
                                return r.getTrafficSource();
                            case "minutesOnSite":
                                return r.getMinutesOnSite();
                            case "sessionCount":
                                return r.getSessionCount();
                            case "sessionPageViewCount":
                                return r.getSessionPageViewCount();
                            case "lifetimePageViewCount":
                                return r.getLifetimePageViewCount();
                            case "isNewVisitor":
                                return r.getIsNewVisitor()
                            }
                        }
                    }
                },
                "core/src/lib/actions/customCode.js": {
                    name: "custom-code",
                    displayName: "Custom Code",
                    script: function(e, t, n, r) {
                        "use strict";
                        var o, a, i, s, c = n("@adobe/reactor-document"), u = n("@adobe/reactor-promise"), l = n("./helpers/decorateCode"), d = n("./helpers/loadCodeSequentially"), f = n("../../../node_modules/postscribe/dist/postscribe"), p = n("./helpers/unescapeHtmlCode"), g = n("../helpers/findPageScript").getTurbine, m = (a = function(e) {
                            f(c.body, e, {
                                beforeWriteToken: function(e) {
                                    var t = e.tagName && e.tagName.toLowerCase();
                                    return o && "script" === t && (e.attrs.nonce = o),
                                    "script" !== t && "style" !== t || (Object.keys(e.attrs || {}).forEach((function(t) {
                                        e.attrs[t] = p(e.attrs[t])
                                    }
                                    )),
                                    e.src && (e.src = p(e.src))),
                                    e
                                },
                                error: function(e) {
                                    r.logger.error(e.msg)
                                }
                            })
                        }
                        ,
                        i = [],
                        s = function() {
                            if (c.body)
                                for (; i.length; )
                                    a(i.shift());
                            else
                                setTimeout(s, 20)
                        }
                        ,
                        function(e) {
                            i.push(e),
                            s()
                        }
                        ), h = function() {
                            if (c.currentScript)
                                return c.currentScript.async;
                            var e = g();
                            return !e || e.async
                        }();
                        e.exports = function(e, t) {
                            var n;
                            o = r.getExtensionSettings().cspNonce;
                            var a = {
                                settings: e,
                                event: t
                            }
                              , i = a.settings.source;
                            if (i)
                                return a.settings.isExternal ? d(i).then((function(e) {
                                    return e ? (n = l(a, e),
                                    m(n.code),
                                    n.promise) : u.resolve()
                                }
                                )) : (n = l(a, i),
                                h || "loading" !== c.readyState ? m(n.code) : c.write && !1 === r.propertySettings.ruleComponentSequencingEnabled ? c.write(n.code) : m(n.code),
                                n.promise)
                        }
                    }
                },
                "core/src/lib/events/domReady.js": {
                    name: "dom-ready",
                    displayName: "DOM Ready",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("./helpers/pageLifecycleEvents");
                        e.exports = function(e, t) {
                            r.registerDomReadyTrigger(t)
                        }
                    }
                },
                "core/src/lib/conditions/valueComparison.js": {
                    name: "value-comparison",
                    displayName: "Value Comparison",
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("../helpers/stringAndNumberUtils").isString
                          , o = n("../helpers/stringAndNumberUtils").isNumber
                          , a = n("../helpers/stringAndNumberUtils").castToStringIfNumber
                          , i = n("../helpers/stringAndNumberUtils").castToNumberIfString
                          , s = function(e, t) {
                            return t && r(e) ? e.toLowerCase() : e
                        }
                          , c = function(e) {
                            return function(t, n, o) {
                                return t = a(t),
                                n = a(n),
                                r(t) && r(n) && e(t, n, o)
                            }
                        }
                          , u = function(e) {
                            return function(t, n) {
                                return t = i(t),
                                n = i(n),
                                o(t) && o(n) && e(t, n)
                            }
                        }
                          , l = function(e) {
                            return function(t, n, r) {
                                return e(s(t, r), s(n, r))
                            }
                        }
                          , d = {
                            equals: l((function(e, t) {
                                return e == t
                            }
                            )),
                            doesNotEqual: function() {
                                return !d.equals.apply(null, arguments)
                            },
                            contains: c(l((function(e, t) {
                                return -1 !== e.indexOf(t)
                            }
                            ))),
                            doesNotContain: function() {
                                return !d.contains.apply(null, arguments)
                            },
                            startsWith: c(l((function(e, t) {
                                return 0 === e.indexOf(t)
                            }
                            ))),
                            doesNotStartWith: function() {
                                return !d.startsWith.apply(null, arguments)
                            },
                            endsWith: c(l((function(e, t) {
                                return e.substring(e.length - t.length, e.length) === t
                            }
                            ))),
                            doesNotEndWith: function() {
                                return !d.endsWith.apply(null, arguments)
                            },
                            matchesRegex: c((function(e, t, n) {
                                return new RegExp(t,n ? "i" : "").test(e)
                            }
                            )),
                            doesNotMatchRegex: function() {
                                return !d.matchesRegex.apply(null, arguments)
                            },
                            lessThan: u((function(e, t) {
                                return e < t
                            }
                            )),
                            lessThanOrEqual: u((function(e, t) {
                                return e <= t
                            }
                            )),
                            greaterThan: u((function(e, t) {
                                return e > t
                            }
                            )),
                            greaterThanOrEqual: u((function(e, t) {
                                return e >= t
                            }
                            )),
                            isTrue: function(e) {
                                return !0 === e
                            },
                            isTruthy: function(e) {
                                return Boolean(e)
                            },
                            isFalse: function(e) {
                                return !1 === e
                            },
                            isFalsy: function(e) {
                                return !e
                            }
                        };
                        e.exports = function(e) {
                            return d[e.comparison.operator](e.leftOperand, e.rightOperand, Boolean(e.comparison.caseInsensitive))
                        }
                    }
                },
                "core/src/lib/events/directCall.js": {
                    name: "direct-call",
                    displayName: "Direct Call",
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = {};
                        window._satellite = window._satellite || {},
                        window._satellite.track = function(e, t) {
                            e = e.trim();
                            var n = o[e];
                            if (n) {
                                var a = {
                                    identifier: e,
                                    detail: t
                                };
                                n.forEach((function(e) {
                                    e(a)
                                }
                                ));
                                var i = ['Rules using the direct call event type with identifier "' + e + '" have been triggered' + (t ? " with additional detail:" : ".")];
                                t && i.push(t),
                                r.logger.log.apply(r.logger, i)
                            } else
                                r.logger.log('"' + e + '" does not match any direct call identifiers.')
                        }
                        ,
                        e.exports = function(e, t) {
                            var n = o[e.identifier];
                            n || (n = o[e.identifier] = []),
                            n.push(t)
                        }
                    }
                },
                "core/src/lib/events/dataElementChange.js": {
                    name: "data-element-change",
                    displayName: "Data Element Change",
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = {}
                          , a = {};
                        setInterval((function() {
                            Object.keys(o).forEach((function(e) {
                                var t = JSON.stringify(r.getDataElementValue(e));
                                if (t !== a[e]) {
                                    var n = {
                                        dataElementName: e
                                    };
                                    o[e].forEach((function(e) {
                                        e(n)
                                    }
                                    )),
                                    a[e] = t
                                }
                            }
                            ))
                        }
                        ), 1e3),
                        e.exports = function(e, t) {
                            var n = e.name
                              , i = o[n];
                            i || (i = o[n] = [],
                            a[n] = JSON.stringify(r.getDataElementValue(n))),
                            i.push(t)
                        }
                    }
                },
                "core/src/lib/helpers/getObjectProperty.js": {
                    script: function(e) {
                        "use strict";
                        e.exports = function(e, t) {
                            for (var n = t.split("."), r = e, o = 0, a = n.length; o < a; o++) {
                                if (null == r)
                                    return;
                                r = r[n[o]]
                            }
                            return r
                        }
                    }
                },
                "core/src/lib/helpers/visitorTracking.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r, o = n("@adobe/reactor-document"), a = n("@adobe/reactor-window"), i = n("./getNamespacedStorage"), s = "visitorTracking", c = i("localStorage", s), u = i("sessionStorage", s), l = function() {
                            var e = u.getItem("landingPage");
                            return e || (u.setItem("landingPage", a.location.href),
                            u.setItem("landingTime", (new Date).getTime())),
                            !e
                        }, d = function() {
                            return u.getItem("landingPage")
                        }, f = function() {
                            return Number(u.getItem("landingTime"))
                        }, p = function() {
                            return Number(c.getItem("sessionCount"))
                        }, g = function() {
                            return Number(c.getItem("pagesViewed"))
                        }, m = function() {
                            var e = (new Date).getTime();
                            return Math.floor((e - f()) / 1e3 / 60)
                        }, h = function() {
                            return u.getItem("trafficSource")
                        }, b = function() {
                            return Number(u.getItem("pagesViewed"))
                        }, v = function() {
                            return 1 === p()
                        }, y = function(e) {
                            e && c.setItem("sessionCount", p() + 1)
                        }, _ = function() {
                            u.setItem("pagesViewed", b() + 1)
                        }, w = function() {
                            c.setItem("pagesViewed", g() + 1)
                        }, E = function() {
                            u.getItem("trafficSource") || u.setItem("trafficSource", o.referrer)
                        };
                        r = l(),
                        y(r),
                        w(),
                        _(),
                        E(),
                        e.exports = {
                            getLandingPage: d,
                            getLandingTime: f,
                            getMinutesOnSite: m,
                            getSessionCount: p,
                            getLifetimePageViewCount: g,
                            getSessionPageViewCount: b,
                            getTrafficSource: h,
                            getIsNewVisitor: v
                        }
                    }
                },
                "core/src/lib/helpers/getNamespacedStorage.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-window")
                          , a = "com.adobe.reactor.core";
                        e.exports = function(e, t) {
                            var n = '"' + e + '" is not available on the window object.'
                              , i = a + "." + t;
                            return {
                                getItem: function(t) {
                                    try {
                                        return o[e].getItem(i + "." + t)
                                    } catch (e) {
                                        return r.logger.warn(n),
                                        null
                                    }
                                },
                                setItem: function(t, a) {
                                    try {
                                        return o[e].setItem(i + "." + t, a),
                                        !0
                                    } catch (e) {
                                        return r.logger.warn(n),
                                        !1
                                    }
                                }
                            }
                        }
                    }
                },
                "core/src/lib/actions/helpers/decorateCode.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("./decorators/decorateGlobalJavaScriptCode")
                          , o = n("./decorators/decorateNonGlobalJavaScriptCode")
                          , a = {
                            javascript: function(e, t) {
                                return e.settings.global ? r(e, t) : o(e, t)
                            },
                            html: n("./decorators/decorateHtmlCode")
                        };
                        e.exports = function(e, t) {
                            return a[e.settings.language](e, t)
                        }
                    }
                },
                "core/src/lib/actions/helpers/loadCodeSequentially.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-promise")
                          , o = n("./getSourceByUrl")
                          , a = r.resolve();
                        e.exports = function(e) {
                            var t = new r((function(t) {
                                var n = o(e);
                                r.all([n, a]).then((function(e) {
                                    var n = e[0];
                                    t(n)
                                }
                                ))
                            }
                            ));
                            return a = t,
                            t
                        }
                    }
                },
                "core/node_modules/postscribe/dist/postscribe.js": {
                    script: function(e, t) {
                        var n, r;
                        n = this,
                        r = function() {
                            return function(e) {
                                function t(r) {
                                    if (n[r])
                                        return n[r].exports;
                                    var o = n[r] = {
                                        exports: {},
                                        id: r,
                                        loaded: !1
                                    };
                                    return e[r].call(o.exports, o, o.exports, t),
                                    o.loaded = !0,
                                    o.exports
                                }
                                var n = {};
                                return t.m = e,
                                t.c = n,
                                t.p = "",
                                t(0)
                            }([function(e, t, n) {
                                "use strict";
                                function r(e) {
                                    return e && e.__esModule ? e : {
                                        default: e
                                    }
                                }
                                var o = r(n(1));
                                e.exports = o.default
                            }
                            , function(e, t, n) {
                                "use strict";
                                function r(e) {
                                    if (e && e.__esModule)
                                        return e;
                                    var t = {};
                                    if (null != e)
                                        for (var n in e)
                                            Object.prototype.hasOwnProperty.call(e, n) && (t[n] = e[n]);
                                    return t.default = e,
                                    t
                                }
                                function o(e) {
                                    return e && e.__esModule ? e : {
                                        default: e
                                    }
                                }
                                function a() {}
                                function i() {
                                    var e = g.shift();
                                    if (e) {
                                        var t = d.last(e);
                                        t.afterDequeue(),
                                        e.stream = s.apply(void 0, e),
                                        t.afterStreamStart()
                                    }
                                }
                                function s(e, t, n) {
                                    function r(e) {
                                        e = n.beforeWrite(e),
                                        m.write(e),
                                        n.afterWrite(e)
                                    }
                                    (m = new l.default(e,n)).id = p++,
                                    m.name = n.name || m.id,
                                    c.streams[m.name] = m;
                                    var o = e.ownerDocument
                                      , s = {
                                        close: o.close,
                                        open: o.open,
                                        write: o.write,
                                        writeln: o.writeln
                                    };
                                    u(o, {
                                        close: a,
                                        open: a,
                                        write: function() {
                                            for (var e = arguments.length, t = Array(e), n = 0; n < e; n++)
                                                t[n] = arguments[n];
                                            return r(t.join(""))
                                        },
                                        writeln: function() {
                                            for (var e = arguments.length, t = Array(e), n = 0; n < e; n++)
                                                t[n] = arguments[n];
                                            return r(t.join("") + "\n")
                                        }
                                    });
                                    var d = m.win.onerror || a;
                                    return m.win.onerror = function(e, t, r) {
                                        n.error({
                                            msg: e + " - " + t + ": " + r
                                        }),
                                        d.apply(m.win, [e, t, r])
                                    }
                                    ,
                                    m.write(t, (function() {
                                        u(o, s),
                                        m.win.onerror = d,
                                        n.done(),
                                        m = null,
                                        i()
                                    }
                                    )),
                                    m
                                }
                                function c(e, t, n) {
                                    if (d.isFunction(n))
                                        n = {
                                            done: n
                                        };
                                    else if ("clear" === n)
                                        return g = [],
                                        m = null,
                                        void (p = 0);
                                    n = d.defaults(n, f);
                                    var r = [e = /^#/.test(e) ? window.document.getElementById(e.substr(1)) : e.jquery ? e[0] : e, t, n];
                                    return e.postscribe = {
                                        cancel: function() {
                                            r.stream ? r.stream.abort() : r[1] = a
                                        }
                                    },
                                    n.beforeEnqueue(r),
                                    g.push(r),
                                    m || i(),
                                    e.postscribe
                                }
                                t.__esModule = !0;
                                var u = Object.assign || function(e) {
                                    for (var t = 1; t < arguments.length; t++) {
                                        var n = arguments[t];
                                        for (var r in n)
                                            Object.prototype.hasOwnProperty.call(n, r) && (e[r] = n[r])
                                    }
                                    return e
                                }
                                ;
                                t.default = c;
                                var l = o(n(2))
                                  , d = r(n(4))
                                  , f = {
                                    afterAsync: a,
                                    afterDequeue: a,
                                    afterStreamStart: a,
                                    afterWrite: a,
                                    autoFix: !0,
                                    beforeEnqueue: a,
                                    beforeWriteToken: function(e) {
                                        return e
                                    },
                                    beforeWrite: function(e) {
                                        return e
                                    },
                                    done: a,
                                    error: function(e) {
                                        throw new Error(e.msg)
                                    },
                                    releaseAsync: !1
                                }
                                  , p = 0
                                  , g = []
                                  , m = null;
                                u(c, {
                                    streams: {},
                                    queue: g,
                                    WriteStream: l.default
                                })
                            }
                            , function(e, t, n) {
                                "use strict";
                                function r(e) {
                                    if (e && e.__esModule)
                                        return e;
                                    var t = {};
                                    if (null != e)
                                        for (var n in e)
                                            Object.prototype.hasOwnProperty.call(e, n) && (t[n] = e[n]);
                                    return t.default = e,
                                    t
                                }
                                function o(e) {
                                    return e && e.__esModule ? e : {
                                        default: e
                                    }
                                }
                                function a(e, t) {
                                    if (!(e instanceof t))
                                        throw new TypeError("Cannot call a class as a function")
                                }
                                function i(e, t) {
                                    var n = f + t
                                      , r = e.getAttribute(n);
                                    return l.existy(r) ? String(r) : r
                                }
                                function s(e, t) {
                                    var n = arguments.length > 2 && void 0 !== arguments[2] ? arguments[2] : null
                                      , r = f + t;
                                    l.existy(n) && "" !== n ? e.setAttribute(r, n) : e.removeAttribute(r)
                                }
                                t.__esModule = !0;
                                var c = Object.assign || function(e) {
                                    for (var t = 1; t < arguments.length; t++) {
                                        var n = arguments[t];
                                        for (var r in n)
                                            Object.prototype.hasOwnProperty.call(n, r) && (e[r] = n[r])
                                    }
                                    return e
                                }
                                  , u = o(n(3))
                                  , l = r(n(4))
                                  , d = !1
                                  , f = "data-ps-"
                                  , p = "ps-style"
                                  , g = "ps-script"
                                  , m = function() {
                                    function e(t) {
                                        var n = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                                        a(this, e),
                                        this.root = t,
                                        this.options = n,
                                        this.doc = t.ownerDocument,
                                        this.win = this.doc.defaultView || this.doc.parentWindow,
                                        this.parser = new u.default("",{
                                            autoFix: n.autoFix
                                        }),
                                        this.actuals = [t],
                                        this.proxyHistory = "",
                                        this.proxyRoot = this.doc.createElement(t.nodeName),
                                        this.scriptStack = [],
                                        this.writeQueue = [],
                                        s(this.proxyRoot, "proxyof", 0)
                                    }
                                    return e.prototype.write = function() {
                                        var e;
                                        for ((e = this.writeQueue).push.apply(e, arguments); !this.deferredRemote && this.writeQueue.length; ) {
                                            var t = this.writeQueue.shift();
                                            l.isFunction(t) ? this._callFunction(t) : this._writeImpl(t)
                                        }
                                    }
                                    ,
                                    e.prototype._callFunction = function(e) {
                                        var t = {
                                            type: "function",
                                            value: e.name || e.toString()
                                        };
                                        this._onScriptStart(t),
                                        e.call(this.win, this.doc),
                                        this._onScriptDone(t)
                                    }
                                    ,
                                    e.prototype._writeImpl = function(e) {
                                        this.parser.append(e);
                                        for (var t = void 0, n = void 0, r = void 0, o = []; (t = this.parser.readToken()) && !(n = l.isScript(t)) && !(r = l.isStyle(t)); )
                                            (t = this.options.beforeWriteToken(t)) && o.push(t);
                                        o.length > 0 && this._writeStaticTokens(o),
                                        n && this._handleScriptToken(t),
                                        r && this._handleStyleToken(t)
                                    }
                                    ,
                                    e.prototype._writeStaticTokens = function(e) {
                                        var t = this._buildChunk(e);
                                        return t.actual ? (t.html = this.proxyHistory + t.actual,
                                        this.proxyHistory += t.proxy,
                                        this.proxyRoot.innerHTML = t.html,
                                        d && (t.proxyInnerHTML = this.proxyRoot.innerHTML),
                                        this._walkChunk(),
                                        d && (t.actualInnerHTML = this.root.innerHTML),
                                        t) : null
                                    }
                                    ,
                                    e.prototype._buildChunk = function(e) {
                                        for (var t = this.actuals.length, n = [], r = [], o = [], a = e.length, i = 0; i < a; i++) {
                                            var s = e[i]
                                              , c = s.toString();
                                            if (n.push(c),
                                            s.attrs) {
                                                if (!/^noscript$/i.test(s.tagName)) {
                                                    var u = t++;
                                                    r.push(c.replace(/(\/?>)/, " " + f + "id=" + u + " $1")),
                                                    s.attrs.id !== g && s.attrs.id !== p && o.push("atomicTag" === s.type ? "" : "<" + s.tagName + " " + f + "proxyof=" + u + (s.unary ? " />" : ">"))
                                                }
                                            } else
                                                r.push(c),
                                                o.push("endTag" === s.type ? c : "")
                                        }
                                        return {
                                            tokens: e,
                                            raw: n.join(""),
                                            actual: r.join(""),
                                            proxy: o.join("")
                                        }
                                    }
                                    ,
                                    e.prototype._walkChunk = function() {
                                        for (var e = void 0, t = [this.proxyRoot]; l.existy(e = t.shift()); ) {
                                            var n = 1 === e.nodeType;
                                            if (!n || !i(e, "proxyof")) {
                                                n && (this.actuals[i(e, "id")] = e,
                                                s(e, "id"));
                                                var r = e.parentNode && i(e.parentNode, "proxyof");
                                                r && this.actuals[r].appendChild(e)
                                            }
                                            t.unshift.apply(t, l.toArray(e.childNodes))
                                        }
                                    }
                                    ,
                                    e.prototype._handleScriptToken = function(e) {
                                        var t = this
                                          , n = this.parser.clear();
                                        n && this.writeQueue.unshift(n),
                                        e.src = e.attrs.src || e.attrs.SRC,
                                        (e = this.options.beforeWriteToken(e)) && (e.src && this.scriptStack.length ? this.deferredRemote = e : this._onScriptStart(e),
                                        this._writeScriptToken(e, (function() {
                                            t._onScriptDone(e)
                                        }
                                        )))
                                    }
                                    ,
                                    e.prototype._handleStyleToken = function(e) {
                                        var t = this.parser.clear();
                                        t && this.writeQueue.unshift(t),
                                        e.type = e.attrs.type || e.attrs.TYPE || "text/css",
                                        (e = this.options.beforeWriteToken(e)) && this._writeStyleToken(e),
                                        t && this.write()
                                    }
                                    ,
                                    e.prototype._writeStyleToken = function(e) {
                                        var t = this._buildStyle(e);
                                        this._insertCursor(t, p),
                                        e.content && (t.styleSheet && !t.sheet ? t.styleSheet.cssText = e.content : t.appendChild(this.doc.createTextNode(e.content)))
                                    }
                                    ,
                                    e.prototype._buildStyle = function(e) {
                                        var t = this.doc.createElement(e.tagName);
                                        return t.setAttribute("type", e.type),
                                        l.eachKey(e.attrs, (function(e, n) {
                                            t.setAttribute(e, n)
                                        }
                                        )),
                                        t
                                    }
                                    ,
                                    e.prototype._insertCursor = function(e, t) {
                                        this._writeImpl('<span id="' + t + '"/>');
                                        var n = this.doc.getElementById(t);
                                        n && n.parentNode.replaceChild(e, n)
                                    }
                                    ,
                                    e.prototype._onScriptStart = function(e) {
                                        e.outerWrites = this.writeQueue,
                                        this.writeQueue = [],
                                        this.scriptStack.unshift(e)
                                    }
                                    ,
                                    e.prototype._onScriptDone = function(e) {
                                        e === this.scriptStack[0] ? (this.scriptStack.shift(),
                                        this.write.apply(this, e.outerWrites),
                                        !this.scriptStack.length && this.deferredRemote && (this._onScriptStart(this.deferredRemote),
                                        this.deferredRemote = null)) : this.options.error({
                                            msg: "Bad script nesting or script finished twice"
                                        })
                                    }
                                    ,
                                    e.prototype._writeScriptToken = function(e, t) {
                                        var n = this._buildScript(e)
                                          , r = this._shouldRelease(n)
                                          , o = this.options.afterAsync;
                                        e.src && (n.src = e.src,
                                        this._scriptLoadHandler(n, r ? o : function() {
                                            t(),
                                            o()
                                        }
                                        ));
                                        try {
                                            this._insertCursor(n, g),
                                            n.src && !r || t()
                                        } catch (e) {
                                            this.options.error(e),
                                            t()
                                        }
                                    }
                                    ,
                                    e.prototype._buildScript = function(e) {
                                        var t = this.doc.createElement(e.tagName);
                                        return l.eachKey(e.attrs, (function(e, n) {
                                            t.setAttribute(e, n)
                                        }
                                        )),
                                        e.content && (t.text = e.content),
                                        t
                                    }
                                    ,
                                    e.prototype._scriptLoadHandler = function(e, t) {
                                        function n() {
                                            e = e.onload = e.onreadystatechange = e.onerror = null
                                        }
                                        function r() {
                                            n(),
                                            null != t && t(),
                                            t = null
                                        }
                                        function o(e) {
                                            n(),
                                            i(e),
                                            null != t && t(),
                                            t = null
                                        }
                                        function a(e, t) {
                                            var n = e["on" + t];
                                            null != n && (e["_on" + t] = n)
                                        }
                                        var i = this.options.error;
                                        a(e, "load"),
                                        a(e, "error"),
                                        c(e, {
                                            onload: function() {
                                                if (e._onload)
                                                    try {
                                                        e._onload.apply(this, Array.prototype.slice.call(arguments, 0))
                                                    } catch (t) {
                                                        o({
                                                            msg: "onload handler failed " + t + " @ " + e.src
                                                        })
                                                    }
                                                r()
                                            },
                                            onerror: function() {
                                                if (e._onerror)
                                                    try {
                                                        e._onerror.apply(this, Array.prototype.slice.call(arguments, 0))
                                                    } catch (t) {
                                                        return void o({
                                                            msg: "onerror handler failed " + t + " @ " + e.src
                                                        })
                                                    }
                                                o({
                                                    msg: "remote script failed " + e.src
                                                })
                                            },
                                            onreadystatechange: function() {
                                                /^(loaded|complete)$/.test(e.readyState) && r()
                                            }
                                        })
                                    }
                                    ,
                                    e.prototype._shouldRelease = function(e) {
                                        return !/^script$/i.test(e.nodeName) || !!(this.options.releaseAsync && e.src && e.hasAttribute("async"))
                                    }
                                    ,
                                    e
                                }();
                                t.default = m
                            }
                            , function(e) {
                                var t;
                                t = function() {
                                    return function(e) {
                                        function t(r) {
                                            if (n[r])
                                                return n[r].exports;
                                            var o = n[r] = {
                                                exports: {},
                                                id: r,
                                                loaded: !1
                                            };
                                            return e[r].call(o.exports, o, o.exports, t),
                                            o.loaded = !0,
                                            o.exports
                                        }
                                        var n = {};
                                        return t.m = e,
                                        t.c = n,
                                        t.p = "",
                                        t(0)
                                    }([function(e, t, n) {
                                        "use strict";
                                        function r(e) {
                                            return e && e.__esModule ? e : {
                                                default: e
                                            }
                                        }
                                        var o = r(n(1));
                                        e.exports = o.default
                                    }
                                    , function(e, t, n) {
                                        "use strict";
                                        function r(e) {
                                            return e && e.__esModule ? e : {
                                                default: e
                                            }
                                        }
                                        function o(e) {
                                            if (e && e.__esModule)
                                                return e;
                                            var t = {};
                                            if (null != e)
                                                for (var n in e)
                                                    Object.prototype.hasOwnProperty.call(e, n) && (t[n] = e[n]);
                                            return t.default = e,
                                            t
                                        }
                                        function a(e, t) {
                                            if (!(e instanceof t))
                                                throw new TypeError("Cannot call a class as a function")
                                        }
                                        t.__esModule = !0;
                                        var i = o(n(2))
                                          , s = o(n(3))
                                          , c = r(n(6))
                                          , u = n(5)
                                          , l = {
                                            comment: /^<!--/,
                                            endTag: /^<\//,
                                            atomicTag: /^<\s*(script|style|noscript|iframe|textarea)[\s\/>]/i,
                                            startTag: /^</,
                                            chars: /^[^<]/
                                        }
                                          , d = function() {
                                            function e() {
                                                var t = this
                                                  , n = arguments.length > 0 && void 0 !== arguments[0] ? arguments[0] : ""
                                                  , r = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : {};
                                                a(this, e),
                                                this.stream = n;
                                                var o = !1
                                                  , s = {};
                                                for (var u in i)
                                                    i.hasOwnProperty(u) && (r.autoFix && (s[u + "Fix"] = !0),
                                                    o = o || s[u + "Fix"]);
                                                o ? (this._readToken = (0,
                                                c.default)(this, s, (function() {
                                                    return t._readTokenImpl()
                                                }
                                                )),
                                                this._peekToken = (0,
                                                c.default)(this, s, (function() {
                                                    return t._peekTokenImpl()
                                                }
                                                ))) : (this._readToken = this._readTokenImpl,
                                                this._peekToken = this._peekTokenImpl)
                                            }
                                            return e.prototype.append = function(e) {
                                                this.stream += e
                                            }
                                            ,
                                            e.prototype.prepend = function(e) {
                                                this.stream = e + this.stream
                                            }
                                            ,
                                            e.prototype._readTokenImpl = function() {
                                                var e = this._peekTokenImpl();
                                                if (e)
                                                    return this.stream = this.stream.slice(e.length),
                                                    e
                                            }
                                            ,
                                            e.prototype._peekTokenImpl = function() {
                                                for (var e in l)
                                                    if (l.hasOwnProperty(e) && l[e].test(this.stream)) {
                                                        var t = s[e](this.stream);
                                                        if (t)
                                                            return "startTag" === t.type && /script|style/i.test(t.tagName) ? null : (t.text = this.stream.substr(0, t.length),
                                                            t)
                                                    }
                                            }
                                            ,
                                            e.prototype.peekToken = function() {
                                                return this._peekToken()
                                            }
                                            ,
                                            e.prototype.readToken = function() {
                                                return this._readToken()
                                            }
                                            ,
                                            e.prototype.readTokens = function(e) {
                                                for (var t = void 0; t = this.readToken(); )
                                                    if (e[t.type] && !1 === e[t.type](t))
                                                        return
                                            }
                                            ,
                                            e.prototype.clear = function() {
                                                var e = this.stream;
                                                return this.stream = "",
                                                e
                                            }
                                            ,
                                            e.prototype.rest = function() {
                                                return this.stream
                                            }
                                            ,
                                            e
                                        }();
                                        for (var f in t.default = d,
                                        d.tokenToString = function(e) {
                                            return e.toString()
                                        }
                                        ,
                                        d.escapeAttributes = function(e) {
                                            var t = {};
                                            for (var n in e)
                                                e.hasOwnProperty(n) && (t[n] = (0,
                                                u.escapeQuotes)(e[n], null));
                                            return t
                                        }
                                        ,
                                        d.supports = i,
                                        i)
                                            i.hasOwnProperty(f) && (d.browserHasFlaw = d.browserHasFlaw || !i[f] && f)
                                    }
                                    , function(e, t) {
                                        "use strict";
                                        t.__esModule = !0;
                                        var n = !1
                                          , r = !1
                                          , o = window.document.createElement("div");
                                        try {
                                            var a = "<P><I></P></I>";
                                            o.innerHTML = a,
                                            t.tagSoup = n = o.innerHTML !== a
                                        } catch (e) {
                                            t.tagSoup = n = !1
                                        }
                                        try {
                                            o.innerHTML = "<P><i><P></P></i></P>",
                                            t.selfClose = r = 2 === o.childNodes.length
                                        } catch (e) {
                                            t.selfClose = r = !1
                                        }
                                        o = null,
                                        t.tagSoup = n,
                                        t.selfClose = r
                                    }
                                    , function(e, t, n) {
                                        "use strict";
                                        function r(e) {
                                            var t = e.indexOf("-->");
                                            if (t >= 0)
                                                return new u.CommentToken(e.substr(4, t - 1),t + 3)
                                        }
                                        function o(e) {
                                            var t = e.indexOf("<");
                                            return new u.CharsToken(t >= 0 ? t : e.length)
                                        }
                                        function a(e) {
                                            var t, n, r;
                                            if (-1 !== e.indexOf(">")) {
                                                var o = e.match(l.startTag);
                                                if (o) {
                                                    var a = (t = {},
                                                    n = {},
                                                    r = o[2],
                                                    o[2].replace(l.attr, (function(e, o) {
                                                        arguments[2] || arguments[3] || arguments[4] || arguments[5] ? arguments[5] ? (t[arguments[5]] = "",
                                                        n[arguments[5]] = !0) : t[o] = arguments[2] || arguments[3] || arguments[4] || l.fillAttr.test(o) && o || "" : t[o] = "",
                                                        r = r.replace(e, "")
                                                    }
                                                    )),
                                                    {
                                                        v: new u.StartTagToken(o[1],o[0].length,t,n,!!o[3],r.replace(/^[\s\uFEFF\xA0]+|[\s\uFEFF\xA0]+$/g, ""))
                                                    });
                                                    if ("object" === (void 0 === a ? "undefined" : c(a)))
                                                        return a.v
                                                }
                                            }
                                        }
                                        function i(e) {
                                            var t = a(e);
                                            if (t) {
                                                var n = e.slice(t.length);
                                                if (n.match(new RegExp("</\\s*" + t.tagName + "\\s*>","i"))) {
                                                    var r = n.match(new RegExp("([\\s\\S]*?)</\\s*" + t.tagName + "\\s*>","i"));
                                                    if (r)
                                                        return new u.AtomicTagToken(t.tagName,r[0].length + t.length,t.attrs,t.booleanAttrs,r[1])
                                                }
                                            }
                                        }
                                        function s(e) {
                                            var t = e.match(l.endTag);
                                            if (t)
                                                return new u.EndTagToken(t[1],t[0].length)
                                        }
                                        t.__esModule = !0;
                                        var c = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(e) {
                                            return typeof e
                                        }
                                        : function(e) {
                                            return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
                                        }
                                        ;
                                        t.comment = r,
                                        t.chars = o,
                                        t.startTag = a,
                                        t.atomicTag = i,
                                        t.endTag = s;
                                        var u = n(4)
                                          , l = {
                                            startTag: /^<([\-A-Za-z0-9_]+)((?:\s+[\w\-]+(?:\s*=?\s*(?:(?:"[^"]*")|(?:'[^']*')|[^>\s]+))?)*)\s*(\/?)>/,
                                            endTag: /^<\/([\-A-Za-z0-9_]+)[^>]*>/,
                                            attr: /(?:([\-A-Za-z0-9_]+)\s*=\s*(?:(?:"((?:\\.|[^"])*)")|(?:'((?:\\.|[^'])*)')|([^>\s]+)))|(?:([\-A-Za-z0-9_]+)(\s|$)+)/g,
                                            fillAttr: /^(checked|compact|declare|defer|disabled|ismap|multiple|nohref|noresize|noshade|nowrap|readonly|selected)$/i
                                        }
                                    }
                                    , function(e, t, n) {
                                        "use strict";
                                        function r(e, t) {
                                            if (!(e instanceof t))
                                                throw new TypeError("Cannot call a class as a function")
                                        }
                                        t.__esModule = !0,
                                        t.EndTagToken = t.AtomicTagToken = t.StartTagToken = t.TagToken = t.CharsToken = t.CommentToken = t.Token = void 0;
                                        var o = n(5)
                                          , a = (t.Token = function e(t, n) {
                                            r(this, e),
                                            this.type = t,
                                            this.length = n,
                                            this.text = ""
                                        }
                                        ,
                                        t.CommentToken = function() {
                                            function e(t, n) {
                                                r(this, e),
                                                this.type = "comment",
                                                this.length = n || (t ? t.length : 0),
                                                this.text = "",
                                                this.content = t
                                            }
                                            return e.prototype.toString = function() {
                                                return "<!--" + this.content
                                            }
                                            ,
                                            e
                                        }(),
                                        t.CharsToken = function() {
                                            function e(t) {
                                                r(this, e),
                                                this.type = "chars",
                                                this.length = t,
                                                this.text = ""
                                            }
                                            return e.prototype.toString = function() {
                                                return this.text
                                            }
                                            ,
                                            e
                                        }(),
                                        t.TagToken = function() {
                                            function e(t, n, o, a, i) {
                                                r(this, e),
                                                this.type = t,
                                                this.length = o,
                                                this.text = "",
                                                this.tagName = n,
                                                this.attrs = a,
                                                this.booleanAttrs = i,
                                                this.unary = !1,
                                                this.html5Unary = !1
                                            }
                                            return e.formatTag = function(e) {
                                                var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : null
                                                  , n = "<" + e.tagName;
                                                for (var r in e.attrs)
                                                    if (e.attrs.hasOwnProperty(r)) {
                                                        n += " " + r;
                                                        var a = e.attrs[r];
                                                        void 0 !== e.booleanAttrs && void 0 !== e.booleanAttrs[r] || (n += '="' + (0,
                                                        o.escapeQuotes)(a) + '"')
                                                    }
                                                return e.rest && (n += " " + e.rest),
                                                e.unary && !e.html5Unary ? n += "/>" : n += ">",
                                                null != t && (n += t + "</" + e.tagName + ">"),
                                                n
                                            }
                                            ,
                                            e
                                        }());
                                        t.StartTagToken = function() {
                                            function e(t, n, o, a, i, s) {
                                                r(this, e),
                                                this.type = "startTag",
                                                this.length = n,
                                                this.text = "",
                                                this.tagName = t,
                                                this.attrs = o,
                                                this.booleanAttrs = a,
                                                this.html5Unary = !1,
                                                this.unary = i,
                                                this.rest = s
                                            }
                                            return e.prototype.toString = function() {
                                                return a.formatTag(this)
                                            }
                                            ,
                                            e
                                        }(),
                                        t.AtomicTagToken = function() {
                                            function e(t, n, o, a, i) {
                                                r(this, e),
                                                this.type = "atomicTag",
                                                this.length = n,
                                                this.text = "",
                                                this.tagName = t,
                                                this.attrs = o,
                                                this.booleanAttrs = a,
                                                this.unary = !1,
                                                this.html5Unary = !1,
                                                this.content = i
                                            }
                                            return e.prototype.toString = function() {
                                                return a.formatTag(this, this.content)
                                            }
                                            ,
                                            e
                                        }(),
                                        t.EndTagToken = function() {
                                            function e(t, n) {
                                                r(this, e),
                                                this.type = "endTag",
                                                this.length = n,
                                                this.text = "",
                                                this.tagName = t
                                            }
                                            return e.prototype.toString = function() {
                                                return "</" + this.tagName + ">"
                                            }
                                            ,
                                            e
                                        }()
                                    }
                                    , function(e, t) {
                                        "use strict";
                                        function n(e) {
                                            var t = arguments.length > 1 && void 0 !== arguments[1] ? arguments[1] : "";
                                            return e ? e.replace(/([^"]*)"/g, (function(e, t) {
                                                return /\\/.test(t) ? t + '"' : t + '\\"'
                                            }
                                            )) : t
                                        }
                                        t.__esModule = !0,
                                        t.escapeQuotes = n
                                    }
                                    , function(e, t) {
                                        "use strict";
                                        function n(e) {
                                            return e && "startTag" === e.type && (e.unary = s.test(e.tagName) || e.unary,
                                            e.html5Unary = !/\/>$/.test(e.text)),
                                            e
                                        }
                                        function r(e, t) {
                                            var r = e.stream
                                              , o = n(t());
                                            return e.stream = r,
                                            o
                                        }
                                        function o(e, t) {
                                            var n = t.pop();
                                            e.prepend("</" + n.tagName + ">")
                                        }
                                        function a() {
                                            var e = [];
                                            return e.last = function() {
                                                return this[this.length - 1]
                                            }
                                            ,
                                            e.lastTagNameEq = function(e) {
                                                var t = this.last();
                                                return t && t.tagName && t.tagName.toUpperCase() === e.toUpperCase()
                                            }
                                            ,
                                            e.containsTagName = function(e) {
                                                for (var t, n = 0; t = this[n]; n++)
                                                    if (t.tagName === e)
                                                        return !0;
                                                return !1
                                            }
                                            ,
                                            e
                                        }
                                        function i(e, t, i) {
                                            function s() {
                                                var t = r(e, i);
                                                t && l[t.type] && l[t.type](t)
                                            }
                                            var u = a()
                                              , l = {
                                                startTag: function(n) {
                                                    var r = n.tagName;
                                                    "TR" === r.toUpperCase() && u.lastTagNameEq("TABLE") ? (e.prepend("<TBODY>"),
                                                    s()) : t.selfCloseFix && c.test(r) && u.containsTagName(r) ? u.lastTagNameEq(r) ? o(e, u) : (e.prepend("</" + n.tagName + ">"),
                                                    s()) : n.unary || u.push(n)
                                                },
                                                endTag: function(n) {
                                                    u.last() ? t.tagSoupFix && !u.lastTagNameEq(n.tagName) ? o(e, u) : u.pop() : t.tagSoupFix && (i(),
                                                    s())
                                                }
                                            };
                                            return function() {
                                                return s(),
                                                n(i())
                                            }
                                        }
                                        t.__esModule = !0,
                                        t.default = i;
                                        var s = /^(AREA|BASE|BASEFONT|BR|COL|FRAME|HR|IMG|INPUT|ISINDEX|LINK|META|PARAM|EMBED)$/i
                                          , c = /^(COLGROUP|DD|DT|LI|OPTIONS|P|TD|TFOOT|TH|THEAD|TR)$/i
                                    }
                                    ])
                                }
                                ,
                                e.exports = t()
                            }
                            , function(e, t) {
                                "use strict";
                                function n(e) {
                                    return null != e
                                }
                                function r(e) {
                                    return "function" == typeof e
                                }
                                function o(e, t, n) {
                                    var r = void 0
                                      , o = e && e.length || 0;
                                    for (r = 0; r < o; r++)
                                        t.call(n, e[r], r)
                                }
                                function a(e, t, n) {
                                    for (var r in e)
                                        e.hasOwnProperty(r) && t.call(n, r, e[r])
                                }
                                function i(e, t) {
                                    return e = e || {},
                                    a(t, (function(t, r) {
                                        n(e[t]) || (e[t] = r)
                                    }
                                    )),
                                    e
                                }
                                function s(e) {
                                    try {
                                        return Array.prototype.slice.call(e)
                                    } catch (r) {
                                        var t = (n = [],
                                        o(e, (function(e) {
                                            n.push(e)
                                        }
                                        )),
                                        {
                                            v: n
                                        });
                                        if ("object" === (void 0 === t ? "undefined" : f(t)))
                                            return t.v
                                    }
                                    var n
                                }
                                function c(e) {
                                    return e[e.length - 1]
                                }
                                function u(e, t) {
                                    return !(!e || "startTag" !== e.type && "atomicTag" !== e.type || !("tagName"in e) || !~e.tagName.toLowerCase().indexOf(t))
                                }
                                function l(e) {
                                    return u(e, "script")
                                }
                                function d(e) {
                                    return u(e, "style")
                                }
                                t.__esModule = !0;
                                var f = "function" == typeof Symbol && "symbol" == typeof Symbol.iterator ? function(e) {
                                    return typeof e
                                }
                                : function(e) {
                                    return e && "function" == typeof Symbol && e.constructor === Symbol && e !== Symbol.prototype ? "symbol" : typeof e
                                }
                                ;
                                t.existy = n,
                                t.isFunction = r,
                                t.each = o,
                                t.eachKey = a,
                                t.defaults = i,
                                t.toArray = s,
                                t.last = c,
                                t.isTag = u,
                                t.isScript = l,
                                t.isStyle = d
                            }
                            ])
                        }
                        ,
                        "object" == typeof t && "object" == typeof e ? e.exports = r() : "function" == typeof define && define.amd ? define([], r) : "object" == typeof t ? t.postscribe = r() : n.postscribe = r()
                    }
                },
                "core/src/lib/actions/helpers/unescapeHtmlCode.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-document").createElement("div");
                        e.exports = function(e) {
                            return r.innerHTML = e,
                            r.textContent || r.innerText || e
                        }
                    }
                },
                "core/src/lib/helpers/findPageScript.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-document")
                          , o = function(e) {
                            for (var t = r.querySelectorAll("script"), n = 0; n < t.length; n++) {
                                var o = t[n];
                                if (e.test(o.src))
                                    return o
                            }
                        }
                          , a = function() {
                            return o(new RegExp(/(launch|satelliteLib)-[^\/]+.js(\?.*)?$/))
                        };
                        e.exports = {
                            getTurbine: a,
                            byRegexPattern: o
                        }
                    }
                },
                "core/src/lib/actions/helpers/decorators/decorateGlobalJavaScriptCode.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-promise");
                        e.exports = function(e, t) {
                            return {
                                code: "<script>\n" + t + "\n</script>",
                                promise: r.resolve()
                            }
                        }
                    }
                },
                "core/src/lib/actions/helpers/decorators/decorateNonGlobalJavaScriptCode.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-promise")
                          , o = 0;
                        e.exports = function(e, t) {
                            var n = "_runScript" + ++o
                              , a = new r((function(t, o) {
                                _satellite[n] = function(a) {
                                    delete _satellite[n],
                                    new r((function(t) {
                                        t(a.call(e.event.element, e.event, e.event.target, r))
                                    }
                                    )).then(t, o)
                                }
                            }
                            ));
                            return {
                                code: '<script>_satellite["' + n + '"](function(event, target, Promise) {\n' + t + "\n});</script>",
                                promise: a
                            }
                        }
                    }
                },
                "core/src/lib/actions/helpers/decorators/decorateHtmlCode.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-promise")
                          , a = 0
                          , i = {};
                        window._satellite = window._satellite || {},
                        window._satellite._onCustomCodeSuccess = function(e) {
                            var t = i[e];
                            t && (delete i[e],
                            t.resolve())
                        }
                        ,
                        window._satellite._onCustomCodeFailure = function(e) {
                            var t = i[e];
                            t && (delete i[e],
                            t.reject())
                        }
                        ;
                        var s = function(e) {
                            return -1 !== e.indexOf("${reactorCallbackId}")
                        }
                          , c = function(e, t) {
                            return e.replace(/\${reactorCallbackId}/g, t)
                        }
                          , u = function(e) {
                            return e.settings.isExternal
                        };
                        e.exports = function(e, t) {
                            var n;
                            return u(e) && (t = r.replaceTokens(t, e.event)),
                            s(t) ? (n = new o((function(e, t) {
                                i[String(a)] = {
                                    resolve: e,
                                    reject: t
                                }
                            }
                            )),
                            t = c(t, a),
                            a += 1) : n = o.resolve(),
                            {
                                code: t,
                                promise: n
                            }
                        }
                    }
                },
                "core/src/lib/actions/helpers/getSourceByUrl.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-load-script")
                          , o = n("@adobe/reactor-promise")
                          , a = n("../../helpers/findPageScript").byRegexPattern
                          , i = {}
                          , s = {}
                          , c = function(e) {
                            return s[e] || (s[e] = r(e)),
                            s[e]
                        };
                        _satellite.__registerScript = function(e, t) {
                            var n;
                            if (document.currentScript)
                                n = document.currentScript.getAttribute("src");
                            else {
                                var r = new RegExp(".*" + e + ".*");
                                n = a(r).getAttribute("src")
                            }
                            i[n] = t
                        }
                        ,
                        e.exports = function(e) {
                            return i[e] ? o.resolve(i[e]) : new o((function(t) {
                                c(e).then((function() {
                                    t(i[e])
                                }
                                ), (function() {
                                    t()
                                }
                                ))
                            }
                            ))
                        }
                    }
                },
                "core/src/lib/events/helpers/pageLifecycleEvents.js": {
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("@adobe/reactor-window")
                          , o = n("@adobe/reactor-document")
                          , a = -1 !== r.navigator.appVersion.indexOf("MSIE 10")
                          , i = "WINDOW_LOADED"
                          , s = "DOM_READY"
                          , c = "PAGE_BOTTOM"
                          , u = [c, s, i]
                          , l = function(e, t) {
                            return {
                                element: e,
                                target: e,
                                nativeEvent: t
                            }
                        }
                          , d = {};
                        u.forEach((function(e) {
                            d[e] = []
                        }
                        ));
                        var f = function(e, t) {
                            u.slice(0, g(e) + 1).forEach((function(e) {
                                m(t, e)
                            }
                            ))
                        }
                          , p = function() {
                            return "complete" === o.readyState ? i : "interactive" === o.readyState ? a ? null : s : void 0
                        }
                          , g = function(e) {
                            return u.indexOf(e)
                        }
                          , m = function(e, t) {
                            d[t].forEach((function(t) {
                                h(e, t)
                            }
                            )),
                            d[t] = []
                        }
                          , h = function(e, t) {
                            var n = t.trigger
                              , r = t.syntheticEventFn;
                            n(r ? r(e) : null)
                        };
                        r._satellite = r._satellite || {},
                        r._satellite.pageBottom = f.bind(null, c),
                        o.addEventListener("DOMContentLoaded", f.bind(null, s), !0),
                        r.addEventListener("load", f.bind(null, i), !0),
                        r.setTimeout((function() {
                            var e = p();
                            e && f(e)
                        }
                        ), 0),
                        e.exports = {
                            registerLibraryLoadedTrigger: function(e) {
                                e()
                            },
                            registerPageBottomTrigger: function(e) {
                                d[c].push({
                                    trigger: e
                                })
                            },
                            registerDomReadyTrigger: function(e) {
                                d[s].push({
                                    trigger: e,
                                    syntheticEventFn: l.bind(null, o)
                                })
                            },
                            registerWindowLoadedTrigger: function(e) {
                                d[i].push({
                                    trigger: e,
                                    syntheticEventFn: l.bind(null, r)
                                })
                            }
                        }
                    }
                },
                "core/src/lib/helpers/stringAndNumberUtils.js": {
                    script: function(e) {
                        "use strict";
                        var t = function(e) {
                            return "number" == typeof e && isFinite(e)
                        }
                          , n = function(e) {
                            return "string" == typeof e || e instanceof String
                        }
                          , r = function(e) {
                            return t(e) ? String(e) : e
                        }
                          , o = function(e) {
                            return n(e) ? Number(e) : e
                        };
                        e.exports = {
                            isNumber: t,
                            isString: n,
                            castToStringIfNumber: r,
                            castToNumberIfString: o
                        }
                    }
                }
            }
        },
        "adobe-analytics": {
            displayName: "Adobe Analytics",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EPbde2f7ca14e540399dcc1f8208860b7b/",
            settings: {
                orgId: "EBE940175A95520F0A495EC8@AdobeOrg",
                customSetup: {
                    source: function(e) {
                        function t(e) {
                            var t = document.location.href;
                            e.pageName && (e.prop1 = "D=pageName",
                            e.eVar1 = "D=pageName",
                            e.prop2 = "D=g",
                            e.eVar2 = "D=g",
                            e.events,
                            e.events = e.apl(e.events, "event1", ",", 1)),
                            e.eVar23 = _satellite.getVisitorId().getMarketingCloudVisitorID(),
                            e.prop3 = e.getPreviousValue(e.pageName, "gpv", ""),
                            e.prop3 && (e.eVar3 = "D=c3"),
                            e.eVar5 = "D=r",
                            e.prop5 = "D=r";
                            var n = document.referrer.split("/")[2];
                            n && (e.prop10 = n),
                            (t = new Date).toISOString(),
                            e.prop12 = t.toISOString().replace("Z", ""),
                            e.prop11 = t.toISOString()
                        }
                        e.usePlugins = !0,
                        e.doPlugins = t,
                        e.getPreviousValue = new Function("v","c","el","var s=this,t=new Date,i,j,r='';t.setTime(t.getTime()+1800000);if(el){if(s.events){i=s.split(el,',');j=s.split(s.events,',');for(x in i){for(y in j){if(i[x]==j[y]){if(s.c_r(c)) r=s.c_r(c);v?s.c_w(c,v,t):s.c_w(c,'no value',t);return r}}}}}else{if(s.c_r(c)) r=s.c_r(c);v?s.c_w(c,v,t):s.c_w(c,'no value',t);return r}"),
                        e.apl = new Function("l","v","d","u","var s=this,m=0;if(!l)l='';if(u){var i,n,a=s.split(l,d);for(i=0;i<a.length;i++){n=a[i];m=m||(u==1?(n==v):(n.toLowerCase()==v.toLowerCase()));}}if(!m)l=l?l+d+v:v;return l"),
                        e.split = new Function("l","d","var i,x=0,a=new Array;while(l){i=l.indexOf(d);i=i>-1?i:l.length;a[x++]=l.substring(0,i);l=l.substring(i+d.length);}return a")
                    }
                },
                libraryCode: {
                    type: "custom",
                    source: "https://assets.adobedtm.com/a73baa1ef69f/aace55ad043b/618da95aa1c3/EX2ca6e749378044e884c1a5b0ee469be6-libraryCode_source.min.js",
                    accounts: {
                        production: ["ilotteryirelandprod"]
                    },
                    trackerVariableName: "s"
                },
                trackerProperties: {
                    pageURL: "%Page URL%",
                    referrer: "%Referrer%",
                    currencyCode: "EUR",
                    trackingServer: "ilotteryireland.d3.sc.omtrdc.net",
                    trackInlineStats: !0,
                    trackDownloadLinks: !0,
                    trackExternalLinks: !0,
                    linkLeaveQueryString: !0,
                    linkDownloadFileTypes: ["doc", "docx", "eps", "jpg", "png", "svg", "xls", "ppt", "pptx", "pdf", "xlsx", "tab", "csv", "zip", "txt", "vsd", "vxd", "xml", "js", "css", "rar", "exe", "wma", "mov", "avi", "wmv", "mp3", "wav", "m4v"]
                }
            },
            modules: {
                "adobe-analytics/src/lib/sharedModules/getTracker.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o, a = n("@adobe/reactor-cookie"), i = n("@adobe/reactor-promise"), s = n("@adobe/reactor-window"), c = n("../helpers/settingsHelper"), u = n("../helpers/augmenters"), l = n("../helpers/applyTrackerVariables"), d = n("../helpers/loadLibrary"), f = n("../helpers/generateVersion")(r.buildInfo.turbineBuildDate), p = "beforeSettings", g = r.getSharedModule("adobe-mcid", "mcid-instance"), m = function(e) {
                            return !e || "true" === a.get(e)
                        }, h = function(e) {
                            return i.all(u.map((function(t) {
                                var n;
                                try {
                                    n = t(e)
                                } catch (e) {
                                    setTimeout((function() {
                                        throw e
                                    }
                                    ))
                                }
                                return i.resolve(n)
                            }
                            ))).then((function() {
                                return e
                            }
                            ))
                        }, b = function(e) {
                            return g && (r.logger.info("Setting MCID instance on the tracker."),
                            e.visitor = g),
                            e
                        }, v = function(e) {
                            return r.logger.info('Setting version on tracker: "' + f + '".'),
                            void 0 !== e.tagContainerMarker ? e.tagContainerMarker = f : "string" == typeof e.version && e.version.substring(e.version.length - 5) !== "-" + f && (e.version += "-" + f),
                            e
                        }, y = function(e, t, n) {
                            return t.loadPhase === p && t.source && (r.logger.info("Calling custom script before settings."),
                            t.source.call(s, n)),
                            l(n, e || {}),
                            t.loadPhase !== p && t.source && (r.logger.info("Calling custom script after settings."),
                            t.source.call(s, n)),
                            n
                        }, _ = function(e, t) {
                            return c.isAudienceManagementEnabled(e) && (t.loadModule("AudienceManagement"),
                            r.logger.info("Initializing AudienceManagement module"),
                            t.AudienceManagement.setup(e.moduleProperties.audienceManager.config)),
                            t
                        }, w = (o = r.getExtensionSettings(),
                        m(o.trackingCookieName) ? d(o).then(h).then(b).then(v).then(y.bind(null, o.trackerProperties, o.customSetup || {})).then(_.bind(null, o)) : i.reject("EU compliance was not acknowledged by the user."));
                        e.exports = function() {
                            return w
                        }
                    },
                    name: "get-tracker",
                    shared: !0
                },
                "adobe-analytics/src/lib/sharedModules/augmentTracker.js": {
                    name: "augment-tracker",
                    shared: !0,
                    script: function(e, t, n) {
                        "use strict";
                        var r = n("../helpers/augmenters");
                        e.exports = function(e) {
                            r.push(e)
                        }
                    }
                },
                "adobe-analytics/src/lib/helpers/settingsHelper.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-window")
                          , a = {
                            LIB_TYPES: {
                                MANAGED: "managed",
                                PREINSTALLED: "preinstalled",
                                REMOTE: "remote",
                                CUSTOM: "custom"
                            },
                            MANAGED_LIB_PATHS: {
                                APP_MEASUREMENT: "AppMeasurement.js",
                                ACTIVITY_MAP: "AppMeasurement_Module_ActivityMap.js",
                                AUDIENCE_MANAGEMENT: "AppMeasurement_Module_AudienceManagement.js"
                            },
                            getReportSuites: function(e) {
                                var t = e.production;
                                return e[r.buildInfo.environment] && (t = e[r.buildInfo.environment]),
                                t.join(",")
                            },
                            isActivityMapEnabled: function(e) {
                                return !(e.libraryCode && !e.libraryCode.useActivityMap && !1 === e.libraryCode.useActivityMap)
                            },
                            isAudienceManagementEnabled: function(e) {
                                var t = !1;
                                return e && e.moduleProperties && e.moduleProperties.audienceManager && e.moduleProperties.audienceManager.config && o && o._satellite && o._satellite.company && o._satellite.company.orgId && (t = !0),
                                t
                            }
                        };
                        e.exports = a
                    }
                },
                "adobe-analytics/src/lib/helpers/augmenters.js": {
                    script: function(e) {
                        "use strict";
                        e.exports = []
                    }
                },
                "adobe-analytics/src/lib/helpers/applyTrackerVariables.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-query-string")
                          , a = n("@adobe/reactor-window")
                          , i = /eVar([0-9]+)/
                          , s = /prop([0-9]+)/
                          , c = new RegExp("^(eVar[0-9]+)|(prop[0-9]+)|(hier[0-9]+)|campaign|purchaseID|channel|server|state|zip|pageType$")
                          , u = function(e, t, n) {
                            return n.indexOf(e) === t
                        }
                          , l = function(e, t, n) {
                            var r = Object.keys(t).filter(c.test.bind(c));
                            return n && r.push("events"),
                            (r = r.concat((e.linkTrackVars || "").split(","))).filter((function(e, t) {
                                return "None" !== e && e && u(e, t, r)
                            }
                            )).join(",")
                        }
                          , d = function(e, t) {
                            var n = t.map((function(e) {
                                return e.name
                            }
                            ));
                            return (n = n.concat((e.linkTrackEvents || "").split(","))).filter((function(e, t) {
                                return "None" !== e && u(e, t, n)
                            }
                            )).join(",")
                        }
                          , f = function(e, t, n) {
                            e[t] = n[t].join(",")
                        }
                          , p = function(e, t, n) {
                            var r = n.dynamicVariablePrefix || "D=";
                            n[t].forEach((function(t) {
                                var n;
                                if ("value" === t.type)
                                    n = t.value;
                                else {
                                    var o = i.exec(t.value);
                                    if (o)
                                        n = r + "v" + o[1];
                                    else {
                                        var a = s.exec(t.value);
                                        a && (n = r + "c" + a[1])
                                    }
                                }
                                e[t.name] = n
                            }
                            ))
                        }
                          , g = {
                            linkDownloadFileTypes: f,
                            linkExternalFilters: f,
                            linkInternalFilters: f,
                            hierarchies: function(e, t, n) {
                                n[t].forEach((function(t) {
                                    e[t.name] = t.sections.join(t.delimiter)
                                }
                                ))
                            },
                            props: p,
                            eVars: p,
                            campaign: function(e, t, n) {
                                if ("queryParam" === n[t].type) {
                                    var r = o.parse(a.location.search);
                                    e[t] = r[n[t].value]
                                } else
                                    e[t] = n[t].value
                            },
                            events: function(e, t, n) {
                                var r = n[t].map((function(e) {
                                    var t = e.name;
                                    return e.id && (t = [t, e.id].join(":")),
                                    e.value && (t = [t, e.value].join("=")),
                                    t
                                }
                                ));
                                e[t] = r.join(",")
                            }
                        };
                        e.exports = function(e, t) {
                            var n = {};
                            t = t || {},
                            Object.keys(t).forEach((function(e) {
                                var r = g[e]
                                  , o = t[e];
                                r ? r(n, e, t) : n[e] = o
                            }
                            )),
                            n.events && e.events && e.events.length > 0 && (n.events = e.events + "," + n.events);
                            var o = t && t.events && t.events.length > 0
                              , a = l(e, n, o);
                            a && (n.linkTrackVars = a);
                            var i = d(e, t.events || []);
                            i && (n.linkTrackEvents = i),
                            r.logger.info('Applying the following properties on tracker: "' + JSON.stringify(n) + '".'),
                            Object.keys(n).forEach((function(t) {
                                e[t] = n[t]
                            }
                            ))
                        }
                    }
                },
                "adobe-analytics/src/lib/helpers/loadLibrary.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-load-script")
                          , a = n("@adobe/reactor-window")
                          , i = n("@adobe/reactor-promise")
                          , s = n("./settingsHelper")
                          , c = n("./pollHelper")
                          , u = function(e, t) {
                            if (!a.s_gi)
                                throw new Error("Unable to create AppMeasurement tracker, `s_gi` function not found." + a.AppMeasurement);
                            r.logger.info('Creating AppMeasurement tracker with these report suites: "' + t + '"');
                            var n = a.s_gi(t);
                            return e.libraryCode.scopeTrackerGlobally && (r.logger.info("Setting the tracker as window.s"),
                            a.s = n),
                            n
                        }
                          , l = function(e) {
                            var t = [];
                            switch (e.libraryCode.type) {
                            case s.LIB_TYPES.MANAGED:
                                t.push(r.getHostedLibFileUrl(s.MANAGED_LIB_PATHS.APP_MEASUREMENT)),
                                s.isActivityMapEnabled(e) && t.push(r.getHostedLibFileUrl(s.MANAGED_LIB_PATHS.ACTIVITY_MAP));
                                break;
                            case s.LIB_TYPES.CUSTOM:
                                t.push(e.libraryCode.source);
                                break;
                            case s.LIB_TYPES.REMOTE:
                                t.push("https:" === a.location.protocol ? e.libraryCode.httpsUrl : e.libraryCode.httpUrl)
                            }
                            if (s.isAudienceManagementEnabled(e)) {
                                var n = {
                                    namespace: a._satellite.company.orgId
                                };
                                e.moduleProperties.audienceManager.config.visitorService = n,
                                t.push(r.getHostedLibFileUrl(s.MANAGED_LIB_PATHS.AUDIENCE_MANAGEMENT))
                            }
                            return t
                        }
                          , d = function(e) {
                            return i.all(l(e).map((function(e) {
                                return r.logger.info("Loading script: " + e),
                                o(e)
                            }
                            )))
                        }
                          , f = function(e, t) {
                            if (e.libraryCode.accounts)
                                if (t.sa) {
                                    var n = s.getReportSuites(e.libraryCode.accounts);
                                    r.logger.info('Setting the following report suites on the tracker: "' + n + '"'),
                                    t.sa(n)
                                } else
                                    r.logger.warn("Cannot set report suites on tracker. `sa` method not available.");
                            return t
                        }
                          , p = function(e) {
                            if (a[e])
                                return r.logger.info('Found tracker located at: "' + e + '".'),
                                a[e];
                            throw new Error('Cannot find the global variable name: "' + e + '".')
                        };
                        e.exports = function(e) {
                            var t = d(e);
                            switch (e.libraryCode.type) {
                            case s.LIB_TYPES.MANAGED:
                                var n = s.getReportSuites(e.libraryCode.accounts);
                                return t.then(u.bind(null, e, n));
                            case s.LIB_TYPES.PREINSTALLED:
                                return t.then(c.poll.bind(null, a, e.libraryCode.trackerVariableName)).then(f.bind(null, e));
                            case s.LIB_TYPES.CUSTOM:
                            case s.LIB_TYPES.REMOTE:
                                return t.then(p.bind(null, e.libraryCode.trackerVariableName)).then(f.bind(null, e));
                            default:
                                throw new Error("Cannot load library. Type not supported.")
                            }
                        }
                    }
                },
                "adobe-analytics/src/lib/helpers/generateVersion.js": {
                    script: function(e) {
                        "use strict";
                        var t = 8
                          , n = function(e) {
                            return e.getUTCDate().toString(36)
                        }
                          , r = function(e) {
                            return e.substr(e.length - 1)
                        }
                          , o = function(e) {
                            return Math.floor(e.getUTCHours() / t)
                        }
                          , a = function(e) {
                            var t = (e.getUTCMonth() + 1 + 12 * o(e)).toString(36);
                            return r(t)
                        }
                          , i = function(e) {
                            return (e.getUTCFullYear() - 2010).toString(36)
                        };
                        e.exports = function(e) {
                            var t = new Date(e);
                            if (isNaN(t))
                                throw new Error("Invalid date provided");
                            return ("L" + i(t) + a(t) + n(t)).toUpperCase()
                        }
                    }
                },
                "adobe-analytics/src/lib/helpers/pollHelper.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        var o = n("@adobe/reactor-promise")
                          , a = 40
                          , i = 250
                          , s = function(e, t, n) {
                            r.logger.info('Found property located at: "' + t + '"].'),
                            e(n)
                        }
                          , c = function(e, t) {
                            return new o((function(n, r) {
                                if (e[t])
                                    return s(n, t, e[t]);
                                var o = 1
                                  , c = setInterval((function() {
                                    e[t] && (s(n, t, e[t]),
                                    clearInterval(c)),
                                    o >= a && (clearInterval(c),
                                    r(new Error('Bailing out. Cannot find the variable name: "' + t + '"].'))),
                                    o++
                                }
                                ), i)
                            }
                            ))
                        };
                        e.exports = {
                            poll: function(e, t) {
                                return r.logger.info('Waiting for the property to become accessible at: "' + t + '"].'),
                                c(e, t)
                            }
                        }
                    }
                }
            }
        },
        "bing-ads-extension": {
            displayName: "Bing Ads UET Tag",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EP05eac6e292f1486a812623da300a51b4/",
            settings: {
                tagid: "5528152"
            },
            modules: {
                "bing-ads-extension/src/lib/actions/baseTag.js": {
                    name: "basetag",
                    displayName: "Base Tag",
                    script: function(e, t, n, r) {
                        "use strict";
                        e.exports = function() {
                            n("../helpers/getBatJsBase")().then((function() {
                                r.logger.log("Base code loaded and a page load event is sent.")
                            }
                            ))
                        }
                    }
                },
                "bing-ads-extension/src/lib/helpers/getBatJsBase.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        e.exports = function() {
                            var e = n("@adobe/reactor-window")
                              , t = n("@adobe/reactor-load-script")
                              , o = r.getExtensionSettings()
                              , a = o.qname || "uetq";
                            return e[a] = e[a] || [],
                            t("//bat.bing.com/bat.js").then((function() {
                                var t = {
                                    ti: o.tagid,
                                    navTimingApi: o.navTimingApi,
                                    storeConvTrackCookies: o.storeConvTrackCookies,
                                    tm: "al001"
                                };
                                t.q = e[a],
                                e[a] = new UET(t),
                                e[a].push("pageLoad"),
                                r.logger.log("BingAds Base Code successfully loaded.")
                            }
                            )).catch((function() {
                                r.logger.error("BingAds Base Code could not be loaded.")
                            }
                            ))
                        }
                    }
                }
            }
        },
        "onetrust-consent-management-for-cookies": {
            displayName: "OneTrust Consent Management for Cookies",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EP56475044e122457889b23eae24de6c35/",
            modules: {
                "onetrust-consent-management-for-cookies/src/lib/conditions/configuration.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        function o() {
                            if ("undefined" != typeof OnetrustActiveGroups && "undefined" != typeof adobe) {
                                var e = r.getExtensionSettings().otConfiguration
                                  , t = Object.keys(e).length / 2;
                                void 0 !== adobe.optIn && (a(e, t),
                                addEventListener("consent.onetrust", (function() {
                                    a(e, t)
                                }
                                )))
                            }
                        }
                        function a(e, t) {
                            adobe.optIn.denyAll();
                            for (var n = 0; n < t; n++) {
                                var r = e["adobeCat_" + n]
                                  , o = e["variableId_" + n];
                                "" != o.trim() && -1 !== OptanonActiveGroups.indexOf(o) && adobe.optIn.approve(adobe.OptInCategories[r], !1)
                            }
                        }
                        window.addEventListener("load", o, !1)
                    }
                }
            }
        },
        "acronym-gtag.js": {
            displayName: "Google Global Site Tag (gtag)",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EP4088787701664ce4bfc67739775f5c33/",
            settings: {
                accounts: {
                    1720447295296: {
                        id: "1720447295296",
                        name: "GA4",
                        type: "ga",
                        options: [],
                        accounts: {
                            staging: "G-7DR17JMETV",
                            production: "G-ZGE8FQ4TWJ",
                            development: "G-7DR17JMETV"
                        },
                        settings: {
                            linker: {
                                domains: "",
                                decorate_forms: !1,
                                accept_incoming: !0
                            },
                            user_id: "",
                            cookie_name: "",
                            optimize_id: "",
                            anonymize_ip: !1,
                            cookie_domain: "",
                            cookie_expires: ""
                        },
                        custom_map: []
                    }
                },
                configCode: function() {},
                functionName: "",
                dataLayerName: "",
                preConfigCode: function(e) {
                    e("consent", "default", {
                        ad_storage: "denied",
                        ad_user_data: "denied",
                        ad_personalization: "denied",
                        analytics_storage: "denied"
                    })
                },
                displayFeatures: !0
            },
            modules: {
                "acronym-gtag.js/src/lib/helpers/loadGtag.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        e.exports = function() {
                            var e = r.getExtensionSettings()
                              , t = e.dataLayerName || "dataLayer"
                              , o = e.functionName || "gtag"
                              , a = n("@adobe/reactor-window")
                              , i = n("@adobe/reactor-load-script")
                              , s = n("../helpers/getAccountId")
                              , c = n("../helpers/castOptionTypes")
                              , u = "";
                            if (a[o] || (a[t] = a[t] || [],
                            a[o] = function() {
                                Array.isArray(a[t]) ? a[t].push(arguments) : r.logger.error("ACRGTAG-104: Data layer variable '" + t + "' malformed", a[t])
                            }
                            ,
                            a[o]("js", new Date)),
                            !_satellite.getVar("__acronym_gtag_loaded")) {
                                if (_satellite.setVar("__acronym_gtag_loaded", !0),
                                "function" == typeof e.preConfigCode)
                                    try {
                                        e.preConfigCode(a[o], a[t])
                                    } catch (e) {
                                        r.logger.error("ACRGTAG-101: Custom pre-account config code error:", e)
                                    }
                                if (("string" == typeof e.displayFeatures && "true" !== e.displayFeatures || "string" != typeof e.displayFeatures && !Boolean(e.displayFeatures)) && (a[o]("set", {
                                    allow_ad_personalization_signals: !1
                                }),
                                r.logger.log("Display features are disabled")),
                                "object" == typeof e.accounts && null !== e.accounts && Object.keys(e.accounts).length > 0) {
                                    for (var l in e.accounts)
                                        if (e.accounts.hasOwnProperty(l)) {
                                            var d = e.accounts[l]
                                              , f = d.settings || {};
                                            u = s(d),
                                            "object" == typeof d.custom_map && d.custom_map.length && (f.custom_map = f.custom_map || {},
                                            d.custom_map.forEach((function(e) {
                                                f.custom_map[e[0]] = e[1]
                                            }
                                            ))),
                                            (d.options || []).forEach((function(e) {
                                                f[e[0]] = e[1]
                                            }
                                            )),
                                            f.send_page_view = !1,
                                            f = c(f),
                                            a[o]("config", u, f),
                                            r.logger.log("account " + u + " was loaded with the options:", JSON.stringify(f))
                                        }
                                    if ("function" == typeof e.configCode)
                                        try {
                                            e.configCode(a[o], a[t])
                                        } catch (e) {
                                            r.logger.error("ACRGTAG-101: Custom post-account config code error:", e)
                                        }
                                } else
                                    r.logger.warn("ACRGTAG-102: No accounts configured");
                                var p = "gtag.js library";
                                r.logger.log("loading " + p),
                                i("https://www.googletagmanager.com/gtag/js?id=" + u + "&l=" + t).then((function() {
                                    r.logger.log(p + " successfully loaded")
                                }
                                ), (function() {
                                    r.logger.error("ACRGTAG-100: " + p + " could not be loaded")
                                }
                                ))
                            }
                            return a[o]
                        }
                    },
                    name: "get-gtag",
                    shared: !0
                },
                "acronym-gtag.js/src/lib/helpers/getAccountId.js": {
                    script: function(e, t, n, r) {
                        "use strict";
                        e.exports = function(e, t) {
                            return t || (t = r.environment.stage),
                            "string" == typeof e.accounts[t] && "" !== e.accounts[t] ? e.accounts[t] : e.accounts.production
                        }
                    }
                },
                "acronym-gtag.js/src/lib/helpers/castOptionTypes.js": {
                    script: function(e) {
                        "use strict";
                        e.exports = function(e) {
                            var t = {
                                bool: function(e) {
                                    return "string" == typeof e ? "true" === e : Boolean(e)
                                },
                                int: function(e) {
                                    var t = parseInt(e);
                                    return isNaN(t) ? 0 : t
                                },
                                float: function(e) {
                                    var t = parseFloat(e);
                                    return isNaN(t) ? 0 : t
                                },
                                csv: function(e) {
                                    return "string" == typeof e ? "" === e ? void 0 : e.split(",") : e
                                },
                                custom_map: function(e) {
                                    var t = {};
                                    return "string" == typeof e ? e.split(",").forEach((function(e) {
                                        var n = e.split(":");
                                        2 === n.length && (t[n[0]] = n[1])
                                    }
                                    )) : "object" == typeof e && (t = e),
                                    t
                                }
                            }
                              , n = {
                                accept_incoming: t.bool,
                                allow_ad_personalization_signals: t.bool,
                                anonymize_ip: t.bool,
                                checkout_step: t.int,
                                cookie_expires: t.int,
                                custom_map: t.custom_map,
                                event_timeout: t.int,
                                fatal: t.bool,
                                levels: t.int,
                                link_attribution: t.bool,
                                linker: {
                                    domains: t.csv,
                                    accept_incoming: t.bool,
                                    decorate_forms: t.bool
                                },
                                non_interaction: t.bool,
                                value: t.float
                            };
                            return Object.keys(e).forEach((function(t) {
                                "function" == typeof n[t] ? e[t] = n[t](e[t]) : "object" == typeof n[t] && "object" == typeof e[t] && null !== e[t] && Object.keys(e[t]).forEach((function(r) {
                                    "function" == typeof n[t][r] && (e[t][r] = n[t][r](e[t][r]))
                                }
                                ))
                            }
                            )),
                            e
                        }
                    }
                }
            }
        },
        "facebook-pixel": {
            displayName: "Meta Pixel",
            hostedLibFilesBaseUrl: "https://assets.adobedtm.com/extensions/EP4c228566083d4dacba3e6a2893e0198a/",
            settings: {
                pixelId: "263928950672354"
            },
            modules: {
                "facebook-pixel/src/lib/actions/sendPageView.js": {
                    name: "send-page-view",
                    displayName: "Send Page View",
                    script: function(e, t, n) {
                        var r = n("../helpers/sendEvent");
                        e.exports = function(e) {
                            r("PageView", e)
                        }
                    }
                },
                "facebook-pixel/src/lib/helpers/sendEvent.js": {
                    script: function(e, t, n, r) {
                        e.exports = function(e, t) {
                            var o = n("../helpers/getFbQueue")
                              , a = {}
                              , i = r.getExtensionSettings()
                              , s = i && i.eventId;
                            t && t.event_id && (s = t.event_id,
                            delete t.event_id),
                            s && (a.eventID = s);
                            var c = JSON.stringify(a)
                              , u = t && JSON.stringify(t) || "";
                            o("track", e, t, a),
                            r.logger.log(`Queue command: fbq("track", "${e}"${u && "{}" !== u ? `, ${u}` : ""}${a && "{}" !== c ? `, ${c}` : ""}).`)
                        }
                    }
                },
                "facebook-pixel/src/lib/helpers/getFbQueue.js": {
                    script: function(e, t, n, r) {
                        var o, a = n("@adobe/reactor-window"), i = n("@adobe/reactor-load-script"), s = function() {
                            var e = function() {
                                e.callMethod ? e.callMethod.apply(e, arguments) : e.queue.push(arguments)
                            };
                            return e.push = e,
                            e.loaded = !0,
                            e.version = "2.0",
                            e.queue = [],
                            e
                        };
                        a.fbq || (o = s(),
                        a.fbq = o,
                        a._fbq || (a._fbq = o)),
                        i("https://connect.facebook.net/en_US/fbevents.js").then((function() {
                            r.logger.log("Meta Pixel Base Code was successfully loaded.")
                        }
                        ), (function() {
                            r.logger.error("Meta Pixel Base Code could not be loaded.")
                        }
                        )),
                        a.fbq("init", r.getExtensionSettings().pixelId, {}, {
                            agent: "adobe_launch"
                        }),
                        e.exports = a.fbq
                    }
                }
            }
        }
    },
    company: {
        orgId: "EBE940175A95520F0A495EC8@AdobeOrg",
        dynamicCdnEnabled: !1
    },
    property: {
        name: "Dev_IE",
        settings: {
            domains: ["lottery.ie"],
            undefinedVarsReturnEmpty: !0,
            ruleComponentSequencingEnabled: !1
        },
        id: "PR7253338c937b4b6d90ffcfaca3958539"
    },
    rules: [{
        id: "RL2faa8ed7a1f641419bcdadc7eb1449d6",
        name: "gTag",
        events: [{
            modulePath: "core/src/lib/events/domReady.js",
            settings: {},
            ruleOrder: 50
        }],
        conditions: [{
            modulePath: "core/src/lib/conditions/valueComparison.js",
            settings: {
                comparison: {
                    operator: "contains"
                },
                leftOperand: "%OnetrustActiveGroups%",
                rightOperand: ",5:1,"
            }
        }],
        actions: [{
            modulePath: "core/src/lib/actions/customCode.js",
            settings: {
                source: "https://assets.adobedtm.com/a73baa1ef69f/aace55ad043b/618da95aa1c3/RC258e2f4b5af743b3a7c75c1b77b89363-source.min.js",
                language: "javascript",
                isExternal: !0
            }
        }]
    }, {
        id: "RL6f91efd767ad40bdaf9c431d6d63223b",
        name: "OneTrust: Header",
        events: [{
            modulePath: "core/src/lib/events/domReady.js",
            settings: {},
            ruleOrder: 1
        }],
        conditions: [],
        actions: [{
            modulePath: "core/src/lib/actions/customCode.js",
            settings: {
                source: "https://assets.adobedtm.com/a73baa1ef69f/aace55ad043b/618da95aa1c3/RC42b4f688e2fb4437b50f384ad50c0e3b-source.min.js",
                language: "html",
                isExternal: !0
            }
        }]
    }, {
        id: "RL727615de45ee4682a86c07c957e98329",
        name: "Tag: FB - All Pages",
        events: [{
            modulePath: "core/src/lib/events/directCall.js",
            settings: {
                identifier: "dlready"
            },
            ruleOrder: 50
        }, {
            modulePath: "core/src/lib/events/dataElementChange.js",
            settings: {
                name: "OnetrustActiveGroups"
            },
            ruleOrder: 50
        }],
        conditions: [{
            modulePath: "core/src/lib/conditions/valueComparison.js",
            settings: {
                comparison: {
                    operator: "contains"
                },
                leftOperand: "%OnetrustActiveGroups%",
                rightOperand: ",4:1,"
            }
        }],
        actions: [{
            modulePath: "facebook-pixel/src/lib/actions/sendPageView.js",
            settings: {}
        }]
    }, {
        id: "RL91a8c485a6c24e86ae29ef1e7549a9c6",
        name: "Tag: Bing - All Pages",
        events: [{
            modulePath: "core/src/lib/events/directCall.js",
            settings: {
                identifier: "dlready"
            },
            ruleOrder: 50
        }],
        conditions: [{
            modulePath: "core/src/lib/conditions/valueComparison.js",
            settings: {
                comparison: {
                    operator: "contains"
                },
                leftOperand: "%OnetrustActiveGroups%",
                rightOperand: ",3:1,"
            }
        }],
        actions: [{
            modulePath: "bing-ads-extension/src/lib/actions/baseTag.js",
            settings: {}
        }]
    }]
};
var _satellite = function() {
    "use strict";
    function e(e) {
        if (null == e)
            throw new TypeError("Object.assign cannot be called with null or undefined");
        return Object(e)
    }
    function t() {
        try {
            if (!Object.assign)
                return !1;
            var e = new String("abc");
            if (e[5] = "de",
            "5" === Object.getOwnPropertyNames(e)[0])
                return !1;
            for (var t = {}, n = 0; n < 10; n++)
                t["_" + String.fromCharCode(n)] = n;
            if ("0123456789" !== Object.getOwnPropertyNames(t).map((function(e) {
                return t[e]
            }
            )).join(""))
                return !1;
            var r = {};
            return "abcdefghijklmnopqrst".split("").forEach((function(e) {
                r[e] = e
            }
            )),
            "abcdefghijklmnopqrst" === Object.keys(Object.assign({}, r)).join("")
        } catch (e) {
            return !1
        }
    }
    function n(e) {
        if (e.__esModule)
            return e;
        var t = Object.defineProperty({}, "__esModule", {
            value: !0
        });
        return Object.keys(e).forEach((function(n) {
            var r = Object.getOwnPropertyDescriptor(e, n);
            Object.defineProperty(t, n, r.get ? r : {
                enumerable: !0,
                get: function() {
                    return e[n]
                }
            })
        }
        )),
        t
    }
    function r(e) {
        var t = {
            exports: {}
        };
        return e(t, t.exports),
        t.exports
    }
    function o(e) {
        var t = this.constructor;
        return this.then((function(n) {
            return t.resolve(e()).then((function() {
                return n
            }
            ))
        }
        ), (function(n) {
            return t.resolve(e()).then((function() {
                return t.reject(n)
            }
            ))
        }
        ))
    }
    function a(e) {
        return Boolean(e && void 0 !== e.length)
    }
    function i() {}
    function s(e, t) {
        return function() {
            e.apply(t, arguments)
        }
    }
    function c(e) {
        if (!(this instanceof c))
            throw new TypeError("Promises must be constructed via new");
        if ("function" != typeof e)
            throw new TypeError("not a function");
        this._state = 0,
        this._handled = !1,
        this._value = void 0,
        this._deferreds = [],
        g(e, this)
    }
    function u(e, t) {
        for (; 3 === e._state; )
            e = e._value;
        0 !== e._state ? (e._handled = !0,
        c._immediateFn((function() {
            var n = 1 === e._state ? t.onFulfilled : t.onRejected;
            if (null !== n) {
                var r;
                try {
                    r = n(e._value)
                } catch (e) {
                    return void d(t.promise, e)
                }
                l(t.promise, r)
            } else
                (1 === e._state ? l : d)(t.promise, e._value)
        }
        ))) : e._deferreds.push(t)
    }
    function l(e, t) {
        try {
            if (t === e)
                throw new TypeError("A promise cannot be resolved with itself.");
            if (t && ("object" == typeof t || "function" == typeof t)) {
                var n = t.then;
                if (t instanceof c)
                    return e._state = 3,
                    e._value = t,
                    void f(e);
                if ("function" == typeof n)
                    return void g(s(n, t), e)
            }
            e._state = 1,
            e._value = t,
            f(e)
        } catch (t) {
            d(e, t)
        }
    }
    function d(e, t) {
        e._state = 2,
        e._value = t,
        f(e)
    }
    function f(e) {
        2 === e._state && 0 === e._deferreds.length && c._immediateFn((function() {
            e._handled || c._unhandledRejectionFn(e._value)
        }
        ));
        for (var t = 0, n = e._deferreds.length; t < n; t++)
            u(e, e._deferreds[t]);
        e._deferreds = null
    }
    function p(e, t, n) {
        this.onFulfilled = "function" == typeof e ? e : null,
        this.onRejected = "function" == typeof t ? t : null,
        this.promise = n
    }
    function g(e, t) {
        var n = !1;
        try {
            e((function(e) {
                n || (n = !0,
                l(t, e))
            }
            ), (function(e) {
                n || (n = !0,
                d(t, e))
            }
            ))
        } catch (e) {
            if (n)
                return;
            n = !0,
            d(t, e)
        }
    }
    function m(e) {
        return !0 === Fe(e) && "[object Object]" === Object.prototype.toString.call(e)
    }
    function h(e, t) {
        return Object.prototype.hasOwnProperty.call(e, t)
    }
    function b(e) {
        return "string" == typeof e && -1 !== e.indexOf("[") && -1 !== e.indexOf("]")
    }
    function v(e) {
        return e.substr(0, e.indexOf("["))
    }
    function y(e, t, n) {
        if (e.length && Ue(t)) {
            var r = e[0];
            if (1 !== e.length) {
                var o = e.slice(1);
                if (!b(r))
                    return y(o, t[r], n);
                var a = t[r = v(r)];
                Array.isArray(a) && a.forEach((function(e) {
                    return y(o, e, n)
                }
                ))
            } else
                t.hasOwnProperty(r) && "string" == typeof t[r] && (t[r] = n(t[r]))
        }
    }
    if (window.atob) {
        var _ = document
          , w = Object.getOwnPropertySymbols
          , E = Object.prototype.hasOwnProperty
          , j = Object.prototype.propertyIsEnumerable
          , T = t() ? Object.assign : function(t) {
            for (var n, r, o = e(t), a = 1; a < arguments.length; a++) {
                for (var i in n = Object(arguments[a]))
                    E.call(n, i) && (o[i] = n[i]);
                if (w) {
                    r = w(n);
                    for (var s = 0; s < r.length; s++)
                        j.call(n, r[s]) && (o[r[s]] = n[r[s]])
                }
            }
            return o
        }
          , P = T
          , C = window
          , S = function(e, t, n, r) {
            var o, a = Boolean(t && Array.isArray(n)), i = Boolean(a && e), s = document.createElement("a");
            if (a) {
                var c = function() {
                    var e = new Error("Unable to find the Library Embed Code for Dynamic Host Resolution.");
                    throw e.code = "dynamic_host_resolver_constructor_error",
                    e
                };
                if (e && (/^((https?:)?\/\/).+/.test(e) || c(),
                /^\/\/.+/.test(e) ? s.href = C.location.protocol + e : s.href = e),
                s.hostname || c(),
                -1 === n.indexOf(s.hostname)) {
                    var u = new Error("This library is not authorized for this domain. Please contact your CSM for more information.");
                    throw u.code = "dynamic_host_not_allowed",
                    u
                }
            }
            var l = function() {
                if (null != o)
                    return o;
                if (i) {
                    var e = s.host;
                    /:80$/.test(e) ? e = e.replace(":80", "") : /:80\/$/.test(e) ? e = e.replace(":80/", "") : /:443$/.test(e) ? e = e.replace(":443", "") : /:443\/$/.test(e) && (e = e.replace(":443/", "")),
                    o = s.protocol + "//" + e
                } else
                    o = "";
                return o
            }
              , d = function(e) {
                return i && "string" == typeof e ? [l(), "/" === e.charAt(0) ? e.slice(1) : e].join("/") : e
            }
              , f = {
                getTurbineHost: l,
                decorateWithDynamicHost: d,
                get isDynamicEnforced() {
                    return a
                }
            };
            return C && r.onDebugChanged((function(e) {
                e ? C.dynamicHostResolver = f : delete C.dynamicHostResolver
            }
            )),
            f
        }
          , x = function(e) {
            var t = [];
            return e.forEach((function(e) {
                e.events && e.events.forEach((function(n) {
                    t.push({
                        rule: e,
                        event: n
                    })
                }
                ))
            }
            )),
            t.sort((function(e, t) {
                return e.event.ruleOrder - t.event.ruleOrder
            }
            ))
        }
          , k = "debug"
          , A = function(e, t) {
            var n = function() {
                return "true" === e.getItem(k)
            }
              , r = function(t) {
                e.setItem(k, t)
            }
              , o = []
              , a = function(e) {
                o.push(e)
            };
            return t.outputEnabled = n(),
            {
                onDebugChanged: a,
                getDebugEnabled: n,
                setDebugEnabled: function(e) {
                    n() !== e && (r(e),
                    t.outputEnabled = e,
                    o.forEach((function(t) {
                        t(e)
                    }
                    )))
                }
            }
        }
          , O = "Module did not export a function."
          , V = function(e, t, n) {
            return function(r, o, a) {
                a = a || [];
                var i = e.getModuleExports(r.modulePath);
                if ("function" != typeof i)
                    throw new Error(O);
                var s = e.getModuleDefinition(r.modulePath)
                  , c = r.settings || {};
                !r.hasTransformedFilePaths && s.filePaths && (n(c, s.filePaths, r.modulePath),
                r.hasTransformedFilePaths = !0);
                var u = t(c, o);
                return i.bind(null, u).apply(null, a)
            }
        }
          , D = function(e) {
            return "string" == typeof e ? e.replace(/\s+/g, " ").trim() : e
        }
          , I = {
            LOG: "log",
            INFO: "info",
            DEBUG: "debug",
            WARN: "warn",
            ERROR: "error"
        }
          , N = "\ud83d\ude80"
          , M = 10 === parseInt((/msie (\d+)/.exec(navigator.userAgent.toLowerCase()) || [])[1]) ? "[Launch]" : N
          , R = !1
          , L = function(e) {
            if (R && window.console) {
                var t = Array.prototype.slice.call(arguments, 1);
                t.unshift(M),
                e !== I.DEBUG || window.console[e] || (e = I.INFO),
                window.console[e].apply(window.console, t)
            }
        }
          , G = L.bind(null, I.LOG)
          , F = L.bind(null, I.INFO)
          , U = L.bind(null, I.DEBUG)
          , B = L.bind(null, I.WARN)
          , q = L.bind(null, I.ERROR)
          , W = function() {
            var e = R;
            R = !0,
            L.apply(null, Array.prototype.concat(I.WARN, Array.prototype.slice.call(arguments))),
            e || (R = !1)
        }
          , H = {
            log: G,
            info: F,
            debug: U,
            warn: B,
            error: q,
            deprecation: W,
            get outputEnabled() {
                return R
            },
            set outputEnabled(e) {
                R = e
            },
            createPrefixedLogger: function(e) {
                var t = "[" + e + "]";
                return {
                    log: G.bind(null, t),
                    info: F.bind(null, t),
                    debug: U.bind(null, t),
                    warn: B.bind(null, t),
                    error: q.bind(null, t)
                }
            }
        }
          , $ = "com.adobe.reactor."
          , J = function(e, t) {
            var n = $ + (t || "");
            return {
                getItem: function(t) {
                    try {
                        return C[e].getItem(n + t)
                    } catch (e) {
                        return null
                    }
                },
                setItem: function(t, r) {
                    try {
                        return C[e].setItem(n + t, r),
                        !0
                    } catch (e) {
                        return !1
                    }
                }
            }
        }
          , Q = "dataElements."
          , z = J("sessionStorage", Q)
          , Y = J("localStorage", Q)
          , Z = {
            PAGEVIEW: "pageview",
            SESSION: "session",
            VISITOR: "visitor"
        }
          , K = {}
          , X = function(e) {
            var t;
            try {
                t = JSON.stringify(e)
            } catch (e) {}
            return t
        }
          , ee = {
            setValue: function(e, t, n) {
                var r;
                switch (t) {
                case Z.PAGEVIEW:
                    return void (K[e] = n);
                case Z.SESSION:
                    return void ((r = X(n)) && z.setItem(e, r));
                case Z.VISITOR:
                    return void ((r = X(n)) && Y.setItem(e, r))
                }
            },
            getValue: function(e, t) {
                var n;
                switch (t) {
                case Z.PAGEVIEW:
                    return K.hasOwnProperty(e) ? K[e] : null;
                case Z.SESSION:
                    return null === (n = z.getItem(e)) ? n : JSON.parse(n);
                case Z.VISITOR:
                    return null === (n = Y.getItem(e)) ? n : JSON.parse(n)
                }
            }
        }
          , te = function(e, t, n, r) {
            return "Failed to execute data element module " + e.modulePath + " for data element " + t + ". " + n + (r ? "\n" + r : "")
        }
          , ne = function(e, t, n, r, o) {
            return function(a, i) {
                var s = t(a);
                if (!s)
                    return r ? "" : void 0;
                var c, u, l = s.storageDuration;
                try {
                    c = e.getModuleExports(s.modulePath),
                    u = e.getModuleDefinition(s.modulePath)
                } catch (e) {
                    return void H.error(te(s, a, e.message, e.stack))
                }
                if ("function" == typeof c) {
                    var d, f = s.settings || {};
                    !s.hasTransformedFilePaths && u.filePaths && (o(f, u.filePaths, s.modulePath),
                    s.hasTransformedFilePaths = !0);
                    try {
                        d = c(n(f, i), i)
                    } catch (e) {
                        return void H.error(te(s, a, e.message, e.stack))
                    }
                    return l && (null != d ? ee.setValue(a, l, d) : d = ee.getValue(a, l)),
                    null == d && null != s.defaultValue && (d = s.defaultValue),
                    "string" == typeof d && (s.cleanText && (d = D(d)),
                    s.forceLowerCase && (d = d.toLowerCase())),
                    d
                }
                H.error(te(s, a, "Module did not export a function."))
            }
        }
          , re = {
            text: function(e) {
                return e.textContent
            },
            cleanText: function(e) {
                return D(e.textContent)
            }
        }
          , oe = function(e, t, n) {
            for (var r, o = e, a = 0, i = t.length; a < i; a++) {
                if (null == o)
                    return;
                var s = t[a];
                if (n && "@" === s.charAt(0)) {
                    var c = s.slice(1);
                    o = re[c](o)
                } else if (o.getAttribute && (r = s.match(/^getAttribute\((.+)\)$/))) {
                    var u = r[1];
                    o = o.getAttribute(u)
                } else
                    o = o[s]
            }
            return o
        }
          , ae = function(e, t, n) {
            return function(r, o) {
                var a;
                if (t(r))
                    a = n(r, o);
                else {
                    var i = r.split(".")
                      , s = i.shift();
                    "this" === s ? o && (a = oe(o.element, i, !0)) : "event" === s ? o && (a = oe(o, i)) : "target" === s ? o && (a = oe(o.target, i)) : a = oe(e[s], i)
                }
                return a
            }
        }
          , ie = function(e, t) {
            return function(n) {
                var r = n.split(".")[0];
                return Boolean(t(n) || "this" === r || "event" === r || "target" === r || e.hasOwnProperty(r))
            }
        }
          , se = function(e, t, n) {
            var r = {
                exports: {}
            };
            return e.call(r.exports, r, r.exports, t, n),
            r.exports
        }
          , ce = function() {
            var e = {}
              , t = function(t) {
                var n = e[t];
                if (!n)
                    throw new Error("Module " + t + " not found.");
                return n
            }
              , n = function() {
                Object.keys(e).forEach((function(e) {
                    try {
                        r(e)
                    } catch (n) {
                        var t = "Error initializing module " + e + ". " + n.message + (n.stack ? "\n" + n.stack : "");
                        H.error(t)
                    }
                }
                ))
            }
              , r = function(e) {
                var n = t(e);
                return n.hasOwnProperty("exports") || (n.exports = se(n.definition.script, n.require, n.turbine)),
                n.exports
            };
            return {
                registerModule: function(t, n, r, o, a) {
                    var i = {
                        definition: n,
                        extensionName: r,
                        require: o,
                        turbine: a
                    };
                    i.require = o,
                    e[t] = i
                },
                hydrateCache: n,
                getModuleExports: r,
                getModuleDefinition: function(e) {
                    return t(e).definition
                },
                getModuleExtensionName: function(e) {
                    return t(e).extensionName
                }
            }
        }
          , ue = !1
          , le = function(e) {
            return function(t, n) {
                var r = e._monitors;
                r && (ue || (H.warn("The _satellite._monitors API may change at any time and should only be used for debugging."),
                ue = !0),
                r.forEach((function(e) {
                    e[t] && e[t](n)
                }
                )))
            }
        }
          , de = function(e, t, n) {
            var r, o, a, i, s = [], c = function(r, o, a) {
                if (!e(o))
                    return r;
                s.push(o);
                var i = t(o, a);
                return s.pop(),
                null == i && n ? "" : i
            };
            return r = function(e, t) {
                var n = /^%([^%]+)%$/.exec(e);
                return n ? c(e, n[1], t) : e.replace(/%(.+?)%/g, (function(e, n) {
                    return c(e, n, t)
                }
                ))
            }
            ,
            o = function(e, t) {
                for (var n = {}, r = Object.keys(e), o = 0; o < r.length; o++) {
                    var a = r[o]
                      , s = e[a];
                    n[a] = i(s, t)
                }
                return n
            }
            ,
            a = function(e, t) {
                for (var n = [], r = 0, o = e.length; r < o; r++)
                    n.push(i(e[r], t));
                return n
            }
            ,
            i = function(e, t) {
                return "string" == typeof e ? r(e, t) : Array.isArray(e) ? a(e, t) : "object" == typeof e && null !== e ? o(e, t) : e
            }
            ,
            function(e, t) {
                return s.length > 10 ? (H.error("Data element circular reference detected: " + s.join(" -> ")),
                e) : i(e, t)
            }
        }
          , fe = function(e) {
            return function() {
                if ("string" == typeof arguments[0])
                    e[arguments[0]] = arguments[1];
                else if (arguments[0]) {
                    var t = arguments[0];
                    for (var n in t)
                        e[n] = t[n]
                }
            }
        }
          , pe = "undefined" != typeof globalThis ? globalThis : "undefined" != typeof window ? window : "undefined" != typeof global ? global : "undefined" != typeof self ? self : {}
          , ge = setTimeout;
        c.prototype.catch = function(e) {
            return this.then(null, e)
        }
        ,
        c.prototype.then = function(e, t) {
            var n = new this.constructor(i);
            return u(this, new p(e,t,n)),
            n
        }
        ,
        c.prototype.finally = o,
        c.all = function(e) {
            return new c((function(t, n) {
                function r(e, a) {
                    try {
                        if (a && ("object" == typeof a || "function" == typeof a)) {
                            var s = a.then;
                            if ("function" == typeof s)
                                return void s.call(a, (function(t) {
                                    r(e, t)
                                }
                                ), n)
                        }
                        o[e] = a,
                        0 == --i && t(o)
                    } catch (e) {
                        n(e)
                    }
                }
                if (!a(e))
                    return n(new TypeError("Promise.all accepts an array"));
                var o = Array.prototype.slice.call(e);
                if (0 === o.length)
                    return t([]);
                for (var i = o.length, s = 0; s < o.length; s++)
                    r(s, o[s])
            }
            ))
        }
        ,
        c.resolve = function(e) {
            return e && "object" == typeof e && e.constructor === c ? e : new c((function(t) {
                t(e)
            }
            ))
        }
        ,
        c.reject = function(e) {
            return new c((function(t, n) {
                n(e)
            }
            ))
        }
        ,
        c.race = function(e) {
            return new c((function(t, n) {
                if (!a(e))
                    return n(new TypeError("Promise.race accepts an array"));
                for (var r = 0, o = e.length; r < o; r++)
                    c.resolve(e[r]).then(t, n)
            }
            ))
        }
        ,
        c._immediateFn = "function" == typeof setImmediate && function(e) {
            setImmediate(e)
        }
        || function(e) {
            ge(e, 0)
        }
        ,
        c._unhandledRejectionFn = function(e) {
            "undefined" != typeof console && console && console.warn("Possible Unhandled Promise Rejection:", e)
        }
        ;
        var me = n(Object.freeze({
            __proto__: null,
            default: c
        }))
          , he = "undefined" != typeof window && window.Promise || void 0 !== pe && pe.Promise || me.default || me
          , be = function(e, t, n) {
            return function(r, o, a, i) {
                return i.then((function() {
                    var i, s = r.delayNext;
                    return new he((function(t, n) {
                        var o = e(r, a, [a]);
                        if (!s)
                            return t();
                        var c = r.timeout
                          , u = new he((function(e, t) {
                            i = setTimeout((function() {
                                t(new Error("A timeout occurred because the action took longer than " + c / 1e3 + " seconds to complete. "))
                            }
                            ), c)
                        }
                        ));
                        he.race([o, u]).then(t, n)
                    }
                    )).catch((function(e) {
                        return clearTimeout(i),
                        e = t(e),
                        n(r, o, e),
                        he.reject(e)
                    }
                    )).then((function() {
                        clearTimeout(i)
                    }
                    ))
                }
                ))
            }
        }
          , ve = function(e, t, n, r, o) {
            return function(a, i, s, c) {
                return c.then((function() {
                    var c;
                    return new he((function(t, n) {
                        var r = e(a, s, [s])
                          , o = a.timeout
                          , i = new he((function(e, t) {
                            c = setTimeout((function() {
                                t(new Error("A timeout occurred because the condition took longer than " + o / 1e3 + " seconds to complete. "))
                            }
                            ), o)
                        }
                        ));
                        he.race([r, i]).then(t, n)
                    }
                    )).catch((function(e) {
                        return clearTimeout(c),
                        e = t(e),
                        r(a, i, e),
                        he.reject(e)
                    }
                    )).then((function(e) {
                        if (clearTimeout(c),
                        !n(a, e))
                            return o(a, i),
                            he.reject()
                    }
                    ))
                }
                ))
            }
        }
          , ye = he.resolve()
          , _e = function(e, t, n) {
            return function(r, o) {
                return r.conditions && r.conditions.forEach((function(t) {
                    ye = e(t, r, o, ye)
                }
                )),
                r.actions && r.actions.forEach((function(e) {
                    ye = t(e, r, o, ye)
                }
                )),
                ye = (ye = ye.then((function() {
                    n(r)
                }
                ))).catch((function() {}
                ))
            }
        }
          , we = function(e) {
            return Boolean(e && "object" == typeof e && "function" == typeof e.then)
        }
          , Ee = function(e, t, n, r) {
            return function(o, a) {
                var i;
                if (o.conditions)
                    for (var s = 0; s < o.conditions.length; s++) {
                        i = o.conditions[s];
                        try {
                            var c = e(i, a, [a]);
                            if (we(c))
                                throw new Error("Rule component sequencing must be enabled on the property for this condition to function properly.");
                            if (!t(i, c))
                                return n(i, o),
                                !1
                        } catch (e) {
                            return r(i, o, e),
                            !1
                        }
                    }
                return !0
            }
        }
          , je = function(e, t) {
            return function(n, r) {
                e(n, r) && t(n, r)
            }
        }
          , Te = function(e) {
            return function(t) {
                var n = e.getModuleDefinition(t.modulePath);
                return n && n.displayName || t.modulePath
            }
        }
          , Pe = function(e) {
            return function(t) {
                var n = t.rule
                  , r = t.event
                  , o = e.getModuleDefinition(r.modulePath).name;
                return {
                    $type: e.getModuleExtensionName(r.modulePath) + "." + o,
                    $rule: {
                        id: n.id,
                        name: n.name
                    }
                }
            }
        }
          , Ce = function(e, t, n, r, o, a) {
            return function(i, s) {
                var c = s.rule
                  , u = s.event;
                u.settings = u.settings || {};
                try {
                    var l = o(s);
                    t(u, null, [function(t) {
                        var r = n(l, t);
                        i((function() {
                            e(r, c)
                        }
                        ))
                    }
                    ])
                } catch (e) {
                    a.error(r(u, c, e))
                }
            }
        }
          , Se = function(e, t, n, r) {
            return function(o, a, i) {
                var s = t(o);
                n.error(e(s, a.name, i)),
                r("ruleActionFailed", {
                    rule: a,
                    action: o
                })
            }
        }
          , xe = function(e, t, n, r) {
            return function(o, a, i) {
                var s = t(o);
                n.error(e(s, a.name, i)),
                r("ruleConditionFailed", {
                    rule: a,
                    condition: o
                })
            }
        }
          , ke = function(e, t, n) {
            return function(r, o) {
                var a = e(r);
                t.log('Condition "' + a + '" for rule "' + o.name + '" was not met.'),
                n("ruleConditionFailed", {
                    rule: o,
                    condition: r
                })
            }
        }
          , Ae = function(e, t) {
            return function(n) {
                e.log('Rule "' + n.name + '" fired.'),
                t("ruleCompleted", {
                    rule: n
                })
            }
        }
          , Oe = function(e, t, n) {
            return function(r, o) {
                var a;
                if (r.actions)
                    for (var i = 0; i < r.actions.length; i++) {
                        a = r.actions[i];
                        try {
                            e(a, o, [o])
                        } catch (e) {
                            return void t(a, r, e)
                        }
                    }
                n(r)
            }
        }
          , Ve = function(e, t, n, r) {
            return function(o, a) {
                r("ruleTriggered", {
                    rule: a
                }),
                e ? n(a, o) : t(a, o)
            }
        }
          , De = function(e, t, n) {
            return 'Failed to execute "' + e + '" for "' + t + '" rule. ' + n.message + (n.stack ? "\n" + n.stack : "")
        }
          , Ie = function(e, t) {
            return t && !e.negate || !t && e.negate
        }
          , Ne = []
          , Me = !1
          , Re = function(e) {
            Me ? e() : Ne.push(e)
        }
          , Le = function(e, t, n) {
            e(t).forEach((function(e) {
                n(Re, e)
            }
            )),
            Me = !0,
            Ne.forEach((function(e) {
                e()
            }
            )),
            Ne = []
        }
          , Ge = function(e) {
            if (e || (e = new Error("The extension triggered an error, but no error information was provided.")),
            !(e instanceof Error)) {
                var t = "object" == typeof e ? JSON.stringify(e) : String(e);
                e = new Error(t)
            }
            return e
        }
          , Fe = function(e) {
            return null != e && "object" == typeof e && !1 === Array.isArray(e)
        }
          , Ue = function(e) {
            var t, n;
            return !1 !== m(e) && ("function" == typeof (t = e.constructor) && (!1 !== m(n = t.prototype) && !1 !== n.hasOwnProperty("isPrototypeOf")))
        }
          , Be = function(e, t) {
            return Ue(t = t || {}) ? t = P({}, t, e) : P(t, e),
            t.hasOwnProperty("type") || Object.defineProperty(t, "type", {
                get: function() {
                    return H.deprecation("Accessing event.type in Adobe Launch has been deprecated and will be removed soon. Please use event.$type instead."),
                    t.$type
                }
            }),
            t
        }
          , qe = function(e, t) {
            return function(n, r) {
                var o = e[n];
                if (o) {
                    var a = o.modules;
                    if (a)
                        for (var i = Object.keys(a), s = 0; s < i.length; s++) {
                            var c = i[s]
                              , u = a[c];
                            if (u.shared && u.name === r)
                                return t.getModuleExports(c)
                        }
                }
            }
        }
          , We = function(e, t) {
            return function() {
                return t ? e(t) : {}
            }
        }
          , He = function(e, t, n) {
            return function(r) {
                if (n) {
                    var o = r.split(".");
                    o.splice(o.length - 1 || 1, 0, "min"),
                    r = o.join(".")
                }
                return e(t) + r
            }
        }
          , $e = ".js"
          , Je = function(e) {
            return e.substr(0, e.lastIndexOf("/"))
        }
          , Qe = function(e, t) {
            return -1 !== e.indexOf(t, e.length - t.length)
        }
          , ze = function(e, t) {
            Qe(t, $e) || (t += $e);
            var n = t.split("/")
              , r = Je(e).split("/");
            return n.forEach((function(e) {
                e && "." !== e && (".." === e ? r.length && r.pop() : r.push(e))
            }
            )),
            r.join("/")
        }
          , Ye = r((function(e) {
            !function(t) {
                if (e.exports = t(),
                !!0) {
                    var n = window.Cookies
                      , r = window.Cookies = t();
                    r.noConflict = function() {
                        return window.Cookies = n,
                        r
                    }
                }
            }((function() {
                function e() {
                    for (var e = 0, t = {}; e < arguments.length; e++) {
                        var n = arguments[e];
                        for (var r in n)
                            t[r] = n[r]
                    }
                    return t
                }
                function t(e) {
                    return e.replace(/(%[0-9A-Z]{2})+/g, decodeURIComponent)
                }
                function n(r) {
                    function o() {}
                    function a(t, n, a) {
                        if ("undefined" != typeof document) {
                            "number" == typeof (a = e({
                                path: "/"
                            }, o.defaults, a)).expires && (a.expires = new Date(1 * new Date + 864e5 * a.expires)),
                            a.expires = a.expires ? a.expires.toUTCString() : "";
                            try {
                                var i = JSON.stringify(n);
                                /^[\{\[]/.test(i) && (n = i)
                            } catch (e) {}
                            n = r.write ? r.write(n, t) : encodeURIComponent(String(n)).replace(/%(23|24|26|2B|3A|3C|3E|3D|2F|3F|40|5B|5D|5E|60|7B|7D|7C)/g, decodeURIComponent),
                            t = encodeURIComponent(String(t)).replace(/%(23|24|26|2B|5E|60|7C)/g, decodeURIComponent).replace(/[\(\)]/g, escape);
                            var s = "";
                            for (var c in a)
                                a[c] && (s += "; " + c,
                                !0 !== a[c] && (s += "=" + a[c].split(";")[0]));
                            return document.cookie = t + "=" + n + s
                        }
                    }
                    function i(e, n) {
                        if ("undefined" != typeof document) {
                            for (var o = {}, a = document.cookie ? document.cookie.split("; ") : [], i = 0; i < a.length; i++) {
                                var s = a[i].split("=")
                                  , c = s.slice(1).join("=");
                                n || '"' !== c.charAt(0) || (c = c.slice(1, -1));
                                try {
                                    var u = t(s[0]);
                                    if (c = (r.read || r)(c, u) || t(c),
                                    n)
                                        try {
                                            c = JSON.parse(c)
                                        } catch (e) {}
                                    if (o[u] = c,
                                    e === u)
                                        break
                                } catch (e) {}
                            }
                            return e ? o[e] : o
                        }
                    }
                    return o.set = a,
                    o.get = function(e) {
                        return i(e, !1)
                    }
                    ,
                    o.getJSON = function(e) {
                        return i(e, !0)
                    }
                    ,
                    o.remove = function(t, n) {
                        a(t, "", e(n, {
                            expires: -1
                        }))
                    }
                    ,
                    o.defaults = {},
                    o.withConverter = n,
                    o
                }
                return n((function() {}
                ))
            }
            ))
        }
        ))
          , Ze = {
            get: Ye.get,
            set: Ye.set,
            remove: Ye.remove
        }
          , Ke = function(e, t) {
            return new he((function(n, r) {
                t.onload = function() {
                    n(t)
                }
                ,
                t.onerror = function() {
                    r(new Error("Failed to load script " + e))
                }
            }
            ))
        }
          , Xe = function(e) {
            var t = document.createElement("script");
            t.src = e,
            t.async = !0;
            var n = Ke(e, t);
            return document.getElementsByTagName("head")[0].appendChild(t),
            n
        }
          , et = function(e, t, n, r) {
            t = t || "&",
            n = n || "=";
            var o = {};
            if ("string" != typeof e || 0 === e.length)
                return o;
            var a = /\+/g;
            e = e.split(t);
            var i = 1e3;
            r && "number" == typeof r.maxKeys && (i = r.maxKeys);
            var s = e.length;
            i > 0 && s > i && (s = i);
            for (var c = 0; c < s; ++c) {
                var u, l, d, f, p = e[c].replace(a, "%20"), g = p.indexOf(n);
                g >= 0 ? (u = p.substr(0, g),
                l = p.substr(g + 1)) : (u = p,
                l = ""),
                d = decodeURIComponent(u),
                f = decodeURIComponent(l),
                h(o, d) ? Array.isArray(o[d]) ? o[d].push(f) : o[d] = [o[d], f] : o[d] = f
            }
            return o
        }
          , tt = function(e) {
            switch (typeof e) {
            case "string":
                return e;
            case "boolean":
                return e ? "true" : "false";
            case "number":
                return isFinite(e) ? e : "";
            default:
                return ""
            }
        }
          , nt = function(e, t, n, r) {
            return t = t || "&",
            n = n || "=",
            null === e && (e = void 0),
            "object" == typeof e ? Object.keys(e).map((function(r) {
                var o = encodeURIComponent(tt(r)) + n;
                return Array.isArray(e[r]) ? e[r].map((function(e) {
                    return o + encodeURIComponent(tt(e))
                }
                )).join(t) : o + encodeURIComponent(tt(e[r]))
            }
            )).join(t) : r ? encodeURIComponent(tt(r)) + n + encodeURIComponent(tt(e)) : ""
        }
          , rt = r((function(e, t) {
            t.decode = t.parse = et,
            t.encode = t.stringify = nt
        }
        ))
          , ot = "@adobe/reactor-"
          , at = {
            cookie: Ze,
            document: _,
            "load-script": Xe,
            "object-assign": P,
            promise: he,
            "query-string": {
                parse: function(e) {
                    return "string" == typeof e && (e = e.trim().replace(/^[?#&]/, "")),
                    rt.parse(e)
                },
                stringify: function(e) {
                    return rt.stringify(e)
                }
            },
            window: C
        }
          , it = function(e) {
            return function(t) {
                if (0 === t.indexOf(ot)) {
                    var n = t.substr(ot.length)
                      , r = at[n];
                    if (r)
                        return r
                }
                if (0 === t.indexOf("./") || 0 === t.indexOf("../"))
                    return e(t);
                throw new Error('Cannot resolve module "' + t + '".')
            }
        }
          , st = function(e, t, n, r, o, a, i) {
            var s = e.extensions
              , c = e.buildInfo
              , u = e.environment
              , l = e.property.settings;
            if (s) {
                var d = qe(s, t);
                Object.keys(s).forEach((function(f) {
                    var p = s[f]
                      , g = p.settings;
                    Array.isArray(p.filePaths) && (g = a(g, p.filePaths));
                    var m = We(r, g);
                    if (p.modules) {
                        var h = H.createPrefixedLogger(p.displayName)
                          , b = He(i, p.hostedLibFilesBaseUrl, c.minified)
                          , v = {
                            buildInfo: c,
                            environment: u,
                            property: {
                                name: e.property.name,
                                id: e.property.id
                            },
                            getDataElementValue: o,
                            getExtensionSettings: m,
                            getHostedLibFileUrl: b,
                            getSharedModule: d,
                            logger: h,
                            propertySettings: l,
                            replaceTokens: r,
                            onDebugChanged: n.onDebugChanged,
                            get debugEnabled() {
                                return n.getDebugEnabled()
                            }
                        };
                        Object.keys(p.modules).forEach((function(e) {
                            var n = p.modules[e]
                              , r = it((function(n) {
                                var r = ze(e, n);
                                return t.getModuleExports(r)
                            }
                            ));
                            t.registerModule(e, n, f, r, v)
                        }
                        ))
                    }
                }
                )),
                t.hydrateCache()
            }
            return t
        }
          , ct = function(e, t, n, r, o) {
            var a = H.createPrefixedLogger("Custom Script");
            e.track = function(e) {
                H.log('"' + e + '" does not match any direct call identifiers.')
            }
            ,
            e.getVisitorId = function() {
                return null
            }
            ,
            e.property = {
                name: t.property.name,
                id: t.property.id
            },
            e.company = t.company,
            e.buildInfo = t.buildInfo,
            e.environment = t.environment,
            e.logger = a,
            e.notify = function(e, t) {
                switch (H.deprecation("_satellite.notify is deprecated. Please use the `_satellite.logger` API."),
                t) {
                case 3:
                    a.info(e);
                    break;
                case 4:
                    a.warn(e);
                    break;
                case 5:
                    a.error(e);
                    break;
                default:
                    a.log(e)
                }
            }
            ,
            e.getVar = r,
            e.setVar = o,
            e.setCookie = function(e, t, n) {
                var r = ""
                  , o = {};
                n && (r = ", { expires: " + n + " }",
                o.expires = n);
                var a = '_satellite.setCookie is deprecated. Please use _satellite.cookie.set("' + e + '", "' + t + '"' + r + ").";
                H.deprecation(a),
                Ze.set(e, t, o)
            }
            ,
            e.readCookie = function(e) {
                return H.deprecation('_satellite.readCookie is deprecated. Please use _satellite.cookie.get("' + e + '").'),
                Ze.get(e)
            }
            ,
            e.removeCookie = function(e) {
                H.deprecation('_satellite.removeCookie is deprecated. Please use _satellite.cookie.remove("' + e + '").'),
                Ze.remove(e)
            }
            ,
            e.cookie = Ze,
            e.pageBottom = function() {}
            ,
            e.setDebug = n;
            var i = !1;
            Object.defineProperty(e, "_container", {
                get: function() {
                    return i || (H.warn("_satellite._container may change at any time and should only be used for debugging."),
                    i = !0),
                    t
                }
            })
        }
          , ut = function(e, t) {
            return function(n, r, o) {
                return e && Ue(n) && Object.keys(n).length && Array.isArray(r) && r.length ? (r.forEach((function(e) {
                    Boolean(null != o && /^core\/.*actions.*\/customCode\.js$/.test(o)) && "source" === e && !n.isExternal || y(e.split("."), n, t)
                }
                )),
                n) : n
            }
        }
          , lt = window._satellite;
        if (lt && !window.__satelliteLoaded) {
            window.__satelliteLoaded = !0;
            var dt = lt.container;
            delete lt.container;
            var ft = P({}, dt.buildInfo);
            Object.defineProperty(ft, "environment", {
                get: function() {
                    return H.deprecation("container.buildInfo.environment is deprecated.Please use `container.environment.stage` instead"),
                    dt.environment.stage
                }
            }),
            dt.buildInfo = ft;
            var pt, gt = A(J("localStorage"), H), mt = "";
            _.currentScript && _.currentScript.getAttribute("src") && (mt = _.currentScript.getAttribute("src"));
            try {
                pt = S(mt, Boolean(dt.company.dynamicCdnEnabled), dt.company.cdnAllowList, gt)
            } catch (e) {
                throw H.warn("Please review the following error:"),
                e
            }
            var ht, bt = ut(pt.isDynamicEnforced, pt.decorateWithDynamicHost), vt = ce(), yt = dt.property.settings.undefinedVarsReturnEmpty, _t = dt.property.settings.ruleComponentSequencingEnabled, wt = dt.dataElements || {}, Et = function(e) {
                return wt[e]
            }, jt = function() {
                return ht.apply(null, arguments)
            }, Tt = ne(vt, Et, jt, yt, bt), Pt = {}, Ct = fe(Pt), St = ie(Pt, Et), xt = ae(Pt, Et, Tt);
            ht = de(St, xt, yt),
            ct(lt, dt, gt.setDebugEnabled, xt, Ct),
            st(dt, vt, gt, ht, Tt, bt, pt.decorateWithDynamicHost);
            var kt = le(lt)
              , At = V(vt, ht, bt)
              , Ot = Te(vt)
              , Vt = ke(Ot, H, kt)
              , Dt = xe(De, Ot, H, kt)
              , It = Se(De, Ot, H, kt)
              , Nt = Ae(H, kt)
              , Mt = Ce(Ve(_t, je(Ee(At, Ie, Vt, Dt), Oe(At, It, Nt)), _e(ve(At, Ge, Ie, Dt, Vt), be(At, Ge, It), Nt), kt), At, Be, De, Pe(vt), H);
            Le(x, dt.rules || [], Mt)
        }
        return lt
    }
    console.warn("Adobe Launch is unsupported in IE 9 and below.")
}();
```