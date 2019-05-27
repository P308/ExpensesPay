    /**
     * [関数名] chkHissu
     * [機　能] 必須項目入力チェック
     * [説　明] フォーム送信時に必須項目が全て入力されているか調べる
     * [引　数]
     * @param frm フォームオブジェクト
     * [返り値]
     * @return true(必須項目が全て入力されている場合) | false(未入力がある場合)
    */

    function newPassCheck(newPass2){
        const pass1 = document.getElementById("newPass1").value;
        const pass2 = document.getElementById("newPass2").value;

        console.log(pass1);
        console.log(pass2);

        if(pass1 != pass2){
            newPass2.setCustomValidity("入力値が一致しません。");
		}else{
			newPass2.setCustomValidity('');
		}
    }