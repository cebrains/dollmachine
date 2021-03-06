<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Basic Page Needs
    ================================================== -->
    <meta charset="utf-8">
    <!--[if IE]><meta http-equiv="x-ua-compatible" content="IE=9" /><![endif]-->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>{{if (eq .newUrlPath "index.html")}}{{.homeTitle}}{{else}}{{.dataTitle}}{{.suffixTitle}}{{end}}</title>
    <meta name="description" content="gorose, 一个小巧强悍的go语言数据库操作orm, 灵感来源于laravel的数据库操作orm, 也就是eloquent, 风骚的链式操作, 会让php、python、ruby开发者毫无抵抗力的爱上gorose">
    <meta name="keywords" content="gorose,goorm,orm,golang">
    <meta name="author" content="https://github.com/gohouse/gorose">
    <link rel="stylesheet" type="text/css"  href="https://cdn.bootcss.com/bootstrap/3.3.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="{{.fixLink}}static/css/semantic.min.css">
    <link rel="stylesheet" href="{{.fixLink}}asset/css/style.css">
    
    <!-- Favicons
    ================================================== -->
    <link rel="shortcut icon" href="{{.fixLink}}static/img/favicon.ico" type="image/x-icon">
    <!-- <link rel="apple-touch-icon" href="img/apple-touch-icon.png">
    <link rel="apple-touch-icon" sizes="72x72" href="img/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="114x114" href="img/apple-touch-icon-114x114.png"> -->
    
    <!-- <link rel="stylesheet" type="text/css" href="fonts/font-awesome/css/font-awesome.css"> -->

    <!-- Stylesheet
    ================================================== -->
    <link rel="stylesheet" type="text/css"  href="{{.fixLink}}static/css/style_base.css">
    <link rel="stylesheet" type="text/css" href="{{.fixLink}}static/css/responsive.css">

   <!--  <script type="text/javascript" src="js/modernizr.custom.js"></script> -->

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <style>
    pre code {
        white-space: unset !important;
    }
  </style>
  <body>
    <div id="tf-home">
        <div class="overlay">
            <div id="sticky-anchor"></div>
            <nav id="tf-menu" class="navbar navbar-default">
                <div class="container">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                      </button>
                      <a class="navbar-brand logo" href="{{.fixLink}}index.html">Gorose</a>
                    </div>

                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                      <ul class="nav navbar-nav navbar-right">
                        <li><a href="{{.fixLink}}index.html">Home</a></li>
                        <li>
                            <a href='{{if (eq .dataTitle "English document")}}{{.fixLink}}zh-cn/index.html{{else}}{{.fixLink}}en/index.html{{end}}'>&nbsp;{{if (eq .dataTitle "English document")}}中文文档{{else}}En-DOC{{end}}&nbsp;</a>
                        </li>
                        <li><a href="#tf-portfolio">Install</a></li>
                        <li><a href="https://github.com/gohouse/gorose" target="_blank"><img data-v-59c1650e="" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBzdGFuZGFsb25lPSJubyI/PjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+PHN2ZyB0PSIxNTA0NjgwOTI2NTgxIiBjbGFzcz0iaWNvbiIgc3R5bGU9IiIgdmlld0JveD0iMCAwIDEwMzIgMTAyNCIgdmVyc2lvbj0iMS4xIiB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHAtaWQ9IjQyNzAiIHhtbG5zOnhsaW5rPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5L3hsaW5rIiB3aWR0aD0iMjAxLjU2MjUiIGhlaWdodD0iMjAwIj48ZGVmcz48c3R5bGUgdHlwZT0idGV4dC9jc3MiPjwvc3R5bGU+PC9kZWZzPjxwYXRoIGQ9Ik0wIDUxNS44NzJDMCA3NDEuMTIgMTQ0LjM1MiA5MzIuNjQgMzQ1LjU4NCAxMDAyLjk3NmMyNy4xMiA2Ljg5NiAyMi44OTYtMTIuNTQ0IDIyLjg5Ni0yNS42MTZsMC04OS40MjRjLTE1Ni40NjQgMTguMzA0LTE2Mi43MzYtODUuMjgtMTczLjI5Ni0xMDIuNjA4LTIxLjMxMi0zNi4yNzItNzEuMzkyLTQ1LjQ4OC01Ni40MzItNjIuNzUyIDM1LjY5Ni0xOC40MzIgNzEuOTY4IDQuNjA4IDExNCA2Ni43ODQgMzAuNDY0IDQ1LjA3MiA4OS42NjQgMzcuNTA0IDExOS45MzYgMjkuOTM2IDYuNjI0LTI3LjA1NiAyMC43MDQtNTEuMiAzOS45NTItNzAuMDgtMTYxLjg4OC0yOC44MTYtMjI5LjU1Mi0xMjcuNzkyLTIyOS41NTItMjQ1LjQ0IDAtNTYuOTQ0IDE4LjgtMTA5LjUwNCA1NS44MDgtMTUxLjg1Ni0yMy40MDgtNjkuODg4IDIuMjU2LTEyOS40NzIgNS42MTYtMTM4LjQxNiA2Ni45MjgtNi4wOCAxMzYuNTEyIDQ3Ljg3MiAxNDEuODcyIDUyLjEyOCAzOC4xMjgtMTAuMTkyIDgxLjUyLTE1Ljc2IDEzMC4wNjQtMTUuNzYgNDguODQ4IDAgOTIuNDggNS42MzIgMTMwLjc4NCAxNS45NTIgMTMuMDcyLTkuOTUyIDc3LjU4NC01Ni4xOTIgMTM5LjgyNC01MC41NDQgMy4zMTIgOC44NDggMjguNDE2IDY3LjE2OCA2LjQgMTM2LjAxNiAzNy4zNzYgNDIuNDY0IDU2LjM1MiA5NS4yNjQgNTYuMzUyIDE1Mi40OCAwIDExNy44ODgtNjcuOTUyIDIxNy4wMDgtMjMwLjUyOCAyNDUuNiAyNy4xNTIgMjYuNzM2IDQzLjk4NCA2My45MiA0My45ODQgMTA1LjA0bDAgMTI5LjcxMmMwLjg2NCAxMC4zMzYgMCAyMC43MzYgMTcuMzYgMjAuNzM2IDIwNC4xMTItNjguNzUyIDM1MS4xMi0yNjEuNzEyIDM1MS4xMi00ODkuMDA4QzEwMzEuNzQ0IDIzMC45NiA4MDAuNzg0IDAgNTE1Ljg3MiAwIDIzMC45NiAwIDAgMjMwLjk2IDAgNTE1Ljg3MkwwIDUxNS44NzJ6TTAgNTE1Ljg3MiIgcC1pZD0iNDI3MSIgZmlsbD0iI2ZmZmZmZiI+PC9wYXRoPjwvc3ZnPg==" style="width:20px;" alt="GitHub"></a></li>
                      </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>

    <div id="tf-service">
        <div class="container">
            {{.dataDoc}}
        </div>
    </div>

    <div id="tf-portfolio">
        <div class="container">
            <div class="section-title">
                <h3>下载 & 安装</h3>
                <hr>
            </div>

            <div class="space"></div>
            
            <div style="width: 100%; line-height: 40px; text-align: center;">
                <strong>Standard:</strong> <font color="#2F937B">go get -u github.com/gohouse/gorose</font>
            </div>
            <div style="width: 100%; line-height: 40px; text-align: center;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<strong>Glide:</strong> <font color="#2F937B">glide get github.com/gohouse/gorose</font>
            </div>

        </div>
    </div>

    <nav id="tf-footer">
        <div class="container">
             <div class="pull-left">
                <p> <a href="https://github.com/gohouse/gorose" target="_blank" title="gorose">Github:Gorose</a> </p>
            </div>
            <!-- <div class="pull-right"> 
                <ul class="social-media list-inline">
                    <li><a href="#"><span class="fa fa-facebook"></span></a></li>
                    <li><a href="#"><span class="fa fa-twitter"></span></a></li>
                    <li><a href="#"><span class="fa fa-pinterest"></span></a></li>
                    <li><a href="#"><span class="fa fa-google-plus"></span></a></li>
                    <li><a href="#"><span class="fa fa-dribbble"></span></a></li>
                    <li><a href="#"><span class="fa fa-behance"></span></a></li>
                </ul>
            </div> -->
        </div>
    </nav>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery/1.11.1/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script type="text/javascript" src="https://cdn.bootcss.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.bootcss.com/semantic-ui/2.2.13/semantic.min.js"></script>
    <script type="text/javascript" src="https://cdn.bootcss.com/jquery-throttle-debounce/1.1/jquery.ba-throttle-debounce.min.js"></script>


    <!-- Javascripts
    ================================================== -->
    <script type="text/javascript" src="{{.fixLink}}static/js/main.js"></script>
    <script src="{{.fixLink}}asset/js/app.js"></script>
  </body>
</html>