-- quacker obenga!!1!!@!121
local spos = CFrame.new(-306.509399, 15.5617676, 681.64386)
local plr = game.Players.LocalPlayer
local cd = game:GetService("Workspace").JobBox.ClickDetector

function farm()
    local hum = plr.Character.HumanoidRootPart
    for i,v in next, game.Players.LocalPlayer.Backpack:GetChildren() do
        if v.Name == "Durian" then v.Parent = v.Parent.Parent.Character end
            fireclickdetector(cd)
    end

    hum.CFrame = spos
    wait(.2)
    for i,v in next, workspace:GetChildren() do
        if v.Name == "DealershipPart" and plr:DistanceFromCharacter(v.CFrame.Position) <=100 then
            fireproximityprompt(v.ProximityPrompt)
        end
    end
end

while true do
if not getgenv().farm then break end
    farm()
task.wait()
end
