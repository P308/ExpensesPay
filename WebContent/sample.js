    /**
     * [関数名] chkHissu
     * [機　能] 必須項目入力チェック
     * [説　明] フォーム送信時に必須項目が全て入力されているか調べる
     * [引　数]
     * @param frm フォームオブジェクト
     * [返り値]
     * @return true(必須項目が全て入力されている場合) | false(未入力がある場合)
    */
    function chkHissu(frm){
        /* 必須入力のname属性 */
        const hissu=Array("id","pass");
        /* アラート表示用 */
        const hissu_nm = Array("社員id","パスワード");
        /* 必須入力の数 */
        const len=hissu.length;
        for(i=0; i<len; i++){
            let obj=frm.elements[hissu[i]];
            /* テキストボックス or テキストエリアが入力されているか調べる */
            if(obj.type=="text" || obj.type=="password"){
                if(obj.value==""){
                    /* 入力されていなかったらアラート表示 */
                    alert(hissu_nm[i]+"を入れてください");
                    /* 未入力のエレメントにフォーカスを当てる */
                    frm.elements[hissu[i]].focus();
                    return false;
                }
            }
        }
        /* 必須入力項目が全て入力されている場合はtrueを返してフォーム送信 */
        return true;
    }