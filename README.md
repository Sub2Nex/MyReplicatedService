# MyReplicatedService.lua Documentation
___
[![template (3)|690x362](upload://dNzMOrqSD1ShZVfy1VEFMeuyVzg.jpeg)](https://devforum.roblox.com/secure-uploads/uploads/original/5X/6/0/b/6/60b6f0ffed2ca88be60f2003eadb85bfa5898efe.jpeg)

The `MyReplicatedService.lua` file is a Lua module that provides a set of functions for creating and managing remote events and functions in Roblox games. This module is designed to be used in conjunction with Roblox's ReplicatedStorage service.

This release may include many bugs, and it's not entirely stable.

## Functions
___
### `createNewEvent(eventName: string, isBindable: boolean) -> Instance`

Creates a new event with the given name and type.

* `eventName` (string): The name of the event.
* `isBindable` (boolean): A boolean indicating whether the event is bindable or not.
* Returns: The newly created event.

### `fetchExistingEvent(eventName: string, bindableOnly: boolean) -> Instance`

Fetches an existing event with the given name and type.

* `eventName` (string): The name of the event.
* `bindableOnly` (boolean): A boolean indicating whether to only fetch bindable events.
* Returns: The fetched event.

### `deleteExistingEvent(eventName: string)`

Deletes an existing event with the given name.

* `eventName` (string): The name of the event.

### `createRemoteFunction(functionName: string) -> Instance`

Creates a new remote function with the given name.

* `functionName` (string): The name of the remote function.

* Returns: The newly created remote function.

### `deleteExistingRemoteFunction(functionName: string)`

Deletes an existing remote function with the given name.

* `functionName` (string): The name of the remote function.

### `fetchExistingRemoteFunction(functionName: string) -> Instance`

Fetches an existing remote function with the given name.

* `functionName` (string): The name of the remote function.
* Returns: The fetched remote function.

### `createBindableFunction(functionName: string) -> Instance`

Creates a new bindable function with the given name.

* `functionName` (string): The name of the bindable function.
* Returns: The newly created bindable function.

### `deleteExistingBindableFunction(functionName: string)`

Deletes an existing bindable function with the given name.

* `functionName` (string): The name of the bindable function.

### `fetchExistingBindableFunction(functionName: string) -> Instance`

Fetches an existing bindable function with the given name.

* `functionName` (string): The name of the bindable function.
* Returns: The fetched bindable function.

### `createRemoteEvent(eventName: string) -> Instance`

Creates a new remote event with the given name.

* `eventName` (string): The name of the remote event.
* Returns: The newly created remote event.

### `deleteExistingRemoteEvent(eventName: string)`

Deletes an existing remote event with the given name.

* `eventName` (string): The name of the remote event.

### `fetchExistingRemoteEvent(eventName: string) -> Instance`

Fetches an existing remote event with the given name.

* `eventName` (string): The name of the remote event.
* Returns: The fetched remote event.

### `createBindableEvent(eventName: string) -> Instance`

Creates a new bindable event with the given name.

* `eventName` (string): The name of the bindable event.
* Returns: The newly created bindable event.

### `deleteExistingBindableEvent(eventName: string)`

Deletes an existing bindable event with the given name.

* `eventName` (string): The name of the bindable event.

### `fetchExistingBindableEvent(eventName: string) -> Instance`

Fetches an existing bindable event with the given name.

* `eventName` (string): The name of the bindable event.
* Returns: The fetched bindable event.

___

# Links & Resources
**Download** v1.0.0: 
[MyReplicatedService.lua|attachment](upload://9vcOaHVeu4MGJsYUN3Wz0Tw59FU.lua) (7.9 KB)


___
# Support Me
<p><a href="https://www.buymeacoffee.com/nxev"> <img align="left" src="https://cdn.buymeacoffee.com/buttons/v2/default-yellow.png" height="70" width="210" alt="nxev" /></a>
<a href="https://ko-fi.com/nx_ev"> <img align="left" src="https://cdn.ko-fi.com/cdn/kofi3.png?v=3" height="70" width="210" alt="nx_ev" /></a></p><br><br>
