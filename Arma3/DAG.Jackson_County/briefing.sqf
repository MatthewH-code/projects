if (!hasInterface) exitWith {};
waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["bugreport","Bug Report"];
player createDiarySubject ["serverrules","General Rules"];
player createDiarySubject ["steam","Steam Info"];


/*  Example
	player createDiaryRecord ["", //Container
		[
			"", //Subsection
				"
				TEXT HERE<br/><br/>
				"
		]
	];
*/
	player createDiaryRecord["bugreport",
		[
			"Bug Report",
				"
					You can report bugs and submit support tickets here http://darkaresgaming.net/index.php?/support/
				"
		]
	];
	
	player createDiaryRecord ["serverrules",
		[
			"Official Rules", 
				"
					http://darkaresgaming.net/index.php?/guidelines/
				"
		]
	];
	
	player createDiaryRecord ["steam",
		[
			"Steam Info",
				"
					Join our Steam group for server event notifications! http://steamcommunity.com/groups/DarkAresGamingSC
				"
		]
	];
	
