### opdracht 1

```bash 

 jq '.[] | {country: .country, density_1970: (.population_1970 / .area_km2)}' world-population.json 

```

```json 
{
  "country": "Afghanistan",
  "density_1970": 16.48647103015807
}
{
  "country": "Albania",
  "density_1970": 80.86583414498399
}
{
  "country": "Algeria",
  "density_1970": 5.792365752615419
}
{
  "country": "American Samoa",
  "density_1970": 136.05527638190955
}
{
  "country": "Andorra",
  "density_1970": 42.43589743589744
}
{
  "country": "Angola",
  "density_1970": 4.836528435068581
}
{
  "country": "Anguilla",
  "density_1970": 69.04395604395604
}
{
  "country": "Antigua and Barbuda",
  "density_1970": 145.96380090497738
}
{
  "country": "Argentina",
  "density_1970": 8.575313983599482
}
{
  "country": "Armenia",
  "density_1970": 85.20919207880846
}
{
  "country": "Aruba",
  "density_1970": 328.3666666666667
}
{
  "country": "Australia",
  "density_1970": 1.6374148078581139
}
{
  "country": "Austria",
  "density_1970": 89.00932384256775
}
{
  "country": "Azerbaijan",
  "density_1970": 62.64800230946882
}
{
  "country": "Bahamas",
  "density_1970": 12.84723517177078
}
{
  "country": "Bahrain",
  "density_1970": 290.921568627451
}
{
  "country": "Bangladesh",
  "density_1970": 457.69370468252356
}
{
  "country": "Barbados",
  "density_1970": 561.3883720930232
}
{
  "country": "Belarus",
  "density_1970": 44.17526974951831
}
{
  "country": "Belgium",
  "density_1970": 315.42767295597486
}
{
  "country": "Belize",
  "density_1970": 5.264521466515719
}
{
  "country": "Benin",
  "density_1970": 26.845935962778142
}
{
  "country": "Bermuda",
  "density_1970": 963.3148148148148
}
{
  "country": "Bhutan",
  "density_1970": 7.78491430952753
}
{
  "country": "Bolivia",
  "density_1970": 4.174196531707721
}
{
  "country": "Bosnia and Herzegovina",
  "density_1970": 74.50957839442286
}
{
  "country": "Botswana",
  "density_1970": 1.0176013745704466
}
{
  "country": "Brazil",
  "density_1970": 11.316640650219762
}
{
  "country": "British Virgin Islands",
  "density_1970": 63.450331125827816
}
{
  "country": "Brunei",
  "density_1970": 23.129748482220293
}
{
  "country": "Bulgaria",
  "density_1970": 77.40825584646326
}
{
  "country": "Burkina Faso",
  "density_1970": 20.55803815113182
}
{
  "country": "Burundi",
  "density_1970": 125.66767263059567
}
{
  "country": "Cambodia",
  "density_1970": 37.05650840997597
}
{
  "country": "Cameroon",
  "density_1970": 13.57218546110777
}
{
  "country": "Canada",
  "density_1970": 2.146748665704525
}
{
  "country": "Cape Verde",
  "density_1970": 71.22787007190676
}
{
  "country": "Cayman Islands",
  "density_1970": 39.89772727272727
}
{
  "country": "Central African Republic",
  "density_1970": 3.3184736686656477
}
{
  "country": "Chad",
  "density_1970": 2.856225856697819
}
{
  "country": "Chile",
  "density_1970": 12.988301842873051
}
{
  "country": "China",
  "density_1970": 84.73655658037568
}
{
  "country": "Colombia",
  "density_1970": 18.30986697590011
}
{
  "country": "Comoros",
  "density_1970": 130.156283566058
}
{
  "country": "Cook Islands",
  "density_1970": 86.73728813559322
}
{
  "country": "Costa Rica",
  "density_1970": 36.315009784735814
}
{
  "country": "Croatia",
  "density_1970": 79.38364490935435
}
{
  "country": "Cuba",
  "density_1970": 80.7181755305595
}
{
  "country": "Curacao",
  "density_1970": 338.7049549549549
}
{
  "country": "Cyprus",
  "density_1970": 69.26861960869095
}
{
  "country": "Czech Republic",
  "density_1970": 124.20901540607368
}
{
  "country": "Denmark",
  "density_1970": 114.2377825219288
}
{
  "country": "Djibouti",
  "density_1970": 6.223232758620689
}
{
  "country": "Dominica",
  "density_1970": 91.73768308921439
}
{
  "country": "Dominican Republic",
  "density_1970": 91.96176367857656
}
{
  "country": "DR Congo",
  "density_1970": 8.594009957106145
}
{
  "country": "Ecuador",
  "density_1970": 22.295162205020212
}
{
  "country": "Egypt",
  "density_1970": 34.69697840291286
}
{
  "country": "El Salvador",
  "density_1970": 172.0018059978138
}
{
  "country": "Equatorial Guinea",
  "density_1970": 11.299240668781861
}
{
  "country": "Eritrea",
  "density_1970": 10.822687074829933
}
{
  "country": "Estonia",
  "density_1970": 30.114732350144823
}
{
  "country": "Eswatini",
  "density_1970": 25.504780004607234
}
{
  "country": "Ethiopia",
  "density_1970": 25.63456126052703
}
{
  "country": "Falkland Islands",
  "density_1970": 0.18680686765793147
}
{
  "country": "Faroe Islands",
  "density_1970": 27.57788944723618
}
{
  "country": "Fiji",
  "density_1970": 28.876641856392293
}
{
  "country": "Finland",
  "density_1970": 13.611980828782828
}
{
  "country": "France",
  "density_1970": 91.57883613228324
}
{
  "country": "French Guiana",
  "density_1970": 0.55646802499581
}
{
  "country": "French Polynesia",
  "density_1970": 28.29157667386609
}
{
  "country": "Gabon",
  "density_1970": 2.231092248606483
}
{
  "country": "Gambia",
  "density_1970": 49.464963981663395
}
{
  "country": "Georgia",
  "density_1970": 68.87268292682927
}
{
  "country": "Germany",
  "density_1970": 219.2425471978136
}
{
  "country": "Ghana",
  "density_1970": 37.15165197268303
}
{
  "country": "Gibraltar",
  "density_1970": 4447.5
}
{
  "country": "Greece",
  "density_1970": 64.73879081748618
}
{
  "country": "Greenland",
  "density_1970": 0.020975159804366032
}
{
  "country": "Grenada",
  "density_1970": 287.1918604651163
}
{
  "country": "Guadeloupe",
  "density_1970": 195.52211302211302
}
{
  "country": "Guam",
  "density_1970": 160.83788706739526
}
{
  "country": "Guatemala",
  "density_1970": 50.080430530172926
}
{
  "country": "Guernsey",
  "density_1970": 675.0769230769231
}
{
  "country": "Guinea",
  "density_1970": 17.174105272577147
}
{
  "country": "Guinea-Bissau",
  "density_1970": 16.378214532871972
}
{
  "country": "Guyana",
  "density_1970": 3.2807567602770633
}
{
  "country": "Haiti",
  "density_1970": 168.6779099099099
}
{
  "country": "Honduras",
  "density_1970": 24.737341322049566
}
{
  "country": "Hong Kong",
  "density_1970": 3582.4927536231885
}
{
  "country": "Hungary",
  "density_1970": 110.88452938900116
}
{
  "country": "Iceland",
  "density_1970": 1.985126213592233
}
{
  "country": "India",
  "density_1970": 169.57750236495426
}
{
  "country": "Indonesia",
  "density_1970": 60.50103409222769
}
{
  "country": "Iran",
  "density_1970": 17.26112808253878
}
{
  "country": "Iraq",
  "density_1970": 22.384135226331626
}
{
  "country": "Ireland",
  "density_1970": 41.803210336829224
}
{
  "country": "Isle of Man",
  "density_1970": 96.67482517482517
}
{
  "country": "Israel",
  "density_1970": 139.97626384207993
}
{
  "country": "Italy",
  "density_1970": 176.9587304537128
}
{
  "country": "Ivory Coast",
  "density_1970": 16.985161088248883
}
{
  "country": "Jamaica",
  "density_1970": 169.1466654535529
}
{
  "country": "Japan",
  "density_1970": 278.932180562538
}
{
  "country": "Jersey",
  "density_1970": 589.198275862069
}
{
  "country": "Jordan",
  "density_1970": 17.431599919410804
}
{
  "country": "Kazakhstan",
  "density_1970": 4.501194539249147
}
{
  "country": "Kenya",
  "density_1970": 19.768675682800712
}
{
  "country": "Kiribati",
  "density_1970": 70.82244143033292
}
{
  "country": "Kuwait",
  "density_1970": 45.054776069143564
}
{
  "country": "Kyrgyzstan",
  "density_1970": 15.085615975914099
}
{
  "country": "Laos",
  "density_1970": 11.297647804054055
}
{
  "country": "Latvia",
  "density_1970": 37.13524063259964
}
{
  "country": "Lebanon",
  "density_1970": 227.87897053195562
}
{
  "country": "Lesotho",
  "density_1970": 33.71704826223028
}
{
  "country": "Liberia",
  "density_1970": 13.141565426644757
}
{
  "country": "Libya",
  "density_1970": 1.0850432499403253
}
{
  "country": "Liechtenstein",
  "density_1970": 131.80625
}
{
  "country": "Lithuania",
  "density_1970": 49.15998468606432
}
{
  "country": "Luxembourg",
  "density_1970": 131.22273781902553
}
{
  "country": "Macau",
  "density_1970": 8242.8
}
{
  "country": "Madagascar",
  "density_1970": 11.310540490357573
}
{
  "country": "Malawi",
  "density_1970": 39.03599642145775
}
{
  "country": "Malaysia",
  "density_1970": 31.156029419322074
}
{
  "country": "Maldives",
  "density_1970": 410.81
}
{
  "country": "Mali",
  "density_1970": 4.961801882289194
}
{
  "country": "Malta",
  "density_1970": 998.1455696202531
}
{
  "country": "Marshall Islands",
  "density_1970": 132.4254143646409
}
{
  "country": "Martinique",
  "density_1970": 289.38652482269504
}
{
  "country": "Mauritania",
  "density_1970": 1.0887726787620065
}
{
  "country": "Mauritius",
  "density_1970": 406.91911764705884
}
{
  "country": "Mayotte",
  "density_1970": 94.60695187165776
}
{
  "country": "Mexico",
  "density_1970": 25.600664842507157
}
{
  "country": "Micronesia",
  "density_1970": 84.02991452991454
}
{
  "country": "Moldova",
  "density_1970": 109.64781658098445
}
{
  "country": "Monaco",
  "density_1970": 12135
}
{
  "country": "Mongolia",
  "density_1970": 0.8272308213616689
}
{
  "country": "Montenegro",
  "density_1970": 38.39183318853171
}
{
  "country": "Montserrat",
  "density_1970": 111.7843137254902
}
{
  "country": "Morocco",
  "density_1970": 34.20524241406338
}
{
  "country": "Mozambique",
  "density_1970": 10.493738694344989
}
{
  "country": "Myanmar",
  "density_1970": 40.32663196261185
}
{
  "country": "Namibia",
  "density_1970": 0.9138242401119165
}
{
  "country": "Nauru",
  "density_1970": 317.2857142857143
}
{
  "country": "Nepal",
  "density_1970": 84.93817136722811
}
{
  "country": "Netherlands",
  "density_1970": 311.533715651135
}
{
  "country": "New Caledonia",
  "density_1970": 5.974804845222073
}
{
  "country": "New Zealand",
  "density_1970": 10.441425386461194
}
{
  "country": "Nicaragua",
  "density_1970": 18.752095909429098
}
{
  "country": "Niger",
  "density_1970": 3.6856416732438833
}
{
  "country": "Nigeria",
  "density_1970": 60.154999956699086
}
{
  "country": "Niue",
  "density_1970": 19.942307692307693
}
{
  "country": "North Korea",
  "density_1970": 124.41619240405515
}
{
  "country": "North Macedonia",
  "density_1970": 64.43367168358418
}
{
  "country": "Northern Mariana Islands",
  "density_1970": 21.85991379310345
}
{
  "country": "Norway",
  "density_1970": 11.968876041531553
}
{
  "country": "Oman",
  "density_1970": 2.1670210016155087
}
{
  "country": "Pakistan",
  "density_1970": 67.22991863133737
}
{
  "country": "Palau",
  "density_1970": 24.762527233115467
}
{
  "country": "Palestine",
  "density_1970": 179.78151125401928
}
{
  "country": "Panama",
  "density_1970": 20.104061418513066
}
{
  "country": "Papua New Guinea",
  "density_1970": 5.377795782559848
}
{
  "country": "Paraguay",
  "density_1970": 5.922004071276847
}
{
  "country": "Peru",
  "density_1970": 10.552600496725843
}
{
  "country": "Philippines",
  "density_1970": 109.3479128268191
}
{
  "country": "Poland",
  "density_1970": 103.88591174974974
}
{
  "country": "Portugal",
  "density_1970": 94.29504832229341
}
{
  "country": "Puerto Rico",
  "density_1970": 308.6379932356257
}
{
  "country": "Qatar",
  "density_1970": 10.185309856723633
}
{
  "country": "Republic of the Congo",
  "density_1970": 4.084763157894737
}
{
  "country": "Reunion",
  "density_1970": 188.73954599761052
}
{
  "country": "Romania",
  "density_1970": 83.57118347588626
}
{
  "country": "Russia",
  "density_1970": 7.608560575993719
}
{
  "country": "Rwanda",
  "density_1970": 147.9370870984889
}
{
  "country": "Saint Barthelemy",
  "density_1970": 115.0952380952381
}
{
  "country": "Saint Kitts and Nevis",
  "density_1970": 172.2911877394636
}
{
  "country": "Saint Lucia",
  "density_1970": 167.3538961038961
}
{
  "country": "Saint Martin",
  "density_1970": 109.47169811320755
}
{
  "country": "Saint Pierre and Miquelon",
  "density_1970": 22.880165289256198
}
{
  "country": "Saint Vincent and the Grenadines",
  "density_1970": 253.10796915167094
}
{
  "country": "Samoa",
  "density_1970": 50.23610133708656
}
{
  "country": "San Marino",
  "density_1970": 297.8524590163934
}
{
  "country": "Sao Tome and Principe",
  "density_1970": 80.48029045643153
}
{
  "country": "Saudi Arabia",
  "density_1970": 2.840498397443352
}
{
  "country": "Senegal",
  "density_1970": 22.202620957493316
}
{
  "country": "Serbia",
  "density_1970": 81.41072418827311
}
{
  "country": "Seychelles",
  "density_1970": 120.3075221238938
}
{
  "country": "Sierra Leone",
  "density_1970": 38.730931140228606
}
{
  "country": "Singapore",
  "density_1970": 2903.987323943662
}
{
  "country": "Sint Maarten",
  "density_1970": 184.11764705882354
}
{
  "country": "Slovakia",
  "density_1970": 92.23376226114975
}
{
  "country": "Slovenia",
  "density_1970": 85.89187589404627
}
{
  "country": "Solomon Islands",
  "density_1970": 5.981208471760797
}
{
  "country": "Somalia",
  "density_1970": 5.835389558963518
}
{
  "country": "South Africa",
  "density_1970": 18.319105809242473
}
{
  "country": "South Korea",
  "density_1970": 325.3282406945415
}
{
  "country": "South Sudan",
  "density_1970": 5.393202042775657
}
{
  "country": "Spain",
  "density_1970": 66.7848839507344
}
{
  "country": "Sri Lanka",
  "density_1970": 188.82440176802317
}
{
  "country": "Sudan",
  "density_1970": 5.994060659530834
}
{
  "country": "Suriname",
  "density_1970": 2.3191185447442315
}
{
  "country": "Sweden",
  "density_1970": 17.82765076227806
}
{
  "country": "Switzerland",
  "density_1970": 149.72451797306462
}
{
  "country": "Syria",
  "density_1970": 34.12463008964251
}
{
  "country": "Taiwan",
  "density_1970": 413.2807448954218
}
{
  "country": "Tajikistan",
  "density_1970": 20.915576519916144
}
{
  "country": "Tanzania",
  "density_1970": 14.409458600107715
}
{
  "country": "Thailand",
  "density_1970": 69.75313376987839
}
{
  "country": "Timor-Leste",
  "density_1970": 37.247613284926715
}
{
  "country": "Togo",
  "density_1970": 38.6965395791142
}
{
  "country": "Tokelau",
  "density_1970": 142.83333333333334
}
{
  "country": "Tonga",
  "density_1970": 115.77510040160642
}
{
  "country": "Trinidad and Tobago",
  "density_1970": 192.76608187134502
}
{
  "country": "Tunisia",
  "density_1970": 30.850216979402237
}
{
  "country": "Turkey",
  "density_1970": 45.358235851151534
}
{
  "country": "Turkmenistan",
  "density_1970": 4.51020692481049
}
{
  "country": "Turks and Caicos Islands",
  "density_1970": 5.975738396624473
}
{
  "country": "Tuvalu",
  "density_1970": 223.6153846153846
}
{
  "country": "Uganda",
  "density_1970": 42.712531566963364
}
{
  "country": "Ukraine",
  "density_1970": 78.34148467274234
}
{
  "country": "United Arab Emirates",
  "density_1970": 3.565598086124402
}
{
  "country": "United Kingdom",
  "density_1970": 229.10731165088515
}
{
  "country": "United States",
  "density_1970": 21.37380516206265
}
{
  "country": "United States Virgin Islands",
  "density_1970": 182.84149855907782
}
{
  "country": "Uruguay",
  "density_1970": 15.412933482108333
}
{
  "country": "Uzbekistan",
  "density_1970": 26.84702950379973
}
{
  "country": "Vanuatu",
  "density_1970": 7.139141849208302
}
{
  "country": "Vatican City",
  "density_1970": 752
}
{
  "country": "Venezuela",
  "density_1970": 12.390787226729373
}
{
  "country": "Vietnam",
  "density_1970": 126.59217963117278
}
{
  "country": "Wallis and Futuna",
  "density_1970": 66.03521126760563
}
{
  "country": "Western Sahara",
  "density_1970": 0.287109022556391
}
{
  "country": "Yemen",
  "density_1970": 12.962162479544215
}
{
  "country": "Zambia",
  "density_1970": 5.6890814921898665
}
{
  "country": "Zimbabwe",
  "density_1970": 13.31497068510609
}




```
### opdracht 2 

