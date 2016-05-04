-- R.A
--Prof. Ennoure
--HW 7

local widget = require("widget") --widget library





local title, an1, an2, response

local bg = display.newRect(display.contentWidth/2, display.contentHeight/2, display.contentWidth, display.contentHeight)
bg:setFillColor(0, 0, .6)

local q1, q2, q3, q4, q5 -- question variables


function showChoices( event )
    local preferencestring = ""                -- create blank string
   
    if an1Switch.isOn == true then
        preferencestring = preferencestring.."You're a Democrat\n"    
    end
    if an2Switch.isOn == true then
        preferencestring = preferencestring.."You're a Republican\n"    
    end
    
    if an3Switch.isOn == true then
        preferencestring = preferencestring.."You'll vote for Bernie\n"   
    end
    if an4Switch.isOn == true then
        preferencestring = preferencestring.."You'll vote for Hillary\n"    -- 
    end
      if an5Switch.isOn == true then
        preferencestring = preferencestring.."No republicans please!\n"    --
    end
      if an6Switch.isOn == true then
        preferencestring = preferencestring.."Donald! \n"   
    end

if an7Switch.isOn == true then
        preferencestring = preferencestring.."Yes, I'm voting!!!\n"    --
    end
      if an8Switch.isOn == true then
        preferencestring = preferencestring.."No, I don't see the point in voting.\n"   
    end
          
   if an9Switch.isOn == true then
        preferencestring = preferencestring.."You're smart for investing in the economy!.\n"    
    end

    if an10Switch.isOn == true then
    	preferencestring = preferencestring.."You like walls?\n"
end 
     
   

 l = string.len( preferencestring )
    if l > 0 then
        preferencestring = string.sub(preferencestring, -l, -1)    -- remove extra comma from end of string, assuming string is nonempty
    end
   
    response.text = preferencestring            -- change response text to show preferences
   
    return true
end








title = display.newText( "Presidential Poll 2016", display.contentWidth/2, 200, Arial, 50 )
    title:setFillColor( 0, .5, 0 )



local partygroup = display.newGroup()

q1 = display.newText( "Are you a Democrat or Republican?", display.contentWidth/2, 300, Arial, 20 )


an1Switch = widget.newSwitch
	{		
	x = 100,
	y = 340,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an1 = display.newText( "Democrat", 0, 0, Arial, 20 )
    an1.anchorX, an1.anchorY = 0, 0.5
    an1.x, an1.y = 130, 340
    an1:setFillColor( .6, 0, 0 )
partygroup: insert (an1Switch)

an2Switch = widget.newSwitch
	{		
	x = 100,
	y = 380,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an2 = display.newText( "Republican", 0, 0, Arial, 20 )
    an2.anchorX, an2.anchorY = 0, 0.5
    an2.x, an2.y = 130, 380
    an2:setFillColor( .6, 0, 0 )
partygroup: insert (an2Switch)

-- -------------------------------------------------------------------------------------------------

  local demogroup = display.newGroup() 

q2 = display.newText( "If you're a Democrat, who will you vote for?", display.contentWidth/2, 420, Arial, 20 )

an3Switch = widget.newSwitch
	{		
	x = 100,
	y = 460,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an3 = display.newText( "Bernie Sanders", 0, 0, Arial, 20 )
    an3.anchorX, an3.anchorY = 0, 0.5
    an3.x, an3.y = 130, 460
    an3:setFillColor( .6, 0, 0 )
demogroup: insert (an3Switch)

an4Switch = widget.newSwitch
	{		
	x = 100,
	y = 500,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an4 = display.newText( "Hillary Clinton", 0, 0, Arial, 20 )
    an4.anchorX, an4.anchorY = 0, 0.5
    an4.x, an4.y = 130, 500
    an4:setFillColor( .6, 0, 0 )
demogroup: insert (an4Switch)


-- ---------------------------------------------------------------------------------------------


local repubgroup = display.newGroup()

q3 = display.newText( "If you're a Republican who will you vote for?", display.contentWidth/2, 550, Arial, 20 )


an5Switch = widget.newSwitch
	{		
	x = 100,
	y = 590,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an5 = display.newText( "No, not a republican", 0, 0, Arial, 20 )
    an5.anchorX, an5.anchorY = 0, 0.5
    an5.x, an5.y = 130, 590
    an5:setFillColor( .6, 0, 0 )
repubgroup: insert(an5Switch)



an6Switch = widget.newSwitch
	{		
	x = 100,
	y = 630,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an6 = display.newText( "Donald Trump", 0, 0, Arial, 20 )
    an6.anchorX, an6.anchorY = 0, 0.5
    an6.x, an6.y = 130, 630
    an6:setFillColor( .6, 0, 0 )
repubgroup: insert(an6Switch)


-- -----------------------------------------------------------------------------------------

local votegroup = display.newGroup()

q4 = display.newText( "Will you vote in the 2016 Presidential Election?", display.contentWidth/2, 680, Arial, 20 )


an7Switch = widget.newSwitch
	{		
	x = 100,
	y = 720,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an7 = display.newText( "Yes", 0, 0, Arial, 20 )
    an7.anchorX, an7.anchorY = 0, 0.5
    an7.x, an7.y = 130, 720
    an7:setFillColor( .6, 0, 0 )
votegroup: insert(an7Switch)

an8Switch = widget.newSwitch
	{		
	x = 100,
	y = 760,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an8 = display.newText( "No", 0, 0, Arial, 20 )
    an8.anchorX, an8.anchorY = 0, 0.5
    an8.x, an8.y = 130, 760
    an8:setFillColor( .6, 0, 0 )
votegroup: insert(an8Switch)

    -- -----------------------------------------------------------------------------------

-- ---------------------------------------------------------------------------------------

local econgroup = display.newGroup()

     q5 = display.newText( "What do you think is better for the economy?", display.contentWidth/2, 800, Arial, 20 )


an9Switch = widget.newSwitch
	{		
	x = 100,
	y = 840,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an9 = display.newText( "Cut a % of the military budget, and reinvest in the economy.", 0, 0, Arial, 20 )
    an9.anchorX, an9.anchorY = 0, 0.5
    an9.x, an9.y = 130, 840
    an9:setFillColor( .6, 0, 0 )
econgroup: insert(an9Switch)

an10Switch = widget.newSwitch
	{		
	x = 100,
	y = 880,	
	style = "radio",	
	initialSwitchState = false,
	onEvent = showChoices
	}
	
an10 = display.newText( "Build a wall to keep the immigrants out.", 0, 0, Arial, 20 )
    an10.anchorX, an10.anchorY = 0, 0.5
    an10.x, an10.y = 130, 880
    an10:setFillColor( .6, 0, 0 )
    econgroup: insert(an10Switch)



     response = display.newText(" ",300, 950,Arial,20)
        response:setFillColor(1,.7,0)
