void main()
{
while( get_property( "_perilsForeseen" ).to_int() < 3 )
	{
		boolean[string] clannies = who_clan();
		string[int] sortedlist;
		int i = 0;
		foreach name in clannies
		{	
			if(name == "CWbot"){}
			else{
			sortedlist[i++] = name;
			}
		}
		sort sortedlist by random(1000000);
		if( sortedlist.count() > 0 )
		{
			print(sortedlist[0]);
			print(get_player_id(sortedlist[0]));
			cli_execute( "try; throw peridot of peril at " + get_player_id(sortedlist[0]) );
			wait(3);
		}
	}
}
