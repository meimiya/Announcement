is_mes_open = false;
rch = ['　', '「'];

function openMesbox(face = '😀', extra = "false")
{
    TYRANO.kag.ftag.startTag("current", {
        "layer":"message1",
    });

    if (is_mes_open == false)
    {
        TYRANO.kag.ftag.startTag("position", {
            "layer":"message1",
            "page":"fore",
            "left":"10",
            "top":"440",
            "height":"180",
            "margint":"0",
            "marginl":"250",
            "marginr":"10",
            "marginb":"0",
            "opacity":"0",
        });
        TYRANO.kag.ftag.startTag("anim", {
            "layer":"message1",
            "opacity":"255",
            "time":"300",
        });
        TYRANO.kag.ftag.startTag("layopt", {
            "layer":"message1",
            "visible":"true",
        });

        let mesInner = TYRANO.kag.getMessageInnerLayer();
        mesInner.css("margin", "0");
        mesInner.css("top", "430px");

        let mesOuter = TYRANO.kag.getMessageOuterLayer();
        mesOuter.css("border-radius", "10px");
        mesOuter.css("background", "#357c93");
        mesOuter.css("box-shadow", "10px 10px #5e92a2");

        $("<div class='mesboxFace'></div>").appendTo(mesOuter);
    }
    $(".mesboxFace").text(face);

    is_mes_open = true;

    if(extra == "true")
    {
        let extraMark = $("<div class='extraMark'></div>");
        TYRANO.kag.getMessageOuterLayer().append(extraMark);

        extraMark.text("❗");
    }
    else
    {
        $(".extraMark").remove();
    }
}

function openGoal(title, text)
{
    TYRANO.kag.ftag.startTag("cm");
    TYRANO.kag.ftag.startTag("current", {
        "layer":"message0",
    });
    
    let mesInner = TYRANO.kag.getMessageInnerLayer();
    mesInner.css("background", "linear-gradient(#6190e8, #a7bfe8) fixed");
    mesInner.css("border-radius", "10px");
    mesInner.css("padding", "0px");
    mesInner.css("top", "-960px");
    mesInner.css("left", "50px");
    mesInner.css("width", "860px");
    mesInner.css("height", "540px");
    mesInner.animate({top: "50px"});
    
    let logo = $("<div class='titleLogo'></div>");
    mesInner.append(logo);
    logo.css("font-size", "80px");
    logo.css("top", "50px");
    logo.css("width", "100%");
    logo.css("text-align", "center");
    logo.text("ムジュン　ハッケン");
    
    let titleSp = $("<div class='goalText'></div>");
    mesInner.append(titleSp);
    titleSp.css("top", "250px");
    titleSp.text("作品名：" + title);

    let textSp = $("<div class='goalText'></div>");
    mesInner.append(textSp);
    textSp.css("top", "320px");
    textSp.html(text);
    
    mesInner.click(function(e) {
        mesInner.off();
        TYRANO.kag.ftag.startTag("jump", {"target":"finish"});
    });
}