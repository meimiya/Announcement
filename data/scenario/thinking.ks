;------------------------------------------------------------------------------

[macro name=think]
    [position layer=1 left=0 top=0 width=960 height=640 marginl=20 margint=0 marginr=0]
    [iscript]
        f.checked = [];
        setupPage(this, mp);
    [endscript]
    [s]
[endmacro]

[macro name=pickupLines]
    [cm]
    [current layer=message0]
    [nowait]
    [iscript]
        this.kag.ftag.startTag("r", {});
        if("a" in mp)
        {
            this.kag.ftag.startTag("text", {"val":eval(mp.a)});
            this.kag.ftag.startTag("r", {});
            this.kag.ftag.startTag("r", {});
        }
        if("b" in mp)
        {
            this.kag.ftag.startTag("text", {"val":eval(mp.b)});
            this.kag.ftag.startTag("r", {});
            this.kag.ftag.startTag("r", {});
        }
    [endscript]
    [endnowait]
    [current layer=message1]
[endmacro]

[return]