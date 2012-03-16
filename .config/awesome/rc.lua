print("[awesome] Entered awesome.lua: "..os.date())


-- {{{ library

require("vicious")
require("awful")
require("awful.autofocus")
require("awful.rules")
-- Theme handling library
require("beautiful")
-- Notification library
require("naughty")
require("plugins/revelation")
require("plugins/lognotify")
require("cal")
require("markup")
-- }}}

-- {{{ Theme
-- Themes define colours, icons, and wallpapers
--beautiful.init("/usr/share/awesome/themes/default/theme.lua")
beautiful.init(awful.util.getdir("config") .. "/themes/default/theme.lua")
--naughty.config.default_preset.font = "sans 10.5"
--naughty.config.default_preset.position = "bottom_right"

--theme.wallpaper_cmd = { "xsetroot -solid black" }

-- }}}

-- {{{ Error handling
-- Check if awesome encountered an error during startup and fell back to
-- another config (This code will only ever execute for the fallback config)
if awesome.startup_errors then
    naughty.notify({ preset = naughty.config.presets.critical,
                     title = "Oops, there were errors during startup!",
                     text = awesome.startup_errors })
end

-- Handle runtime errors after startup
do
    local in_error = false
    awesome.add_signal("debug::error", function (err)
        -- Make sure we don't go into an endless error loop
        if in_error then return end
        in_error = true

        naughty.notify({ preset = naughty.config.presets.critical,
                         title = "Oops, an error happened!",
                         text = err })
        in_error = false
    end)
end
-- }}}

-- {{{ AutorunOnce
local r = require("runonce")

autorun_items = 
{
    "terminator", 
    "VBoxClient-all",
    "gvim",
    "ibus-daemon -d -x",
    "chromium",
    "pcmanfm"
}

for index, item in ipairs(autorun_items) do
  r.run(item)
end
-- }}}


-- {{{ Values
-- This is used later as the default terminal and editor to run.
terminal = "terminator"
shell = "zsh"
editor = "gvim"
shell_cmd = shell .. " -c "
term_cmd = terminal .. " -e "

-- Default modkey.
-- Usually, Mod4 is the key with a logo between Control and Alt.  -- If you do not like this or do not have such a key,
-- I suggest you to remap Mod4 to another key using xmodmap or other tools.
-- However, you can use another modifier like Mod1, but it may interact with others.
modkey = "Mod4"
local icon_path = awful.util.getdir("config").."/icons/"
-- }}}

-- {{{Layouts
layouts =
{
    awful.layout.suit.tile,
    awful.layout.suit.tile.left,
    awful.layout.suit.tile.bottom,
    awful.layout.suit.tile.top,
    awful.layout.suit.floating,
    awful.layout.suit.fair,
    awful.layout.suit.fair.horizontal,
    --awful.layout.suit.spiral,
    --awful.layout.suit.spiral.dwindle,
    awful.layout.suit.max,
    awful.layout.suit.max.fullscreen,
    awful.layout.suit.magnifier
}
-- }}}

-- {{{ Tags
tags = {
    names  = { "term", "gvim", "Chrome", 4, 5, 6, 7, 8, "pcmanfm" },
    layout = { layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1], layouts[1]}
}
for s = 1, screen.count() do
    -- Each screen has its own tag table.
    tags[s] = awful.tag(tags.names, s, tags.layout)
end
-- }}}

