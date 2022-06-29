$("#loginBtn").click(function () {
    $.ajax({
        type: "Post",
        url: "login",
        processData: false,
        contentType: false,
        data: {
            id: $("#log_id").val(),
            password: $("#log_password").val()
        },
        success: function () {
            location.reload();
        }, // success
        error: function () {
            alert('로그인이 실패하였습니다.')
        } // error
    }); // ajax
}); // loginBtn



function idCheck() {
    var id = $('#id').val();
    if (id.trim() == "") {
        $('#iMessage').html(' 아이디를 입력해주세요! ');
        return false;
    } else if (id.replace(/[a-z.0-9]/gi, '').length > 0) {
        $('#iMessage').html(' ID는 영문자,숫자 로만 입력하세요. !! ');
        return false;
    } else if (id.length < 6 || id.length > 12) {
        $('#iMessage').html(' ID 길이는 6글자에서 12글자 사이 입니다. ');
        return false;
    } else {
        $('#iMessage').html('');
        return true;
    };
}; // idCheck

function pwCheck() {
    var password = $('#password').val();
    if (password.trim() == "") {
        $('#pMessage').html('비밀번호를 입력해주세요!')
        return false;
    } else if (password.length < 8 || password.length > 20) {
        $('#pMessage').html(' 비밀번호는 8글자에서 20글자 사이입니다. ');
        return false;
    } else if (password.replace(/[!-.@]/gi, '').length > password.length) {
        // 비교 : replace(/[!.@.#.$.%.^.&.]/gi ,'')
        $('#pMessage').html(' Password 에는 특수문자가 반드시 포함 되어야 합니다. !!');
        return false;
    } else if (password.replace(/[a-z.0-9.!-*.@]/gi, '').length > 0) {
        $('#pMessage').html(' Password 는 영문자, 숫자, 특수문자 로만 입력하세요. !!');
        return false;
    } else {
        $('#pMessage').html('');
        return true;
    };
}; //pwCheck

function nickCheck() {
    var nickname = $('#nickname').val();
    if (nickname.trim() == "") {
        $('#nMessage').html('닉네임을 적어주세요');
        console.log(iCheck, pCheck, nCheck, bCheck)
        return false;
    } else if (nickname.length < 2 || nickname.length > 6) {
        $('#nMessage').html(' 닉네임 길이는 2글자에서 6글자 사이 입니다. ');
        return false;
    } else if (nickname.replace(/[a-z.0.9.ㄱ-ㅣ가-힣]/gi, '').length > 0) {
        $('#nMessage').html(' 닉네임은 영문자,숫자,한글로만 입력하세요. !!');
        $('#nMessage').focus();
        return false;
        console.log()
    } else {
        $('#nMessage').html('');
        return true;
    };
};

function birthCheck() {
    return true;
};

var iCheck = false;
var pCheck = false;
var nCheck = false;
var bCheck = false;
$(document).ready(function () {
    $('#id').focus();
    $('#id').keydown(function (e) { // 
        if (e.which == 9 || e.which == 13) {
            e.preventDefault();
            $('#password').focus();
        }

    }).focusout(function () {
        iCheck = idCheck();
    })

    $('#password').keydown(function (e) {
        if (e.which == 9 || e.which == 13) {
            e.preventDefault();
            $('#nickname').focus();
        }
    }).focusout(function () {
        pCheck = pwCheck();
    }); //password

    $('#nickname').keydown(function (e) {
        if (e.which == 9 || e.which == 13) {
            e.preventDefault();
            $('#birthday').focus();
        }
    }).focusout(function () {
        nCheck = nickCheck();
    }); //name

    $('#birthday').keydown(function (e) {
        if (e.which == 9 || e.which == 13) {
            e.preventDefault();
            $('#joinBtn').focus();
        }
    }).focusout(function () {
        bCheck = birthCheck();
    }) //birthd
})

function inCheck() {
    if (iCheck == false) {
        $('#iMessage').html('아이디를 입력하세요');
    }
    if (pCheck == false) {
        $('#pMessage').html('비밀번호를 입력하세요');
    }
    if (nCheck == false) {
        $('#nMessage').html('닉네임을 입력하세요');
    }
    if (bCheck == false) {
        $('#bMessage').html('생일을 입력하세요');
    }

    if (iCheck && pCheck && nCheck && bCheck) {
        // submit 확인
        if (confirm(" 정말루 가입할겁니가? ") == false) {
            alert('가입 취소');
            return false;
        } else {
            let formData = {
                id: $('#id').val(),
                password: $('#password').val(),
                nickname: $('#nickname').val(),
                birthday: $('#birthday').val(),
            }
            $.ajax({
                type: 'Post',
                url: 'join',
                processData: false,
                contentType: false,
                data: formData,
                success: function () {
                    alert('회원가입 완료! 로그인해주세요');
                },
                error: function () {
                    alert('회원가입이 실패하였습니다.')
                }
            }); //ajax
            return true;
        }
    } else return false;

} //inCheck