```bash 

jq '
group_by(.continent)
| map({
    continent: .[0].continent,
    growth: (
      (map(.population_2022) | add)
      -
      (map(.population_1970) | add)
    )
})
' world-population.json 

```
```json 
[
  {
    "continent": "Africa",
    "growth": 1061286584
  },
  {
    "continent": "Asia",
    "growth": 2576476984
  },
  {
    "continent": "Europe",
    "growth": 87223547
  },
  {
    "continent": "North America",
    "growth": 284861530
  },
  {
    "continent": "Oceania",
    "growth": 25558284
  },
  {
    "continent": "South America",
    "growth": 243869452
  }
]
```

### opdracht 3
```bash 
jq '
sort_by(.continent)
| group_by(.continent)
| map({
    continent: .[0].continent,
    population_1970: (map(.population_1970) | add),
    population_1980: (map(.population_1980) | add),
    population_1990: (map(.population_1990) | add),
    population_2000: (map(.population_2000) | add),
    population_2010: (map(.population_2010) | add),
    population_2020: (map(.population_2020) | add),
    population_2022: (map(.population_2022) | add)
})
' world-population.json

```
```json
[
  {
    "continent": "Africa",
    "population_1970": 365444348,
    "population_1980": 481536377,
    "population_1990": 638150629,
    "population_2000": 818946032,
    "population_2010": 1055228072,
    "population_2020": 1360671810,
    "population_2022": 1426730932
  },
  {
    "continent": "Asia",
    "population_1970": 2144906290,
    "population_1980": 2635334228,
    "population_1990": 3210563577,
    "population_2000": 3735089604,
    "population_2010": 4220041327,
    "population_2020": 4663086535,
    "population_2022": 4721383274
  },
  {
    "continent": "Europe",
    "population_1970": 655923991,
    "population_1980": 692527159,
    "population_1990": 720320797,
    "population_2000": 726093423,
    "population_2010": 735613934,
    "population_2020": 745792196,
    "population_2022": 743147538
  },
  {
    "continent": "North America",
    "population_1970": 315434606,
    "population_1980": 368293361,
    "population_1990": 421266425,
    "population_2000": 486069584,
    "population_2010": 542720651,
    "population_2020": 594236593,
    "population_2022": 600296136
  },
  {
    "continent": "Oceania",
    "population_1970": 19480270,
    "population_1980": 22920240,
    "population_1990": 26743822,
    "population_2000": 31222778,
    "population_2010": 37102764,
    "population_2020": 43933426,
    "population_2022": 45038554
  },
  {
    "continent": "South America",
    "population_1970": 192947156,
    "population_1980": 241789006,
    "population_1990": 297146415,
    "population_2000": 349634282,
    "population_2010": 393078250,
    "population_2020": 431530043,
    "population_2022": 436816608
  }
]
```
### opdracht 4
```bash
jq '
sort_by(.continent)
| group_by(.continent)
| map({
    continent: .[0].continent,
    percentage_world_population: (map(.world_population_percentage) | add)
})
' world-population.json

```
```json
[
  {
    "continent": "Africa",
    "percentage_world_population": 17.869999999999997
  },
  {
    "continent": "Asia",
    "percentage_world_population": 59.19
  },
  {
    "continent": "Europe",
    "percentage_world_population": 9.33
  },
  {
    "continent": "North America",
    "percentage_world_population": 7.51
  },
  {
    "continent": "Oceania",
    "percentage_world_population": 0.55
  },
  {
    "continent": "South America",
    "percentage_world_population": 5.4799999999999995
  }
]

```
### opdracht 5
```bash 
jq '
sort_by(.continent)
| group_by(.continent)
| map({
    continent: .[0].continent,
    pop_1970: (map(.population_1970) | add),
    pop_2022: (map(.population_2022) | add),
    growth_percentage: (
        ((map(.population_2022) | add) - (map(.population_1970) | add))
        / (map(.population_1970) | add)
        * 100
    )
})
' world-population.json
```


