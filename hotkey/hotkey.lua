local hyper = {'ctrl', 'cmd'}
-- cmd + L 锁屏
-- hs.hotkey.bind({"cmd"}, "L", hs.caffeinate.systemSleep)
hs.hotkey.bind({"cmd"}, "L", hs.caffeinate.startScreensaver)
