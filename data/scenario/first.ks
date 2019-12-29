;一番最初に呼び出されるファイル

[title name="ノベルデバッガー"]

[configdelay speed="5"]

[loadjs storage=title.js]
[loadjs storage=mesbox.js]
[loadjs storage=thinking.js]
[call storage=thinking.ks]

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[stop_keyconfig]

;------------------------------------------------------------------------------
;   マクロ定義
[macro name=mes_open]
    [eval exp="openMesbox(mp.face)"]
[endmacro]

[macro name=mes_close]
    [eval exp="is_mes_open = false"]
    [anim layer=message1 opacity=0 time=300]
    [layopt layer=message1 visible=false]
    [current layer=message0]
[endmacro]

[macro name=line]
    [iscript]
        var text = f.m[parseInt(mp.index)];
        while (text[0] == ";")
        {
            text = text.substring(1);
        }
        TYRANO.kag.ftag.startTag("text", {"val":text});
    [endscript]
    [l]
    [iscript]
        if(parseInt(mp.index) + 1 < f.m.length)
        {
            var text = f.m[parseInt(mp.index) + 1];
            while (text[0] == ";")
            {
                text = text.substring(1);
            }
            if(rch.indexOf(text[0]) != -1)
            {
                TYRANO.kag.ftag.startTag("r");
            }
        }
    [endscript]
[endmacro]

[macro name=line_noclick]
    [emb exp="f.m[parseInt(mp.index)]"]
    [if exp="parseInt(mp.index) + 1 < f.m.length"]
        [r cond="rch.indexOf(f.m[parseInt(mp.index) + 1][0]) != -1"]
    [endif]
[endmacro]

[macro name=link_hover]
    [nowait]
    [link target=%target]
    [text val=%text]
    [iscript]
        setHover(this.getMessageCurrentSpan());
    [endscript]
    [endlink]
    [r]
    [endnowait]
[endmacro]

[macro name=black_in]
    [position layer=message2 left=0 top=0 width=960 height=640 marginl=0 margint=0 marginr=0 page=fore visible=true opacity=255]
    [layopt layer=message2 visible=true]
    [anim layer=message2 opacity=0 time=1000]
    [wa]
    [layopt layer=message2 visible=false]
[endmacro]

[macro name=black_out]
    [position layer=message2 left=0 top=0 width=960 height=640 marginl=0 margint=0 marginr=0 page=fore visible=true opacity=0]
    [layopt layer=message2 visible=true]
    [anim layer=message2 opacity=255 time=1000]
    [wa]
[endmacro]

;------------------------------------------------------------------------------

[iscript]
    $(".message_inner").css("z-index", "");
    $(".message_outer").css("z-index", "");
[endscript]

*title
[position layer=message0 left=0 top=0 width=960 height=640 marginl=20 margint=0 marginr=20 page=fore visible=true]
[layopt layer=message0 visible=true]
[current layer=message0]
[eval exp="showTitle()"]
[black_in]

[s]

*scene1
[black_out]
[eval exp="clearTitle()"]
[jump storage=scene1.ks]
[s]

*scene2
[black_out]
[eval exp="clearTitle()"]
[jump storage=scene2.ks]
[s]

*scene3
[black_out]
[eval exp="clearTitle()"]
[jump storage=scene3.ks]
[s]
