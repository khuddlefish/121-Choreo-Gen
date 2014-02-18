2/18/14

Currently, all of the methods are in single class, choreographyDictionary, which
is a subclass of NSObject. The app is in the form of a command line tool for OSX
not yet in an iOS app. The main.m file is used to run the app and creates an 
instance of a choreographyDictionary.

Description of the choreographyDictionary class:
	Properties: 
		Properties are used to keep track of the inputs from main.m. They are 
		used inside of methods. There are currently 3:
			danceStyle is a NSString representing a desired style of dance
			difficultyLevel is a NSString representing the desired level
			movesDictionary is a NSDictionary with moves as keys and next moves
				as values. Inside of main.m, it is set to be the correct
				dictionary as defined by danceStyle and difficultyLevel.

	Methods:
		First, there are class methods that are used to display the possible
		options of dance styles and levels for the user. Once this application
		is not a commmand line tool, these will not be needed, but for now they
		aid in showing the expected, correct form of input.
			danceStyleMenu prints the available dance styles
			difficultyLevelMenu prints the available levels

		The key method for implementing the dictionary is setMovesDictionary. 
		This is where the property movesDictionary is correctly set. It has no
		input values, but does depend on the danceStyle and difficultyLevel 
		properties. Basically, it creates a string corresponding to the correct
		name of the dictionary we want (based on the user inputs) and then
		calls the method with that name (which are discussed next).

		A major part of the current implementation is the enumerated 
		dictionaries and the enumerated arrays of next moves (value arrays).
		These are hard-coded values.
		
		Enumerated dictionaries are for each pairing of style and level.
		They have the available moves as keys and the possible next moves as 
		values. These are class methods that do not take in any inputs but do
		return a dictionary. Each move is of type NSString.

		Enumerated arrays of next moves (the values) are also class methods.
		They are called from within the implementation for an enumerated 
		dictionary with the method getValuesArrayFor(Style)(Level)Move 
		(ie getValuesArrayForChaChaBronzeMove: @"openBasic"). There is a 
		different array for each combination of style, level and move.  Arrays 
		contain objects of type NSString which are each a move. 

		Lastly, the method chooseAMoveAfter is the funtion that does the main
		work of generating choreography. It uses the movesDictionary to get the
		array of possible moves after the current one and then selects another 
		move. Inside of main.m, the user can select how many moves to include
		(basically how many times this method runs). In the current version it 
		is choosing randomly, but this could be refined further to make the 
		choreography more precise.
		