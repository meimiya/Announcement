function showTitle()
{
    TYRANO.kag.stat.current_layer = "message0";
    let mesOuter = TYRANO.kag.getMessageOuterLayer();
    mesOuter.css("background", "linear-gradient(#112244, #1D62F0) fixed");
    let mesInner = TYRANO.kag.getMessageInnerLayer();
    mesInner.css("background", "transparent");

    let left = 30;
    for (let i = 0; i < "ノベルデバッガー".length; i++) {
        let logo = $("<div class='titleLogo'></div>");
        mesInner.append(logo);
        let width = i == 0 || i == 3 ? 140 : 100;
        logo.css("font-size", width + "px");
        logo.css("top", (180 - width) + "px");
        logo.css("left", left + "px");
        logo.css("animation-delay", (i * 0.1) + "s");
        logo.text("ノベルデバッガー"[i]);
        left += width;
    }

    let face = $("<div class='titleFace'></div>");
    mesInner.append(face);
    face.text("😀");

    let button1 = $("<div class='chapterButton'></div>");
    mesInner.append(button1);
    button1.css("top", "300px");
    button1.text("第一問　通学路の恐怖");
    button1.click(function(e) {
        TYRANO.kag.ftag.startTag("jump", {"target":"scene1"});
    });
    button1.hover(function(){
        face.text("😉");
    }, function(){
        face.text("😀");
    });

    let button2 = $("<div class='chapterButton'></div>");
    mesInner.append(button2);
    button2.css("top", "400px");
    button2.text("第二問　ノーブレーキ・トゥ・ヘブン");
    button2.click(function(e) {
        TYRANO.kag.ftag.startTag("jump", {"target":"scene2"});
    });
    button2.hover(function(){
        face.text("😕");
    }, function(){
        face.text("😀");
    });
/*
    let button3 = $("<div class='chapterButton'></div>");
    mesInner.append(button3);
    button3.css("top", "500px");
    button3.text("第三問　密室トリック破れたり");
    button3.click(function(e) {
        TYRANO.kag.ftag.startTag("jump", {"target":"scene3"});
    });
    button3.hover(function(){
        face.text("🤔");
    }, function(){
        face.text("😀");
    });
*/
}

function clearTitle()
{
    TYRANO.kag.ftag.startTag("cm");
    TYRANO.kag.ftag.startTag("layopt", {"layer":"message1", "visible":"false"});
    let mesOuter = TYRANO.kag.getMessageOuterLayer();
    mesOuter.css("background", "black");
    mesOuter.css("opacity", "0.5");
}