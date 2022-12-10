local pp = game:GetService("Workspace").DeliverySystem.DontDeleteTheseObjects.GetJobPart.ProximityPrompt
local ctp = CFrame.new(-1200.84753, 5.52208662, -1448.67969, -0.0619457066, 6.44965503e-09, 0.998079538, -5.7258454e-08, 1, -1.0015806e-08, -0.998079538, -5.77689292e-08, -0.0619457066)
local loc = game:GetService("Workspace").DeliverySystem.DontDeleteTheseObjects.TargetPart
local pl = game.Players.LocalPlayer
local head = pl.Character.Head

getgenv().farm = true

while true do 
if not getgenv().farm then break end
    pl.Character.HumanoidRootPart.CFrame = ctp
    fireproximityprompt(pp)
    loc.CFrame = pl.Character.HumanoidRootPart.CFrame
task.wait()
end
