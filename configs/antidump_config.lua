wx = {}

wx.Resources = {
    --[[

Put all your files/folders in code/ folder, then proceed to load it as following
resourceName represents the resource that's going to be loading the provided file, for example:
["testresource"] = "test.lua"

the export used in "testresource" will load the "test.lua" file

exports['wx_antidump']:loadFile()

FORMAT:
["resourceName"] = "directory/file.lua" -- will point to wx_antidump/code/directory/file.lua


]]
    ["testresource"] = "testresource/client.lua"
}
