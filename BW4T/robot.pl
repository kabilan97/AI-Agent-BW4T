:-dynamic in/1,			% matches the in/1 percept
	state/1,			% matches the state/1 percept
	zone/5,
	at/1,
	atBlock/1,
	holding/1,
	place/1,
	sequence/1,
	sequenceIndex/1,
	block/3,
	color/2,
	visited/1,
	occupied/1.				% matches the zone/5 percept

% A room is a place with exactly one neighbour, i.e., there is only one way to get to and from that place.
room(PlaceID) :- zone(_,PlaceID,_,_,Neighbours), length(Neighbours,1).

% Exercise 2.2: insert a definition of the predicate "nextColorInSeq(Color)".
%the next color is equeal to the Xth index in the list of the sequence
nextColorInSeq(Color) :- sequence(Y), sequenceIndex(X), nth0(X,Y,Color).


%Final predicate when the length of the list is equal to the sequenceIndex

%get the color of a specific index
indexColor(Index,Color):-sequence(Y),nth0(Index,Y,Color).

%Final predicate when the length of the list is equal to the sequenceindex

finishedGame:-sequence(List),length(List,X), sequenceIndex(X).