```json
[
  {
    "continent": "Africa",
    "pop_1970": 365444348,
    "pop_2022": 1426730932,
    "growth_percentage": 290.4099050397682
  },
  {
    "continent": "Asia",
    "pop_1970": 2144906290,
    "pop_2022": 4721383274,
    "growth_percentage": 120.12072490122634
  },
  {
    "continent": "Europe",
    "pop_1970": 655923991,
    "pop_2022": 743147538,
    "growth_percentage": 13.29781319128484
  },
  {
    "continent": "North America",
    "pop_1970": 315434606,
    "pop_2022": 600296136,
    "growth_percentage": 90.30763415983597
  },
  {
    "continent": "Oceania",
    "pop_1970": 19480270,
    "pop_2022": 45038554,
    "growth_percentage": 131.20087144582698
  },
  {
    "continent": "South America",
    "pop_1970": 192947156,
    "pop_2022": 436816608,
    "growth_percentage": 126.39183549303002
  }
]
```
### opdracht 6 

```bash 
jq -r '
  sort_by(.continent) |
  group_by(.continent) |
  map({
    continent: .[0].continent,
    "1970": (map(.population_1970) | add),
    "1980": (map(.population_1980) | add),
    "1990": (map(.population_1990) | add),
    "2000": (map(.population_2000) | add),
    "2010": (map(.population_2010) | add),
    "2015": (map(.population_2015) | add),
    "2020": (map(.population_2020) | add),
    "2022": (map(.population_2022) | add)
  })
  | (["continent","1970","1980","1990","2000","2010","2015","2020","2022"] | @csv),
    (.[] | [.continent, .["1970"], .["1980"], .["1990"], .["2000"], .["2010"], .["2015"], .["2020"], .["2022"]] | @csv)
' world-population.json > population_per_year_per_continent.csv

```
### opdracht 7

```bash

jq -r '
(["country_id","year","population"] | @csv),
(.[] as $c |
  [
    [$c.rank, 1970, $c.population_1970],
    [$c.rank, 1980, $c.population_1980],
    [$c.rank, 1990, $c.population_1990],
    [$c.rank, 2000, $c.population_2000],
    [$c.rank, 2010, $c.population_2010],
    [$c.rank, 2015, $c.population_2015],
    [$c.rank, 2020, $c.population_2020],
    [$c.rank, 2022, $c.population_2022]
  ] | .[] | @csv
)
' world-population.json > population.csv


```



