-- MyReplicatedService.lua

--// Define the MyReplicatedService table
local MyReplicatedService = {}

--// Get the ReplicatedStorage service
local ReplicatedStorage = game:GetService("ReplicatedStorage") or error("ReplicatedStorage not found")

--// Find or create the MyReplicatedService folder
local Folder = ReplicatedStorage:FindFirstChild("MyReplicatedService")
if not Folder then
	Folder = Instance.new("Folder", ReplicatedStorage)
	Folder.Name = "MyReplicatedService"
end

--// Function to create a new event
function MyReplicatedService.createNewEvent(eventName: string, isBindable: boolean)
    --[[
        Creates a new event with the given name and type.
        :param eventName: The name of the event.
        :param isBindable: A boolean indicating whether the event is bindable or not.
        :return: The newly created event.
    ]]--
	local newEvent
	if not isBindable then
		newEvent = Instance.new("RemoteEvent", Folder)
	else
		newEvent = Instance.new("BindableEvent", Folder)
	end
	newEvent.Name = eventName or "NameError" .. Random.new():NextInteger(100000, 999999)
	return newEvent
end

--// Function to fetch an existing event
function MyReplicatedService.fetchExistingEvent(eventName: string, bindableOnly: boolean)
    --[[
        Fetches an existing event with the given name and type.
        :param eventName: The name of the event.
        :param bindableOnly: A boolean indicating whether to only fetch bindable events.
        :return: The fetched event.
    ]]--
	local child
	if not bindableOnly then
		child = Folder:FindFirstChild(eventName)
	else
		for i,v in pairs(Folder:GetChildren()) do
			if v.Name == eventName then
				if v:IsA("BindableEvent") then
					child = v
					break
				end
			end
		end
	end
	if not child then
		error("Event not found")
	end
	return child
end

--// Function to delete an existing event
function MyReplicatedService.deleteExistingEvent(eventName: string)
    --[[
        Deletes an existing event with the given name.
        :param eventName: The name of the event.
    ]]--
	local child = Folder:FindFirstChild(eventName)
	if child then
		child:Destroy()
	else
		warn("Event not found")
	end
end

--// Function to create a new remote function
function MyReplicatedService.createRemoteFunction(functionName: string)
    --[[
        Creates a new remote function with the given name.
        :param functionName: The name of the remote function.
        :return: The newly created remote function.
    ]]--
	local newFunction = Instance.new("RemoteFunction", Folder)
	newFunction.Name = functionName or "NameError" .. Random.new():NextInteger(100000, 999999)
	return newFunction
end

--// Function to delete an existing remote function
function MyReplicatedService.deleteExistingRemoteFunction(functionName: string)
    --[[
        Deletes an existing remote function with the given name.
        :param functionName: The name of the remote function.
    ]]--
	local child = Folder:FindFirstChild(functionName)
	if not child then
		error("Remote function not found")
	end
	child:Destroy()
end

--// Function to fetch an existing remote function
function MyReplicatedService.fetchExistingRemoteFunction(functionName: string)
    --[[
        Fetches an existing remote function with the given name.
        :param functionName: The name of the remote function.
        :return: The fetched remote function.
    ]]--
	local child = Folder:FindFirstChild(functionName)
	if not child then
		error("Remote function not found")
	end
	if not child:IsA("RemoteFunction") then
		error("Child is not a RemoteFunction")
	end
	return child
end

--// Function to create a new bindable function
function MyReplicatedService.createBindableFunction(functionName: string)
    --[[
        Creates a new bindable function with the given name.
        :param functionName: The name of the bindable function.
        :return: The newly created bindable function.
    ]]--
	local newFunction = Instance.new("BindableFunction", Folder)
	newFunction.Name = functionName or "NameError" .. Random.new():NextInteger(100000, 999999)
	return newFunction
end

--// Function to delete an existing bindable function
function MyReplicatedService.deleteExistingBindableFunction(functionName: string)
    --[[
        Deletes an existing bindable function with the given name.
        :param functionName: The name of the bindable function.
    ]]--
	local child = Folder:FindFirstChild(functionName)
	if not child then
		error("Bindable function not found")
	end
	child:Destroy()
end

--// Function to fetch an existing bindable function
function MyReplicatedService.fetchExistingBindableFunction(functionName: string)
    --[[
        Fetches an existing bindable function with the given name.
        :param functionName: The name of the bindable function.
        :return: The fetched bindable function.
    ]]--
	local child = Folder:FindFirstChild(functionName)
	if not child then
		error("Bindable function not found")
	end
	if not child:IsA("BindableFunction") then
		error("Child is not a BindableFunction")
	end
	return child
end

--// Function to create a new remote event
function MyReplicatedService.createRemoteEvent(eventName: string)
    --[[
        Creates a new remote event with the given name.
        :param eventName: The name of the remote event.
        :return: The newly created remote event.
    ]]--
	local newEvent = Instance.new("RemoteEvent", Folder)
	newEvent.Name = eventName or "NameError" .. Random.new():NextInteger(100000, 999999)
	return newEvent
end

--// Function to delete an existing remote event
function MyReplicatedService.deleteExistingRemoteEvent(eventName: string)
    --[[
        Deletes an existing remote event with the given name.
        :param eventName: The name of the remote event.
    ]]--
	local child = Folder:FindFirstChild(eventName)
	if not child then
		error("Remote event not found")
	end
	child:Destroy()
end

--// Function to fetch an existing remote event
function MyReplicatedService.fetchExistingRemoteEvent(eventName: string)
    --[[
        Fetches an existing remote event with the given name.
        :param eventName: The name of the remote event.
        :return: The fetched remote event.
    ]]--
	local child = Folder:FindFirstChild(eventName)
	if not child then
		error("Remote event not found")
	end
	if not child:IsA("RemoteEvent") then
		error("Child is not a RemoteEvent")
	end
	return child
end

--// Function to create a new bindable event
function MyReplicatedService.createBindableEvent(eventName: string)
    --[[
        Creates a new bindable event with the given name.
        :param eventName: The name of the bindable event.
        :return: The newly created bindable event.
    ]]--
	local newEvent = Instance.new("BindableEvent", Folder)
	newEvent.Name = eventName or "NameError" .. Random.new():NextInteger(100000, 999999)
	return newEvent
end

--// Function to delete an existing bindable event
function MyReplicatedService.deleteExistingBindableEvent(eventName: string)
    --[[
        Deletes an existing bindable event with the given name.
        :param eventName: The name of the bindable event.
    ]]--
	local child = Folder:FindFirstChild(eventName)
	if not child then
		error("Bindable event not found")
	end
	child:Destroy()
end

--// Function to fetch an existing bindable event
function MyReplicatedService.fetchExistingBindableEvent(eventName: string)
    --[[
        Fetches an existing bindable event with the given name.
        :param eventName: The name of the bindable event.
        :return: The fetched bindable event.
    ]]--
	local child = Folder:FindFirstChild(eventName)
	if not child then
		error("Bindable event not found")
	end
	if not child:IsA("BindableEvent") then
		error("Child is not a BindableEvent")
	end
	return child
end

return MyReplicatedService
