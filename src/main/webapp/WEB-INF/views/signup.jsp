<%@ page contentType="text/html; charset=utf-8" %>

<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <link rel="shortcut icon" href="/resources/img/favicon.ico" type="image/x-icon">

    <!-- Semantic ui library -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/semantic-ui/2.4.1/semantic.min.js"></script>
    <style>
        @font-face{
            font-family: "2hour";
            src : url("/resources/vendor/fonts/2hour.ttf");
        }
        
        p{
            font-size : 20px;
            font-family : "2hour";
        }

        .grid {
            height: 100%;
        }
        .wrapper {
            width: 80rem !important;
            box-shadow: 0 0 15px 5px #ddd;
        }
        
        .six.wide {
            height: 45rem;
        }
        .pt {
            position: absolute;
            right: -2.5rem;
            bottom: 50%;
            background: #2185d0;
            width: 5rem;
            height: 5rem;
            border-radius: 100%;
            border: 0.75rem solid white;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .form {
            margin: 0 3rem;
        }
        input {
            border-radius: 10rem !important;
        }
        .blue {
            background:#01509e;
        }
        .description {
            padding: 0 3rem !important;
        }
        input::placeholder
        {
            font-family : '2hour';
        }
    </style>
    <script>
        $(document).ready(function() {
            $("input").focus(function(event) {
                $("#title").html($(this).attr("placeholder"));
                $("#desc").html($(this).attr("description"));
            });
            $('.ui.form').form({
                inline : true,
                fields: {
                    email: {
                        identifier  : 'email',
                        rules: [
                            // {
                            //     type   : 'empty',
                            //     prompt : '????????????????????? ?????????.'
                            // },
                            {
                                type   : 'email',
                                prompt : '????????? ???????????? ???????????????.'
                            }
                        ]
                    },
                    password: {
                        identifier: 'pass',
                        rules: [
                            // {
                            //     type   : 'empty',
                            //     prompt : '??????????????? ???????????????.'
                            // },
                            {
                                type   : 'length[6]',
                                prompt : '??????????????? 6??? ???????????????.'
                            }
                        ]
                    },
                    pass2: {
                        identifier: 'pass2',
                        rules: [
                            {
                                type: 'match[pass]',
                                prompt: '??????????????? ???????????? ????????????.'
                            }
                        ]
                    },
                    nick: {
                        identifier: 'nick',
                        rules: [
                            {
                                type: 'length[2]',
                                prompt: '???????????? ????????? ?????? 2?????? ?????????.'
                            },
                            {
                                type: 'maxLength[10]',
                                prompt: '???????????? ????????? ?????? 10?????? ?????????.'
                            }
                        ]
                    },
                    birthday: {
                        identifier: 'birthday',
                        rules: [
                            {
                                type: 'empty',
                                prompt: '????????? ????????? ?????????'
                            }
                        ]
                    }
                }
            });
        });
    </script>
</head>
<body>
    <div class="ui middle aligned center aligned grid">
        <div class="column wrapper">
            <div class="ui middle aligned grid">
                <div class="six wide blue column">
                    <div class="ui middle aligned center aligned grid">
                        <div class="column description">
                            <h1 id="title" style="font-family : '2hour'; font-size: 40px;">?????????</h1>
                            <p id="desc">?????? ??? ?????? ???????????? ???????????? ????????????</p>
                            <div class="pt">
                                <i class="envira big icon"></i>
                            </div>
                        </div>
                    </div>
                </div>    
                <div class="ten wide column">
                    <div class="ui grid">
                        <div class="column">
                            <h2 class="ui blue image header">
                                <!-- <img src="assets/images/logo.png" class="image"> -->
                                <div class="content" style="font-family : '2hour'; font-size: 30px;">
                                    ????????????
                                </div>
                            </h2>
                            <form class="ui large form" method="POST" action="/signup">
                                <div class="ui vertical segment">
                                    <div class="field">
                                        <div class="ui left icon input">
                                            <i class="envelope icon"></i>
                                            <input type="text" name="email" placeholder="????????? ??????" description="????????? ????????? ???????????????. <br>?????? ????????? ??????????????? <br>????????? ???????????? ????????? ?????????.">
                                        </div>
                                    </div>
                                    <div class="two fields">
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="lock icon"></i>
                                                <input type="password" name="pass" placeholder="????????????" description="???????????? ????????? ??????????????? ???????????????. <br>??????6?????? ?????? ???????????? ?????????.">
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="lock icon"></i>
                                                <input type="password" name="pass2" placeholder="???????????? ??????" description="????????? ????????? ???????????? ??????????????? ???????????????.">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="two fields">
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="address card icon"></i>
                                                <input type="text" name="nick" placeholder="?????????" description="???????????? ?????? ???????????? ????????? ?????????.">
                                            </div>
                                        </div>
                                        <div class="field">
                                            <div class="ui left icon input">
                                                <i class="birthday cake icon"></i>
                                                <input type="date" name="birthday" placeholder="????????????" description="???????????? ???????????????.<br> ??????????????? ????????? ?????? ????????????.">
                                            </div>
                                        </div>
                                    </div>
                                    <button class="ui blue fluid circular button" style="font-family : '2hour'; font-size:18px;">????????????</button>
                                </div>
                                <div class="ui error message"></div>
                                <div class="ui message">
                                    ??????????????? <a href="/" style="font-family : '2hour'; font-size:18px;">????????????</a><br>
                                    <%-- <a href="/">????????????</a>??? ???????????? --%>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>    
            </div>
        </div>
    </div>
</body>
</html>