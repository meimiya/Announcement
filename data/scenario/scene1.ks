[bg storage=d1.jpg time=0]
[black_in]





[iscript]
f.m = [
    ';　茜色の空を見上げながら、私はぼんやりと土手の上を歩いていた。',
    ';　庄川は地平の彼方までまっすぐ続いているが、土手の道は見渡す限り無人だ。',
    '子供のように手提げ袋を振り回しても、誰にも見とがめられない。',
    ';耳に届くのは鋭い風の音と、遠ざかっていくカラスの鳴き声だけ。',
    ';「うぅ、寒っ……。',
    'やっぱ電車通学にするんだったなぁ」',
    ';　私は両手を吐息で温め、その手で両の頬を包んだ。',
    '絶えず吹き付ける北風で、左の頬が冷たい。',
    ';　ふと背後に気配を感じて足を止める。',
    ';振り返るが、もちろん誰もいない。',
    '足元から長い影が土手の上に伸びているだけだった。',
    ';再び歩き出したが、気配は私にぴったり付いてくる。',
    ';　言いようのない不安に駆られ、私は土手の上を走り出した。',
    ';足がもつれ、派手に転んでしまう。',
    '急いで通学鞄をひっ掴み、転げ出た弁当箱を手提げ袋に戻して、私は『何か』から一目散に逃げ出した。'
]
f.m_length = f.m.length
f.page = [
    [0, 11],
    [12, 16],
]

f.m_taiyou = "　太陽は東にある。";
f.m_gekou = "　私は下校途中である。";

f.hint = 0;
[endscript]

[current layer=message0]

;[jump target=*think1]
[playbgm storage=halloween_sleep.ogg]

[line i=0]
[line i=1]
[line i=2]
[line i=3]
[line i=4]
[line i=5]
[line i=6]
[line i=7]
[line i=8]
[line i=9]
[line i=10]
[line i=11]
[line i=12]
[line i=13][cm]

*prologue
[mes_open face="😔"]
はーあ。[l]今日もいっぱい仕事が溜まってるなぁ。[p]
[mes_open face="😐"]
なになに？[l]「『通学路の恐怖』の１０ページ目に矛盾を検知。[l]適切に処理されたし」と？[p]
[mes_open face="😒"]
面倒だなぁ。[l]でもま、やるしかないよね。[p]
[mes_open face=""]
ワタシの仕事はノベルデバッガー。[p]
出版物、特に小説の誤りを処理して、矛盾のない物語を国民に届けるのが私の役目だ。[p]
でも、ワタシには小説の全体を読むことは許されていない。[p]
上流工程が矛盾を検知すると、ワタシのもとに矛盾を含む小説の抜粋が送られてくる。[p]
ワタシは矛盾の内容を指摘し、訂正担当者に伝えるだけだ。[p]
[mes_open face="😯"]
さてさて、まずは小説の内容を把握するところからだね。[p]
えーと、「茜色の空を」……？[p]
[mes_close]
[line i=0]
[line i=1]
[line i=2]
[line i=3]
[mes_open face="🤒"]細かい情景描写が続くね。[p]
[mes_open face="😏"]逢魔が時って感じの雰囲気作りだけど、ホラー小説の冒頭なのかな？[p]
[mes_close]
[line i=4]
[line i=5]
[line i=6]
[line i=7]
[mes_open face="😏"]何かが起こりそうな雰囲気だ。[p]
[mes_close]
[line i=8]
[line i=9]
[mes_open face="🤔"]足音がしたのに、振り返っても誰もいないこと……これが矛盾なのかな？[p]
[mes_open face="🤔"]いや、気のせいってこともあるか。[p]
[mes_close]
[line i=10]
[line i=11]
[line i=12]
[line i=13]
[mes_open face="😙"]抜粋はここまでだ。[l]ここからホラー展開に突入しそうな感じ。[p]
[mes_open face="😯"]あっ、校正指示書に条件が書いてある。[l]「オカルト、SFなし」だって？[p]
[mes_open face="😊"]つまり、現実世界を描いていることが大前提なんだ。[p]

*select1
[stopbgm]
[cm]
[mes_open face="😃"]
それじゃ、まず方針を立てよう。[p]
[playbgm storage=lens.ogg]
短いシーンの中から、小説としての食い違いを見つけ出すんだ。[p]
[mes_open face="🤔"]
一見普通のシーンだけど、粗を探すとしたら……[r]
[link_hover target=select1_a text="【１】通学路"]
[link_hover target=select1_b text="【２】長い影"]
[link_hover target=select1_c text="【３】背後の気配"]
[s]

