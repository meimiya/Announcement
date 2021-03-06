function hit_count(lines)
{
    var tf = TYRANO.kag.variable.tf;
    var count = 0;
    for(var i = 0; i < lines.length; i++)
    {
        if(typeof lines[i] == "string")
        {
            var idx = tf.m.indexOf(lines[i]);
            if(tf.checked.indexOf(idx) != -1)
            {
                count++;
            }
        }
        else if(tf.checked.indexOf(lines[i]) != -1)
        {
            count++;
        }
    }
    return count;
}

function refresh_question(mp)
{
    var tf = TYRANO.kag.variable.tf;
    var text = "矛盾を構成する文を選択せよ。";
    if("text" in mp)
    {
        text = mp.text;
    }
    if (1 < mp.count_max)
    {
        text += "(" + tf.checked.length + "/" + mp.count_max + ")";
    }
    question.text(text);

    answer_button.css("opacity", tf.checked.length == mp.count_max ? "1" : "0.4");
}

function setHover(sp)
{
    sp.hover(
        function() { 
            sp.css({
                "background":"rgba(255, 192, 128, 0.5)",
                "-moz-transition":"all 0.2s ease",
                "-webkit-transition":"all 0.2s ease",
                "transition":"all 0.2s ease"
            });
        },
        function() { 
            sp.css({ "background":"none" });
        }
    );
}

//  一文を追加
function setLink(kag, mp, i)
{
    var tf = TYRANO.kag.variable.tf;
    span.push(kag.setMessageCurrentSpan());
    var sp = span[i - tf.page[tf.p][0]];
    sp.css("padding", "3px");

    var text = tf.m[i];
    var selectable = true;
    while (text[0] == ";")
    {
        text = text.substring(1);
        selectable = false;
    }
    if(selectable)
    {
        sp.css("cursor", "pointer");
        sp.click(function(e) {
            TYRANO.kag.ftag.startTag("playse", {"storage":"select.ogg"});
            if (0 <= tf.checked.indexOf(i))
            {
                tf.checked.splice(tf.checked.indexOf(i), 1);
            }
            else
            {
                if(parseInt(mp.count_max) == tf.checked.length)
                {
                    tf.checked[tf.checked.length - 1] = i;
                }
                else
                {
                    tf.checked.push(i);
                }
            }
            for(var ii = 0; ii < span.length; ii++)
            {
                let _i = ii + tf.page[tf.p][0];
                span[ii].css("color", 0 <= tf.checked.indexOf(_i) ? "red" : (_i < tf.m_length ? "white" : "lightgreen"));
            }
            refresh_question(mp);
        });
        setHover(sp);
        sp.css("opacity", "1");
    }
    else
    {
        sp.css("opacity", "0.5");
    }

    kag.ftag.startTag("text", {"val":text});

    if (i + 1 < tf.m.length)
    {
        text = tf.m[i + 1];
        while (text[0] == ";")
        {
            text = text.substring(1);
        }
        if(rch.indexOf(text[0]) != -1)
        {
            TYRANO.kag.ftag.startTag("r");
        }
    }
    sp.css("color", 0 <= tf.checked.indexOf(i) ? "red" : (i < tf.m_length ? "white" : "lightgreen"));
}

function setPageButton(that, mp, i)
{
    var tf = TYRANO.kag.variable.tf;
    var jtext = that.getMessageInnerLayer();
    var sp = $("<span class='page_button'></span>");
    page_button.push(sp);
    jtext.find("p").append(sp);
    
    button_css["padding"] = "3px 35px 3px 35px";
    button_css["top"] = "500px";
    button_css["font-size"] = "28px";
    button_css["color"] = tf.p == i ? "#e7e6e4" : "#5e92a2";
    button_css["background"] = tf.p == i ? "#5e92a2" : "#e7e6e4";
    button_css["box-shadow"] = "10px 10px " + button_css["color"];
    if(i == 0)
    {
        button_css["left"] = "10px";
        sp.text("PAGE " + (i + 1));
    }
    else
    {
        button_css["left"] = (90 + i * 105) + "px";
        sp.text("" + (i + 1));
    }
    sp.css(button_css);
    sp.hover(
        function(){
            sp.css("background", "#b7c6d4");
        }, function(){
            sp.css("background", tf.p == i ? "#5e92a2" : "#e7e6e4");
        }
    );
    sp.click(function(e) {
        TYRANO.kag.ftag.startTag("playse", {"storage":"page.ogg"});
        tf.p = i;
        setupPage(that, mp);
    });
}

