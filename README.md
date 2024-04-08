# WX AntiDump
This is a really simple "Anti Dump" method that I wrote for FiveM. It prevents dumpers (cheaters) from dumping your client files from your server, which can be then used to obtain locations, server events or even the resource as whole.

How does it work you ask? Basically, you just add one line with an export that requests the client code from the server and then proceeds to load it like FiveM would normally would.

It also includes some protection, so dumpers cannot intercept the code that's being sent from server to client.

# How it works (for monkeys)
![image](https://github.com/nwvh/wx_antidump/assets/76164598/19a26ea1-da01-46e0-9fcb-21f69c2ee0e4)

# Setup Guide
* Download / Git Clone this repo to your `resources/` folder
* Go to `configs/antidump_config.lua` and setup your resources as explained
* Go to the `code/` folder and setup your folders, (or) files according to your config. For example, if your config looks like this:
* ```lua
  wx.Resources = {
    ["testresource"] = "testresource/client.lua"
  }
  ```
  Then you're going to create a `testresource/` folder with `client.lua` inside it
* Go to the resource(s) client file you have set up in your config and replace the file's content with the following line:
* ```lua
  exports['wx_antidump']:loadFile()
  ```
* Restart both resources (or the whole server), but **MAKE SURE** that wx_antidump is starting **BEFORE** the resource(s) you protected

# Example (for individuals that can't comprehend the guide above)
I have created a resource called `testresource/` in my resources folder, it contains `client.lua` file that I have loaded inside the fxmanifest. This is the content of the client.lua:

![image](https://github.com/nwvh/wx_antidump/assets/76164598/2786e547-933b-403a-b658-acca10c29660)

Next, in the antidump config I have it setup like this:

![image](https://github.com/nwvh/wx_antidump/assets/76164598/d173e799-e0b1-4cbe-9daf-d5cd9d6f7640)

And inside the `code/` folder I have the following file structure

```wx_antidump
├───code
│   └───testresource
│           client.lua
```

The `testresource/client.lua` contains the code that I want to load in the `testresource`'s client.lua file

![image](https://github.com/nwvh/wx_antidump/assets/76164598/5baeeeef-007a-40b6-9417-579e0b3bf56d)

So now, when I put it all together, by saving the antidump's config, typing `ensure wx_antidump` and `ensure testresource`, the protected content will now load, to verify this, I have made the protected file to print just the "working" phrase

![image](https://github.com/nwvh/wx_antidump/assets/76164598/c5964fa1-91ad-46cf-990a-57d10769b667)
