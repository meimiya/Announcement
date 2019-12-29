var __tyrano_key_config = {

    //キーボード操作 
    "key" : {
        "32" : "hidemessage", //Space
        "13" : "next", // Enter
        "91" : "skip", //Command(Mac)  
        "17" : "skip", //Ctrl (Windows)
        "67":function(){ }
    },

    //マウス操作
    "mouse" : {
        "right" : "hidemessage", //右クリックの動作
        "center": "next", //センターボタンをクリック
        "wheel_up" : "next", // ホイールをアップした時の動作
        "wheel_down" : "next" //ホイールをダウンした時の動作
    },
    
    //ジェスチャー
    "gesture" : {
        "swipe_up_1" : {
            "action" : "next"
        },
        "swipe_left_1" : {
            "action" : "auto"
        },
        "swipe_right_1" : {
            "action" : "next"
        },
        "swipe_down_1" : {
            "action" : "next"
        },
        
        "hold" : {
            "action" : "skip",
        }
    }

}; 