function setupPage(that, mp)
{
    var tf = TYRANO.kag.variable.tf;
    that.kag.ftag.startTag("cm", {});
    that.kag.ftag.startTag("nowait", {});

    button_css = {
        "cursor":"pointer",
        "position":"absolute",
        "color":"#5e92a2",
        "background":"#e7e6e4",
        "border-radius":"10px",
        "box-shadow":"10px 10px #5e92a2",
        "padding":"3px 35px 3px 35px",
        "font-size":"28px",
        "-moz-transition":"all 0.2s ease",
        "-webkit-transition":"all 0.2s ease",
        "transition":"all 0.2s ease"
    };

    //---------------------------------------------------------------------
    //  本文
    that.kag.stat.font = $.extend(true, {}, that.kag.stat.default_font);
    //  current
    that.kag.stat.current_layer = "message0";
    that.kag.stat.current_page = "fore";
    span = [];
    for (var i = tf.page[tf.p][0]; i <= tf.page[tf.p][1] && i < tf.m.length; i++)
    {
        setLink(that.kag, mp, i);
    }

    var jtext = that.getMessageInnerLayer();

    //---------------------------------------------------------------------
    //  ANSWER
    if (jtext.find("p").find(".answer_button").length > 0)
    {
        jtext.find("p").find(".answer_button").removeClass("answer_button");
    }
    answer_button = $("<span class='answer_button'></span>");
    jtext.find("p").append(answer_button);
    button_css["top"] = "560px";
    button_css["left"] = "760px";
    button_css["padding"] = "5px 20px 5px 20px";
    button_css["font-size"] = "30px";
    answer_button.css(button_css);
    answer_button.hover(
        function(){
            answer_button.css("background", "#b7c6d4");
        }, function(){
            answer_button.css("background", "#e7e6e4");
        }
    );
    answer_button.click(function(e) {
        if(tf.checked.length != parseInt(mp.count_max))
        {
            return;
        }
        TYRANO.kag.ftag.startTag("playse", {"storage":"decide.ogg"});
        that.kag.ftag.startTag("cm");
        that.kag.layer.showEventLayer();
        that.kag.ftag.nextOrderWithLabel(mp.answer, mp.storage);
        question.css("opacity", "0");
        if (that.kag.stat.skip_link == "true")
            e.stopPropagation();
        else
            that.kag.stat.is_skip = false
    });
    answer_button.text("ANSWER");

    //---------------------------------------------------------------------
    //  NOTE
    if("note" in mp)
    {
        if (jtext.find("p").find(".note_button").length > 0)
        {
            jtext.find("p").find(".note_button").removeClass("note_button");
        }
        var note_button = $("<span class='note_button'></span>");
        jtext.find("p").append(note_button);
        note_button.css("cursor", "pointer");
        note_button.css("position", "absolute");
        button_css["top"] = "560px";
        button_css["left"] = "0px";
        button_css["padding"] = "5px 20px 5px 20px";
        button_css["font-size"] = "30px";
        note_button.css(button_css);
        note_button.hover(
            function(){
                note_button.css("background", "#b7c6d4");
            }, function(){
                note_button.css("background", "#e7e6e4");
            }
        );
        note_button.click(function(e) {
            TYRANO.kag.ftag.startTag("playse", {"storage":"decide.ogg"});
            that.kag.ftag.startTag("cm");
            that.kag.layer.showEventLayer();
            that.kag.ftag.nextOrderWithLabel(mp.note, mp.storage);
            question.css("opacity", "0");
            if (that.kag.stat.skip_link == "true")
                    e.stopPropagation();
                else
                    that.kag.stat.is_skip = false
        });
        note_button.text("NOTE");
    }

    //---------------------------------------------------------------------
    //  Page
    while (jtext.find("p").find(".page_button").length > 0)
    {
        jtext.find("p").find(".page_button").removeClass("page_button");
    }
    page_button = [];
    for(var i = 0; i < tf.page.length; i++)
    {
        setPageButton(that, mp, i);
    }

    //---------------------------------------------------------------------
    //  問題文
    question = $("<span class='question'></span>");
    jtext.find("p").append(question);
    button_css["color"] = "#e7e6e4";
    button_css["top"] = "560px";
    button_css["left"] = "150px";
    button_css["width"] = "550px";
    button_css["padding"] = "5px 20px 5px 20px";
    button_css["font-size"] = "22px";
    button_css["background"] = "#357c93";
    button_css["box-shadow"] = "10px 10px #5e92a2";
    question.css(button_css);

    refresh_question(mp);
    
    that.kag.ftag.startTag("endnowait", {});
}
