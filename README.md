## hammerspoon个人使用插件汇总
* ~~Hammerspoon的天气插件，调用了www.tianqiapi.com的天气接口，菜单栏显示近日天气，包含未来一周的天气、气温与风向等~~
- 修复了不会自动刷新的问题
* cmd + L 锁屏
## 关于 hammerspoon 详见 https://github.com/Hammerspoon/hammerspoon

## 使用方法：
* Homebrew 用户可以使用 cask 进行安装：``` brew cask install hammerspoon ```
* 首次打开 Hammerspoon 后，偏好设置窗口自动打开，点击 **Enable Accessibility** 授予辅助功能权限。此时的 Hammerspoon 并不具备任何功能，需要在 ``` ~/.hammerspoon/init.lua``` 中加入自己编写的配置脚本，并且点击 Hammerspoon 菜单栏图标并选择 **Reload Config**（重载配置），使配置生效。
![avatar](https://i.loli.net/2019/04/15/5cb364e8dce69.jpg)
## 20190904 更新
* ~~数据源 api 增加了token验证，请自行前往 https://tianqiapi.com/user/ 申请 appid 及 secretKey。~~
* 天气接口坏了

## 20211223 更新

实时网速

下班提醒