*select1_a
[playse storage="select.ogg"]
[cm]
[mes_open face="😏"]
川の土手が通学路なんて、昔のドラマじゃあるまいし、どうなのかな？[p]
[mes_open face="🤒"]
でもま、矛盾ってほど引っかかりはしないなぁ。[p]
[jump target=*select1]

*select1_b
[playse storage="select.ogg"]
[cm]
[mes_open face="🤔"]
[image layer=0 visible=true page=fore storage=d1_1.jpg top=20 left=300 height=400]
背後を振り返ったら、足元に長い影が伸びている……。[p]
[image layer=0 visible=true page=fore storage=d1_2.jpg top=20 left=300 height=400]
夕日は西から差しているんだから、影は東に伸びる。[l]つまり〈私〉は、東から西に向かって歩いているんだ。[p]
[mes_open face="🙄"]
この土手の道は川に沿ってまっすぐ続いているって言ってるし、夕日に向かって歩いてることは間違いなさそう。[p]
[mes_open face="😦"]
……ん？[l]　あれ、ひょっとして……。[p]
[mes_open face="😃"]
よく考えると、それと矛盾する描写がある！[l]
[freeimage layer=0]
[layopt layer=0 visible=false]
[jump target=think1]

*select1_c
[playse storage="select.ogg"]
[cm]
[mes_open face="😦"]
背後に気配を感じて振り向いたけど、誰もいなかった……。[p]
これも矛盾って言えば矛盾みたいなものだけど、人目を気にする人なら、何もないのに気配を感じることもあるよね、きっと。[p]
[mes_open face="😔"]
早い話が「気のせい」で片づけられる。[l]もしくは、本当に尾行されているのかもしれない。[p]
[mes_open face="🤔"]
どっちにせよ、「現実ではありえない」とまでは言えないかな。[p]
[jump target=*select1]

*think1
[mes_close]
[think count_max=1 storage=scene1.ks answer=think1_answer note=think1_note text="背後に長い影が伸びていることと矛盾する文は？"]

*think1_note
[mes_open face="🤔"]
[image layer=0 visible=true page=back storage=d1_2.jpg top=20 left=300 height=400]
夕日の影は東に伸びる。つまり〈私〉が進んでいる方向は東だ。[p]
どこかに方角について述べている箇所はないかな？[p]
[freeimage layer=0]
[layopt layer=0 visible=false]
[jump target=think1]

*think1_answer
[mes_open face="🤔"]
[if exp="f.checked[0] != 7"]
    んー……。[p]
    いまいちピンと来ない……。[l]もう一度考えてみよう。[p]
    [jump target=think1]
[endif]
[mes_open face="😄" extra=true]
これだ！[p]
[image layer=0 visible=true page=back storage=d1_2.jpg top=20 left=300 height=400]
北から吹く風で左の頬が冷たくなっている。[l]つまり、進行方向に対して左側が北だと〈私〉は言っている。[p]
[mes_open face="😁"]
けど影は背後に伸びているんだから、〈私〉は西に歩いていることになる。[l]西に向かっているなら、左は南になるはずだ。[p]
[mes_open face="😉"]
つまり、この二つの描写は矛盾する！[p]
[freeimage layer=0]
[layopt layer=0 visible=false]
[mes_open face="😐"]
……。[p]
[mes_open face="😒"]
あ、あれ？[p]
まだ何か引っかかるような……。[p]
[mes_open face="😲"]
あっ！　しまった！[p]
[mes_open face="😒"]
私の証明は不完全だったんだ。[l]よく見たらこの文章、あのことについて一言も触れてない。[p]
*select2
[mes_open face="😒"]
そう、つまりここには[r]
[link_hover target=select2_a text="【１】時間が書いてない"]
[link_hover target=select2_b text="【２】場所が書いてない"]
[link_hover target=select2_c text="【３】名前が書いてない"]
[s]

*select2_a
[playse storage="select.ogg"]
[cm]
[mes_open face="😥"]
そう、ここには時間が書いてない。[p]
カラスや茜色の空で夕方だと思い込んでいたけど、現在の時刻が夕方かどうか、その前提がなかったんだ。[p]
考えてみれば、空が茜色に染まるのは夕方だけじゃない。[p]
朝焼けだ。このシーンは実は早朝で、私は東に向かって歩いている。[l]――そう考えれば、何も矛盾なんてないんだ。[p]
[mes_open face="😩"]
うぅ、振り出しに戻っちゃった……。[p]
[mes_open face="😔"]
……いや、振り出しじゃない。[l]少なくとも「太陽は東にある」って新事実を導くことはできた。[p]
こうやって本文から新たな事実を導出していけば、そのうち矛盾にたどり着けるかもしれない。[p]
[mes_open face="🙂"]
よし。新事実を本文に追記して、改めて矛盾を探そう。[p]
矛盾がすぐに見つからないときは、書かれている文章から新しい事実を導けるかもしれない。[p]
[jump target=*think2]