-- {{{ Menu
-- Create a laucher widget and a main menu
myawesomemenu = {
   { "manual", term_cmd .. "\'man awesome\'" },
   { "edit config", shell_cmd .. "\'gvim " .. awful.util.getdir("config") .. "/rc.lua" .. "\'" },
   { "powersafe off", "xset s off" },
   { "xrandr", "xrandr --auto" },
   { "arandr", "arandr" },
   { "restart", awesome.restart },
   { "quit", awesome.quit }
}

-- reboot/shutdown as user using Consolkit and shutdown/hibernate using upower
-- Make sure you using ck-launch-session to start awesome and you are in the power group.
-- emerge consolekit upower
-- rc-update add consolekit default

local upower = [[dbus-send --print-reply \
--system \
--dest=org.freedesktop.UPower \
/org/freedesktop/UPower \
org.freedesktop.UPower.]]
local consolkit = [[dbus-send --print-reply \
--system \
--dest="org.freedesktop.ConsoleKit" \
/org/freedesktop/ConsoleKit/Manager \
org.freedesktop.ConsoleKit.Manager.]]

mymainmenu = awful.menu({ items = { { "awesome", myawesomemenu, beautiful.awesome_icon },
                                    { "terminal", terminal },
                                    { "chromium", shell_cmd .. "chromium"},
                                    { "lock", "slock" },
                                    { "Suspend", function() awful.util.spawn(upower.."Suspend") end },
                                    { "Hibernate", function () awful.util.spawn(upower.."Hibernate") end },
                                    { "Restart", consolkit.."Restart", icon_path.."restart.png" },
                                    { "Shutdown", consolkit.."Stop", icon_path.."poweroff.png" },
                                  }
                        })

mylauncher = awful.widget.launcher({ image = image(beautiful.awesome_icon),
                                     menu = mymainmenu })
-- }}}

-- {{{ Naughty log notify
print("[awesome] Enable naughty log notify")
ilog = lognotify{
   logs = {
      emerge_fetch = { file = "/var/log/emerge_fetch.log", },
      emerge = { file = "/var/log/emerge.log", },
      elog = { file = "/var/log/portage/elog/summary.log", },
   },
   interval = 1,
   naughty_timeout = 15
}
ilog:start()
-- }}}


--{{{Date

datewidget = widget({ type = "textbox" })
vicious.register(datewidget, vicious.widgets.date, "%y-%m-%d %H:%M:%S", 1)
local clockicon = widget({ type = "imagebox" })
clockicon.image = image(icon_path.."clock.png")

cal.register(clockicon, markup.fg("#FF5656","<b>%s</b>"), true)
local uptimetooltip = awful.tooltip({})
uptimetooltip:add_to_object(datewidget)
datewidget:add_signal("mouse::enter",  function()
  local args = vicious.widgets.uptime()
  local text = (" <b>Uptime</b> %dd %dh %dmin "):format(args[1], args[2], args[3])
  uptimetooltip:set_text(text)
end)
---}}}



-- {{{ Battery
local batwidget = widget({ type = "textbox" })
local baticon   = widget({ type = "imagebox"})
baticon.image   = image(icon_path.."bat.png")
local batbar    = awful.widget.progressbar()

-- Progressbar properties
batbar:set_width(8)
batbar:set_height(20)
batbar:set_vertical(true)
batbar:set_background_color(beautiful.fg_off_widget)
batbar:set_color(beautiful.fg_widget)
batbar:set_gradient_colors({ '#FF5656', '#88A175', '#AECF96'})
awful.widget.layout.margins[batbar.widget] = { top = 2, bottom = 2, left = 1, right = 2 }

vicious.cache(vicious.widgets.bat)
vicious.register(batbar, vicious.widgets.bat, "$2",  11, "BAT1")
vicious.register(batwidget, vicious.widgets.bat, "$1$2% $3h", 11, "BAT1")
-- }}}


---{{{ Mem
memwidget_tb = widget({ type = "textbox" })
vicious.register(memwidget_tb, vicious.widgets.mem, "$1%($2M/$3M)", 13)
mem_icon = widget({ type = "imagebox"})
mem_icon.image = image(icon_path.."mem.png")
---}}}


-- {{{ CPU usage
local cpuwidget = widget({ type = "textbox" })
local cpuicon = widget({ type = "imagebox" }); cpuicon.image = image(icon_path.."cpu.png")
-- Initialize widgets
vicious.register(cpuwidget, vicious.widgets.cpu,
function (widget, args)
  local text
  -- list all cpu cores
  for i=1,#args do
    -- alerts, if system is stressed
    --args[i] = markup.fg(markup.gradient(1,100,args[i]),args[i])
    if args[i] > 90 then
      args[i] = markup.fg("#FF5656", args[i]) -- light red
    elseif args[i] > 70 then
      args[i] = markup.fg("#AECF96", args[i]) -- light green
    end

    -- append to list
    if i > 2 then text = text.."/"..args[i].."%"
    else text = args[i].."%" end
  end
  return text
end)
-- Register buttons
cpuwidget:buttons( awful.button({ }, 1, function () awful.util.spawn(terminal .. " -e top") end) )
cpuicon:buttons( cpuwidget:buttons() )

-- }}}


