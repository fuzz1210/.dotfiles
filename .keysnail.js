// ========================== KeySnail Init File =========================== //

// この領域は, GUI により設定ファイルを生成した際にも引き継がれます
// 特殊キー, キーバインド定義, フック, ブラックリスト以外のコードは, この中に書くようにして下さい
// ========================================================================= //
//{{%PRESERVE%
//コンテンツへフォーカス
let focusContent = function(){
    let elem = document.commandDispatcher.focusedElement;
    if (elem) {
        elem.blur();
    }
    gBrowser.focus();
    content.focus();
}
//}}%PRESERVE%
// ========================================================================= //

// ========================= Special key settings ========================== //

key.quitKey              = "undefined";
key.helpKey              = "undefined";
key.escapeKey            = "ESC";
key.macroStartKey        = "undefined";
key.macroEndKey          = "undefined";
key.universalArgumentKey = "undefined";
key.negativeArgument1Key = "undefined";
key.negativeArgument2Key = "undefined";
key.negativeArgument3Key = "undefined";
key.suspendKey           = "<f2>";

// ================================= Hooks ================================= //

// ============================= Key bindings ============================== //

key.setGlobalKey('<f1>', function (ev) {
    key.listKeyBindings();
}, 'キーバインド一覧を表示');

key.setViewKey(['g', 'g'], function (ev) {
    goDoCommand("cmd_scrollBottom");
}, 'ページ末尾へ移動');

key.setViewKey('G', function (ev) {
    goDoCommand("cmd_scrollTop");
}, 'ページ先頭へ移動');

key.setViewKey('C-c', function (ev) {
    focusContent();
}, 'コンテンツへフォーカス', true);

key.setViewKey('t', function (ev) {
    BrowserOpenTab();
}, 'タブを開く');

key.setViewKey('w', function (ev) {
    BrowserCloseTabOrWindow();
}, 'タブ / ウィンドウを閉じる');

key.setViewKey('T', function (ev) {
    undoCloseTab();
}, '閉じたタブを元に戻す');

key.setViewKey('C-l', function (ev) {
    getBrowser().mTabContainer.advanceSelectedTab(1, true);
    focusContent();
}, 'ひとつ右のタブへ');

key.setViewKey('C-h', function (ev) {
    getBrowser().mTabContainer.advanceSelectedTab(-1, true);
    focusContent();
}, 'ひとつ左のタブへ');

key.setViewKey('j', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_DOWN, true);
}, '一行スクロールダウン');

key.setViewKey('k', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_UP, true);
}, '一行スクロールアップ');

key.setViewKey('h', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_LEFT, true);
}, '左へスクロール');

key.setViewKey('l', function (ev) {
    key.generateKey(ev.originalTarget, KeyEvent.DOM_VK_RIGHT, true);
}, '右へスクロール');

key.setViewKey('n', function (ev) {
    goDoCommand("cmd_scrollPageDown");
}, '一画面スクロールダウン');

key.setViewKey('p', function (ev) {
    goDoCommand("cmd_scrollPageUp");
}, '一画面分スクロールアップ');

key.setViewKey('i', function (ev) {
    command.focusElement(command.elementsRetrieverTextarea, 0);
}, '最初のインプットエリアへフォーカス', true);

key.setViewKey('r', function (ev) {
    BrowserReload();
}, '更新');

key.setViewKey('R', function (ev) {
    BrowserReloadSkipCache();
}, '更新(キャッシュを無視)');

key.setViewKey('x', function (ev) {
    document.getElementById("Browser:Stop").doCommand();
}, 'ページの読み込みを中止');

key.setViewKey('b', function (ev) {
    BrowserBack();
}, '戻る');

key.setViewKey('f', function (ev) {
    BrowserForward();
}, '進む');

key.setEditKey('C-c', function (ev) {
    focusContent();
}, 'コンテンツへフォーカス', true);

key.setEditKey('C-u', function (ev) {
    display.echoStatusBar("Undo!", 2000);
    goDoCommand("cmd_undo");
}, 'アンドゥ');

key.setEditKey('C-r', function (ev) {
    display.echoStatusBar("Redo!", 2000);
    goDoCommand("cmd_redo");
}, 'リドゥ');