*select2_b
[playse storage="select.ogg"]
[cm]
[mes_open face="🤫"]
いや、庄川って地名は明記してる。[l]見晴らしがいいってことはきっと下流の方だな。[p]
それよりもっと重要な書き落としがある。それは――[p]
[jump target=*select2_a]

*select2_c
[playse storage="select.ogg"]
[cm]
[mes_open face="🤭"]
確かに、この〈私〉が何者なのかははっきりしない。[l]私に似てるけど、もしかしたら別人なのかも。[p]
でも、もっと重要な書き落としがある。それは――[p]
[jump target=*select2_a]

*think2
[iscript]
    f.m.push(f.m_taiyou);
[endscript]

*think2_main
[mes_close]
[think count_max=2 storage=scene1.ks answer=think2_answer note=think2_note]

*think2_note
[mes_open face="🤔"]
これまで気付いたことは……。[p]
[pickupLines a="f.m[6]" b="f.m[9]"]
この二つの文から、影は西に伸びていることがわかる。太陽は東にあるんだ。[p]
[cm]
[if exp="16 < f.m.length"]
    [pickupLines a="f.m[2]" b="f.m[14]"]
    この二つの文から、手提げ袋の中の弁当箱は空だ。[l]つまり、私は下校中だと考えていい。[p]
    [cm]
[endif]
[if exp="f.hint"]
    手提げ袋に言及している文が二か所ある。この二つから、何か新しい事実を導けないかな。[p]
[endif]
[cm]
[jump target=*think2_main]

*think2_answer
[if exp="hit_count([f.m_taiyou, f.m_gekou]) == 2"]
    [jump target=*goal]
[endif]
[if exp="hit_count([2, 14]) == 2"]
    [mes_open face="🤔" extra=true]
    ……む？[p]
    [mes_open face="🤔"]
    手提げ袋を子供のように振り回していた、だって？[p]
    手提げ袋には弁当箱が入っていたはずだよね？[p]
    [mes_open face="😑"]
    いくら行儀が悪い子でも、お弁当の入った袋を振り回したりしないよね。[p]
    [mes_open face="😒"]
    ってことは、弁当箱は空だったんじゃない？[p]
    そうだ、きっとそうだよ。[p]
    これは登下校中の１シーンだけど、学校に行くのに空の弁当箱を持っていくなんて考えにくい。[p]
    [mes_open face="😌"]
    つまり、〈私〉は下校しているところなんだ。[p]
    これは新しい事実って言っちゃっていいよね。[l]追記しておこう。[p]
    [mes_open face="😋"]
    よし。多分、ゴールまであと一歩だ。[p]
    [iscript]
        f.m.push(f.m_gekou);
        f.hint = false;
    [endscript]
    [jump target=*think2_main]
[endif]
[if exp="hit_count([2, 14]) == 1"]
    [mes_open face="🤔"]
    ……ん？　手提げ袋？[p]
    確か、手提げ袋に言及していた場所がもう一つあったような……。[p]
    [eval exp="f.hint = true"]
    [jump target=*think2_main]
[endif]
[mes_open face="😬"]
うーん……。[p]
[jump target=*think2_main]

*goal
[stopbgm]
[flash]
[mes_open face="😑"]
……。[p]
[playbgm storage=lens.ogg]
[pickupLines a="f.m[2]" b="f.m[14]"]
[mes_open face="😌"]
〈私〉は手提げ袋を振り回しながら道を歩いている。[p]
転んだとき、その袋には弁当箱が入っていたことが判明する。[p]
[mes_open face="🙂"]
ということは、弁当箱は空だったんだ。[l]〈私〉がどれだけやんちゃでも、弁当が入った袋を振り回したりはしないよね。[p]
[mes_open face="😃"]
私の呟きからすると、これは登校中か下校中のどちらかだ。[l]登校中なら当然弁当は入っているはず。[p]
つまりこれは下校中――夕方の一幕で間違いない！[p]
[mes_open face="😆"]
[pickupLines a="f.m_taiyou"]
ってことは、やっぱり影の向きが方角と矛盾している！[p]
[mes_close]

[eval exp="openGoal('通学路の恐怖', '〈私〉の進行方向と太陽の方角、現在時刻の三点に<br/>矛盾を認める。<br/>適切に処理されたし。')"]
[s]

*finish
[black_out]
[cm]

[jump storage=first.ks target=*title]