-- {{{ CPU temperature
local thermalwidget = widget({ type = "textbox" })
local thermalicon = widget({ type = "imagebox" })
thermalicon.image = image(icon_path.."temp.png")
vicious.register(thermalwidget, vicious.widgets.thermal, "$1°C", 5, {"thermal_zone0", "sys"})
-- }}}

--{{{Network usage widget
netwidget = widget({ type = "textbox" })
local neticon  = widget({ type = "imagebox" }); neticon.image = image(icon_path.."ethernet.png")
vicious.register(netwidget, vicious.widgets.net, '<span color="#CC9393">⇩${eth0 down_kb}</span> <span color="#7F9F7F">⇧${eth0 up_kb}</span>', 3)
---}}}

-- {{{ Disk I/O
local ioicon = widget({ type = "imagebox" })
ioicon.image = image(icon_path.."disk.png") ioicon.visible = true
local iowidget = widget({ type = "textbox" })
vicious.register(iowidget, vicious.widgets.dio, "⇧${sda read_mb}⇩${sda write_mb}M", 3)
-- }}}

--{{{ systray
-- Create a systray
mysystray = widget({ type = "systray" })

-- Create a wibox for each screen and add it
mywibox = {}
mypromptbox = {}
mylayoutbox = {}
mytaglist = {}
mytaglist.buttons = awful.util.table.join(
    awful.button({ }, 1, awful.tag.viewonly),
    awful.button({ modkey }, 1, awful.client.movetotag),
    awful.button({ }, 3, awful.tag.viewtoggle),
    awful.button({ modkey }, 3, awful.client.toggletag),
    awful.button({ }, 4, awful.tag.viewnext),
    awful.button({ }, 5, awful.tag.viewprev)
)
mytasklist = {}
mytasklist.buttons = awful.util.table.join(
awful.button({ }, 1, function (c)
    if not c:isvisible() then
        awful.tag.viewonly(c:tags()[1])
    end
    client.focus = c
    c:raise()
end),
awful.button({ }, 3, function ()
    if instance then
        instance:hide()
        instance = nil
    else
        instance = awful.menu.clients({ width=250 })
    end
end),
awful.button({ }, 4, function ()
    awful.client.focus.byidx(1)
    if client.focus then client.focus:raise() end
end),
awful.button({ }, 5, function ()
    awful.client.focus.byidx(-1)
    if client.focus then client.focus:raise() end
end))

for s = 1, screen.count() do
    -- Create a promptbox for each screen
    mypromptbox[s] = awful.widget.prompt({ layout = awful.widget.layout.horizontal.leftright })
    -- Create an imagebox widget which will contains an icon indicating which layout we're using.
    -- We need one layoutbox per screen.
    mylayoutbox[s] = awful.widget.layoutbox(s)
    mylayoutbox[s]:buttons(awful.util.table.join(
    awful.button({ }, 1, function () awful.layout.inc(layouts, 1) end),
    awful.button({ }, 3, function () awful.layout.inc(layouts, -1) end),
    awful.button({ }, 4, function () awful.layout.inc(layouts, 1) end),
    awful.button({ }, 5, function () awful.layout.inc(layouts, -1) end)))
    -- Create a taglist widget
    mytaglist[s] = awful.widget.taglist(s, awful.widget.taglist.label.all, mytaglist.buttons)

    -- Create a tasklist widget
    mytasklist[s] = awful.widget.tasklist(function(c)
        return awful.widget.tasklist.label.currenttags(c, s)
    end, mytasklist.buttons)

    -- Create the wibox
    mywibox[s] = awful.wibox({ position = "top", screen = s })
    -- Add widgets to the wibox - order matters
    mywibox[s].widgets = {
        {
            mylauncher,
            mytaglist[s],
            mypromptbox[s],
            layout = awful.widget.layout.horizontal.leftright
        },
        mylayoutbox[s],
        datewidget, clockicon,
        memwidget_tb, mem_icon,
        cpuwidget, cpuicon,
        iowidget, ioicon,
        netwidget, neticon,
        batbar.widget, batwidget, baticon,
        thermalwidget, thermalicon,
        s == 1 and mysystray or nil,
        mytasklist[s],
        layout = awful.widget.layout.horizontal.rightleft
    }
end
-- }}}

