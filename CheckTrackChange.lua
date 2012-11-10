PROPERTIES =
{
  
}

function Initialize()

end


function Update()    
	measureArtist2 = SKIN:GetMeasure("MeasureArtist2")
	currentArtist2 = measureArtist2:GetStringValue()
	measureTrack2 = SKIN:GetMeasure("MeasureTrack2")
    currentTrack2 = measureTrack2:GetStringValue()

    artTrack = SKIN:GetVariable("TRACK2");
   
    if (currentTrack2 ~= artTrack) then        
		SKIN:Bang("!SetVariable ARTIST2 \"" .. currentArtist2 .. "\"")
		SKIN:Bang("!SetVariable TRACK2 \"" .. currentTrack2 .. "\"")

		SKIN:Bang("!WriteKeyValue Variables ARTIST2 \"" .. currentArtist2 .. "\"")
		SKIN:Bang("!WriteKeyValue Variables TRACK2 \"" .. currentTrack2 .. "\"")
        
        SKIN:Bang("!Refresh")        
    end

    return artTrack
  
end