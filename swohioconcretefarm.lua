-- game link: https://www.roblox.com/games/234261816/Southwest-Ohio-Roleplay
--[[
    REQUIREMENTS:
    - u must spawn a truck or a van and place a pallete onto the van/truck
    Note: If u havent done as stated in requirements, it wont work.
]]

getgenv().farm = true -- true = on, false = off

function oops()
    for i,v in next, workspace:GetChildren() do
        if v.Name == game.Players.LocalPlayer.Character.Name.."sCar" then
            for g,b in next, v.Body.ConcreteDeliveryInteractive.ConcreteBags:GetChildren()do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame 
                task.wait() 
            end
            break
        end
    end
end

function tools()
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren()do
        v.Parent = game.Players.LocalPlayer.Character
    end
end

local pp = game:GetService("Workspace").ConcreteDeliveryJob.StartPoint.ConcretePallet.ConcreteBagInteract
local int = game:GetService("Workspace").ConcreteDeliveryJob.DeliveryPoint.Interactive

function afarm()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pp.CFrame
    task.wait(.3)
    for i,v in next, pp:GetChildren()do
        if v:IsA("ProximityPrompt") then
        fireproximityprompt(v)
        end
    end
    task.wait(.1)
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren()do
        v.Parent = game.Players.LocalPlayer.Character
    end
    task.wait(1)
    oops()
    task.wait(.5)
    local Character = game:GetService("Players").LocalPlayer.Character
    if Character then
        local VehicleSeat = Character:FindFirstChildWhichIsA("Humanoid").SeatPart
        if VehicleSeat and typeof(VehicleSeat) == "Instance" and VehicleSeat:IsA("VehicleSeat") then
                local Vehicle = VehicleSeat:FindFirstAncestorWhichIsA("Model")
                Character.Parent = Vehicle
                Vehicle:MoveTo(Vector3.new(2419, 522, 931))
                Character.Parent = workspace
        end
    end
    task.wait(.5)
    for i,v in next, workspace:GetChildren() do
        if v.Name == game.Players.LocalPlayer.Character.Name.."sCar" then
            for g,b in next, v.Body.ConcreteDeliveryInteractive.ConcreteBags:GetChildren()do
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = b.CFrame 
                fireproximityprompt(b.ProximityPrompt)
                task.wait() tools()
            end
            break
        end
    end
    task.wait(.2)
    local head = game.Players.LocalPlayer.Character.Head
    tools()
    wait(.5)
    firetouchinterest(head,int,0)
    wait()
    firetouchinterest(head,int,1)
end 



while true do
    if not getgenv().farm then break end
    if getgenv().farm then
        getgenv().farm = false
        afarm()
        getgenv().farm = true
    end
    task.wait()
end