-- {{{ Mouse bindings
root.buttons(awful.util.table.join(
awful.button({ }, 3, function () mymainmenu:toggle() end),
awful.button({ }, 4, awful.tag.viewnext),
awful.button({ }, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
globalkeys = awful.util.table.join(
    awful.key({ modkey,           }, "Left",   awful.tag.viewprev       ),
    awful.key({ modkey,           }, "Right",  awful.tag.viewnext       ),
    awful.key({ modkey,           }, "Escape", awful.tag.history.restore),
    awful.key({ modkey            }, "e",      revelation),

    awful.key({ modkey,           }, "j",
    function ()
        awful.client.focus.byidx( 1)
        if client.focus then client.focus:raise() end
    end),

    awful.key({ modkey,           }, "k",
    function ()
        awful.client.focus.byidx(-1)
        if client.focus then client.focus:raise() end
    end),

    awful.key({ modkey,           }, "w", function () mymainmenu:show({keygrabber=true}) end),

    -- Layout manipulation
    awful.key({ modkey, "Shift"   }, "j", function () awful.client.swap.byidx(  1)    end),
    awful.key({ modkey, "Shift"   }, "k", function () awful.client.swap.byidx( -1)    end),
    awful.key({ modkey, "Control" }, "j", function () awful.screen.focus_relative( 1) end),
    awful.key({ modkey, "Control" }, "k", function () awful.screen.focus_relative(-1) end),
    awful.key({ modkey,           }, "u", awful.client.urgent.jumpto),

    awful.key({ modkey,           }, "Tab",
    function ()
        awful.client.focus.history.previous()
        if client.focus then
            client.focus:raise()
        end
    end),

    -- Standard program
    awful.key({ modkey,           }, "Return", function () awful.util.spawn(terminal) end),
    awful.key({                   }, "Print", function  () awful.util.spawn("scrot -e 'mv $f ~/ 2>/dev/null'") end),
    awful.key({ modkey,           }, "z", function  () awful.util.spawn("slock") end),
    awful.key({ modkey, "Control" }, "r", awesome.restart),
    awful.key({ modkey, "Shift"   }, "q", awesome.quit),

    awful.key({ modkey,           }, "l",     function () awful.tag.incmwfact( 0.05)    end),
    awful.key({ modkey,           }, "h",     function () awful.tag.incmwfact(-0.05)    end),
    awful.key({ modkey, "Shift"   }, "h",     function () awful.tag.incnmaster( 1)      end),
    awful.key({ modkey, "Shift"   }, "l",     function () awful.tag.incnmaster(-1)      end),
    awful.key({ modkey, "Control" }, "h",     function () awful.tag.incncol( 1)         end),
    awful.key({ modkey, "Control" }, "l",     function () awful.tag.incncol(-1)         end),
    awful.key({ modkey,           }, "space", function () awful.layout.inc(layouts,  1) end),
    awful.key({ modkey, "Shift"   }, "space", function () awful.layout.inc(layouts, -1) end),

    -- Prompt
    awful.key({ modkey },            "r",     function () mypromptbox[mouse.screen]:run() end),

    awful.key({ modkey }, "x",
    function ()
        awful.prompt.run({ prompt = "Run Lua code: " },
        mypromptbox[mouse.screen].widget,
        awful.util.eval, nil,
        awful.util.getdir("cache") .. "/history_eval")
    end)
)

clientkeys = awful.util.table.join(
    awful.key({ modkey,           }, "f",      function (c) c.fullscreen = not c.fullscreen  end),
    awful.key({ modkey, "Shift"   }, "c",      function (c) c:kill()                         end),
    awful.key({ modkey, "Control" }, "space",  awful.client.floating.toggle                     ),
    awful.key({ modkey, "Control" }, "Return", function (c) c:swap(awful.client.getmaster()) end),
    awful.key({ modkey,           }, "o",      awful.client.movetoscreen                        ),
    awful.key({ modkey, "Shift"   }, "r",      function (c) c:redraw()                       end),
    awful.key({ modkey,           }, "t",      function (c) c.ontop = not c.ontop            end),
    awful.key({ modkey,           }, "n",      function (c) c.minimized = not c.minimized    end),

    awful.key({ modkey,           }, "m",
    function (c)
        c.maximized_horizontal = not c.maximized_horizontal
        c.maximized_vertical   = not c.maximized_vertical
    end)
)

-- Compute the maximum number of digit we need, limited to 9
keynumber = 0
for s = 1, screen.count() do
    keynumber = math.min(9, math.max(#tags[s], keynumber));
end

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it works on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, keynumber do
    globalkeys = awful.util.table.join(globalkeys,
    awful.key({ modkey }, "#" .. i + 9,
    function ()
        local screen = mouse.screen
        if tags[screen][i] then
            awful.tag.viewonly(tags[screen][i])
        end
    end),
    awful.key({ modkey, "Control" }, "#" .. i + 9,
    function ()
        local screen = mouse.screen
        if tags[screen][i] then
            awful.tag.viewtoggle(tags[screen][i])
        end
    end),
    awful.key({ modkey, "Shift" }, "#" .. i + 9,
    function ()
        if client.focus and tags[client.focus.screen][i] then
            awful.client.movetotag(tags[client.focus.screen][i])
        end
    end),
    awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9,
    function ()
        if client.focus and tags[client.focus.screen][i] then
            awful.client.toggletag(tags[client.focus.screen][i])
        end
    end))
end

clientbuttons = awful.util.table.join(
awful.button({ }, 1, function (c) client.focus = c; c:raise() end),
awful.button({ modkey }, 1, awful.mouse.client.move),
awful.button({ modkey }, 3, awful.mouse.client.resize))

-- Set keys
root.keys(globalkeys)
-- }}}

-- {{{ Rules
awful.rules.rules = {
    -- All clients will match this rule.
    { rule = { },
    properties = { border_width = beautiful.border_width,
    border_color = beautiful.border_normal,
    focus = true,
    keys = clientkeys,
    buttons = clientbuttons } },
    { rule = { class = "MPlayer" },
    properties = { floating = true } },
    { rule = { class = "pinentry" },
    properties = { floating = true } },
    { rule = { class = "gimp" },
    properties = { floating = true } },
    -- Set Firefox to always map on tags number 2 of screen 1.
    { rule = { class = "Gvim" },
    properties = { tag = tags[1][2] } },
    { rule = { class = "Chromium" },
    properties = { tag = tags[1][3] } },
    { rule = { class = "Terminator" },
    properties = { tag = tags[1][1] } },
}
-- }}}

-- {{{ Signals
-- Signal function to execute when a new client appears.
client.add_signal("manage", function (c, startup)
    -- Add a titlebar
    -- awful.titlebar.add(c, { modkey = modkey })

    -- Enable sloppy focus
    c:add_signal("mouse::enter", function(c)
        if awful.layout.get(c.screen) ~= awful.layout.suit.magnifier
            and awful.client.focus.filter(c) then
            client.focus = c
        end
    end)

    if not startup then
        -- Set the windows at the slave,
        -- i.e. put it at the end of others instead of setting it master.
        -- awful.client.setslave(c)

        -- Put windows in a smart way, only if they does not set an initial position.
        if not c.size_hints.user_position and not c.size_hints.program_position then
            awful.placement.no_overlap(c)
            awful.placement.no_offscreen(c)
        end
    end
end)

client.add_signal("focus", function(c) c.border_color = beautiful.border_focus end)
client.add_signal("unfocus", function(c) c.border_color = beautiful.border_normal end)
-- }}}


-- {{{ Welcome Message
print("[awesome] Send welcome message")

naughty.notify{
  title = "Awesome "..awesome.version.." started!",
  text  = string.format("Welcome %s. Your host is %s.\nIt is %s",
  os.getenv("USER"), awful.util.pread("hostname"):match("[^\n]*"), os.date()),
  timeout = 7 }
-- }}}

-- vim:fen:fdm=marker

