--[[
    TwitterData
    Stores all the TwitterCodes for the game.
	Copyright ShipmasterKyle 2022
	All Rights Reserved.
]]

--[[
    What are RewardTypes?
    RewardType is how the game recognizes what type of reward you get.
    For example the the RewardType "Pet" will let me give the player a
    Pet.

    Valid RewardTypes
    Coins --> For Money
    Pet --> For a pet
    Item --> For any other misc item
]]

local data = {
    hello  = {
        Name = "HelloWorld",
        RewardType = "Coins",
        Reward = "1000"
    }
}

return data