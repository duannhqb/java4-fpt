<%-- 
    Document   : template
    Created on : Nov 18, 2018, 8:44:56 AM
    Author     : duann
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <link rel="stylesheet" href="../css/bootstrap.css">
  <link rel="stylesheet" type="text/css" href="../css/style.css">
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
    crossorigin="anonymous">
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
  <title>Hello, world!</title>
</head>

<body>
  <div id="wrapper">
    <div class="container-fluid">

      <!-- header -->


      <div id="header">
        <div class="row">
          <div class="col-md-12">
            <div class="container-fluid">
              <div class="row">
                <div class="header-menu-top">
                  <nav class="navbar navbar-default navbar-fixed-top">
                    <div class="col-md-6 hidden-xs">
                      <ul class="fas-icon-header">
                        <li><a href="#"><img class="header-icon-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAHsSURBVGhD7Zk/L0NRGMYrIhJ/Kr6ChZFYLbpitEoTYfQNfAC+gIUBaYJYfQILSbuIMJDYLST+DKKt33Wf3lTd094rR+9pcn7Jk1fPfd7zvk+qNch5PJ701Ov1PlRE5Vqt9kHNmmf2OKZOacXOYO6jae+73THY6xUVtGp78AfvhLMQ5BHlta4ZTBX1OAs7rmndePAEv1YufCbawo47WjkePGOh1W0IUtLK8eDxQbqJD/JfsFAVBV+nLzpKhDNBWOQCLaJBjQ6+9kfRErqUzQie7IOwxAGlXyN/wfOF0Gkm8yAscIOidyGOnggCRY0y4nwQhtco4xr1Ax6N8mwiED+vBv52ZB3kQWMiOB7g/BRVQ1cysg5S0ZgIzmb0OBVZBznXmAiO58Kn6fBB/gLD3inlhni9qzERnE83e+S7p7al20GudG0q6NvQFUZ6Jci+rjDSK0GudYUR54PQM4w+dYWRbge5o8w2xOtJjYngfKTFs0LtSFeDtMJw/3ekFR/EBj5IDD6IDXyQGHwQG/ggMSQJMhRa7WM5yKGuMIPpSX6rWA6ypSvMYDqS3yqWg8zrCjP4pjC+hS324M5bynKzONukpoKeM63aGcwF9KheZwhCUMa0ZjJoytO0Tt2hnmQl5pfQNkr2/3WPxxNDLvcFnwbZ2ycGU00AAAAASUVORK5CYII="></a></li>
                        <li><a href="#"><img class="header-icon-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAOjSURBVGhD7ZldaI5hGMc385HRkkghanFgZWKJhvkqR5qWZgemEEVOODFHTgjZ8tnmiMUUJw6EEZGiluTzQFoRMR9b1lCamc3vep5/zevd6/26n73Pwfurf/f93vd1/a/rned5du+RkyVLliyB09/fP7Kvr28RqkJbUTkqZj1XIeGGZotQE/pK01Gw/hYdYDpOKVGwl0vMajRRSwOwWKppIFA8jxqH0S9rOB7EdaAqpXuwPIK1degpatHyAAQUstGD1mvJKfjbZXTdGkwGcoy9TDcynkOdf60vlf0ALFqwBfxE5Vp2Bp5nzd8V+B2RdSRs3FGMBdm/zAZtpQ2Wlb6zG+jtHMMwZPdJKZqrUt4X+ehFCT4bNUzTeoKQb/dFq2eaJvj8Ro1M7TI7hl6jh3weqXLeF/nuRf8D61dQ9JMhQchdLivn4P0OTVUpHxY6tB8Fe+9RhUKTgryjsnEKvm1olsoMwGKLYmJCzE1UpJSEIL5Z6c7A8yVDoUpEwsYhLyoOmNh1egktUep/Ie6RUp2AXwsqkH00bBajPsUnBOFPGPYwzpBNFOzf9YIdQa0GWceGoMuKTxpyX6BGtA0tQFNYtidWkx/hBvzq1W5sCJpObJefkj749aJufXQCfgfVbjTs56GxNidwBRr0URwG6G231/RgsD8cdRF0Etmxugy1eZkhg74iDpFRENCuWA8+92gaNkrU8uDQeMo3+lChH26+Wh4cgjb74eGFHh+o3dgQNBpFHBzDBv3Vqt3/Q2C1ckIJ/ZWp1fgQfFp5oYK+PjEMU5vxIdh+G5/xskMEPR1Xi8lB4iYU8UjOFPRhB9WY57m4kDwG7UC3UVIHSpdQ+qpaSg4SV6Ln6BZ6jDJ2ZKG2MU+tJQf5w0l+41tlFvq4qLZSA4M18soY9PCNYZpaSh2MTviWmYH629VKeuBlj+JTvu3QQt0bDG5fZmNqj+IvfongodYrNF7l3YJxAdqJ7qOEXkKniP1dNFtlg4Vi+RRr8Os6xb7EQpUJFvtpIXtN6RQ87S37YpUJDgrNRxeQ88sKz1Y0U6Xcgr+96Z6DdqF7fkn34G0v+9K/sTFZhfahGrQf1aNmFOiBEf9OVK023IDvMkwf+CWChTo/UB3TCSrvFoztUqpA11CvV9UheH5GtUzTP3IkCgUnI7vUnqGUj++ktqPzTCsZR8k+M9DAJLQW2f1jN+ZD9AHZNd6t0f7nyL70dVSHttB8CUr8T9MsWbIESE7OHwh4DaAwatdLAAAAAElFTkSuQmCC"></a></li>
                        <li><a href="#"><img class="header-icon-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAPTSURBVGhD7ZpbiE1RGMfHaJBrwpMa5QUhD1JSSGEoDzwxpSjlfkkeFeXFLZ6IEV4QKYxLlEvJrZASUowniuSSW0YyM37f3n+xMXutvWftc07yq39r2+v7/t+3xj5n307Vf/5l2traatH81tbWBsbLjC/QB7bbGFvQW/QQnUIbUB1T3ZVeXmimH1qN7ljDWSHvEzqCpvLPTrItHRTtT/Gt6GPUUQDweoBmsVn8gqwIxRahN1H1AsD7OsNQlQwPBQags3G5YqHOZ7RcpcOB6XD0THVKBjX3MnRRGx0DszGosEPJBbUPqpX8YDISvZVnyaH2c4aOfV4wsc9EyQ+nHwRZBAb27XQuciwDQRZhYLQ4tswPHk/QFTaPMp5EN5DzvENMsEXYIZXrc0FeE1rN5mDZJWB/F+YnoP3oa5T0C+x7wRDmHILZ9tg2E+/IW8bo/VVJbC05p6NsCLoIjOzS41Pk7Anx9r8wTBaZIN0+i8vRU7bDLMLAcE3UnSdaxACl5waPrtoMA4Z31aMP71C4v2IoaGpw1J4nLHqJUisLGlugHp0Q+5ihRqmVBc3ti9t0Q+xKpaVC3EileEOOXfna3aRLk1QmCRPX5OVDrdJSwTPzQnzBe5XKJGHipWJSIa5JKU4KXshOlUnCRLNiUiHuolKcFLyQRpX5Cfur42k3GBxSmpOCF3JJZZJo3gkGx5TipOCFXFWZJEy8V0wqxN1UipOCF3JeZZIw0aSYVIiz297OSkul4IWcUJkkTJxRjBNiJyotlYIXskNlkjCxUTFO2jX5jYIX0u55ZLpinBDbjAYptV0I7Ykm+wi/OuT9tMbiVSYJEz2Q17nEIPawUoOA3zxZOyH2G+qt1D8h5mgc6gdmXtdcLvAZiF7L1gmx6d+cBMxQrBfE21+mXum5wKYPHrdiRz+IX6v0v0NMNUH343A/iDc2sFktG2/Isfv2TK8kiG9hcF+0Elgfp2SDvHtommxSIa4rsvcqmR/FknNBNukQaw8E7HlULsh9hDajKWgYu+zQ6cc4lHE22oVyP0smd7xadUPwCPRFuRUDPZ1Ti/6QtFT5FQH92J1jrsdOtpgD8ik79LJCbWWHfHvEeSq2Kh/00MjQsXeLGHTD6HjkWAaofYkhzFsrjDpjuA21Ru4lgnL2Tr6H2ggH3jMxfhWXKQ5q2BWDXY173ffkggL2I4E9yM6wwcH3PhqrcsVDsSHI3nMEOd/gcxfNYTPzpU4QKNwXLaSJs8j7lxDE2uFzG21Bo2RXGdBfDRpNY/VoHbKfeTSg3ezfxLgezUXjUC+l/ecfo6rqO+sERleYYN3zAAAAAElFTkSuQmCC"></a></li>
                        <li><a href="#"><img class="header-icon-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAALOSURBVGhD7ZlPiE1RHMffGKmRGPQ2kiJLykYmURayY2FFIyHULGalKE0TNUkRO/kbTRGzGEnNFDuUspjFlNjIsxlFYSEm8Z7Pefd7auLcO/fcd1/vLM6nvt17z/3+fuf7q3nvvu5UIpFIJBIJkUaj0YuWz9Ei3eoc9Xq9SpAdHI+iYXQFPUIv0DSqoS94coH3O5pBb9ErNMnyHY7n0CDag9az1q0IxaHRZjX/ZDbvBOw9i56gfVx2KVp+KDyLfiftwoA8E2ipIs4P5gHVBgfZxhUzG7zdmD8mZWFCvj7FTQfTVvmDhYwXFDcdTAflDxYyTipuOpiG5A8WMtYUNx1MN+X3htpfqK7LtqE9FiuyGzxPE7s/1JoHYx+a0lI72aTIbloJYQYxPThdwPkRNJPcKR96724GTgPDG3m9sYNYWFrC2gj6kTjKg56HtY0bDB/k9ebfQSysr0XjspUC/U6qvRsMX+X1Jm0QCxbzo7OUzw99LqqtGww/5fVmvkEM2Oznp6VfD9TfVks38hUizyAW7L34ryaV/lD7WK3cyFeIvINg7cJ7ABX+VqP2odq5wfMtsfqTZxA85jnzUiWFoUf2nxaGwn+7WYNwew3376FSnvy0uaTWbjC8k9cbav8bhLUeNIRKfZbQb1hbuDFh5PXG1KqN/RzsR4WfS1nQd1BbucHwXF5v7CAct6CWPwdZ0L+/GTgNDPfl9Yba9+gW+qOltsEe2xXZDYYReYOGnKsV2Q2eQ4k1XBjC/PrIfjWEYVvTHTAM8lpx08G3TBMHC/lGFTcbjHdVEyo7FTUbBqmimoqCglzXFTMfFKxCE6rvOGQx74BPc7pQEf2geCPFZ9AY5+blwqxp3G7Y5zN6hm5weZzjCkUqD5quRBvQLtSPBtApNjzP0fy74Zr0gLUxK65H59y7jMyL8hPoGNqLx3xjruO8R1tFIpFIJBLxo1L5CxNvJLXd/1aEAAAAAElFTkSuQmCC"></a></li>
                        <li><a href="#"><img class="header-icon-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAQRSURBVGhD7ZpLSBVhGIbN7hTYHSUXQgs3SVFU+xQSSiiIsMuiKIOwTUhSEC6CshYVFGGXZWQRBWGLLougVQsFq010cyO06EaZBmlozzfznhDnjHM5f+echQ+8/DPf/33vfH/OOXM5lUwxRYEZGxubNjo6uh61o+eoHw0TdwJeA+g1esDuQVSuQ7sD83rU6x0xT3C8EXQVVaiN9OA3H6O7vnVh4PiDaJdaSg7Fy9FL+RUU+jBOqbX4UDQPvZJP0UBPrWoxHhTcU21RQV9/UL3anBwSN6muKKG/dwwz1W52SLCv2BdeRYHg+EPaDIWcZrWcHRI2KLcgcPwmhlLGFcj+5bPCXK9azg4Jp5WbdyY2x/4BTYVRpdQgFD9XkjPw/ILinC7vGUrVivVy1J8JZa9Sg1Dcr6Rc6MGnBVWzPUvW9vkrQ3XEL6GvljgR4nYlr0GN6JvCWWG+TdZBmEx970TtW7RNVh6EpxOrYCxTyIP9BegMcyOMqaC2Q3ZBlJMYTB8zLJSHNXmMWDf6Y/PiO7pDrME7GLBvf6Gsf50oqLspmyDKSQSGTxhmWD3bdkp89mfCIecpqlTNKhT5GZoINe4Wgpl9RXqnDdsn0Kg/Ew2pH1GNarcrHBtqnC7E+0ww7kSxF5GBkvdosTweKRwL8p0tpEc1ZZhGnk5hUHvRfBjXKBQLZwvBqMVqGI8rlArqh9Eyeb1VOBJynS2k2moYuxVKDR775XVBoUicLQRmIbtOjP+KTQUeV+z4jM0KReJkIZh8Un65H8kN/O6bH+M2hSJxtZBfyrfbjpzB77b5Me5WKBInCxGZ68cP7acGj7PyirpR/IfLhdSp5o6/mx6aqk3q5WwhGF2yGsbNCqWC+j6GmYyz0U8/Gg25zhZiN3sLrI7tZ340OdQ2ysOeDmPjbCEGZplzuxJ9VDg21FxXvb1+SlRPvtOF2OuZjVbLuBJ90FQk5F5nsGuRvfDo9IIJoMbdQgwM7RRbbfVsL0L2BPjbnw3CXB/yTid2bREn/ZlkUOd2IQam9n52h2xsQcvQftSButAt0uyJsJbRe3ZhtPfKif8SGai94R0sG0wOKC8V1D9E62SXFdLmkNOEEn+mxkP9OVkGYfKN8nICH3t+P48Os7uVcQ+yi5096sb+ip0MfI6o7SBMdimv6KHXLWo7CJOJvssLBX0OoblqOwg55SSkfkWTL+jxnloOh6Rryi9K6M/eDaxVu+GQV4EG/bLig9461Wo0JO9Gid+K/G9o6QNaqjbjQUG76ouF7/TkvQdLDIWtKOdn8lyhB7utSbeIDBhsQqE/uvxPOK5htzFL1E5uYGQPPodQXv7TAMex64T9vh/97ZQWzKs4yD7Uhi4j+03DheyW5ghqQOEXuymmyCclJX8Bja/bM4qOfF0AAAAASUVORK5CYII="></a></li>
                      </ul>
                    </div>
                    <div class="col-md-6 hidden-xs">
                      <div class="navbar-header navbar-right">
                        <ul class="nav nav-pills">
                          <a class="nav-text-right">Home</a>
                          <a class="nav-text-right">Profile</a>
                          <a class="nav-text-right">Messages</a>
                        </ul>
                      </div>
                    </div>
                  </nav>
                </div>
              </div>
            </div>
          </div>

          <!-- end header top -->
          <div class="header-menu-store">
            <div class="container-fluid">
              <div class="row">
                <nav class="navbar navbar-default navbar-fixed-top">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-2"
                    aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>

                  <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-2">
                    <div class="col-md-1">
                      <a class="headr-logo" href="#">
                        <img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAN/SURBVGhD7ZppqA5RHIevfcmSsmbJkkJSZElkjSihFOqKLwhJSZIQSQqlCJG1RLKkrImkEOID4gNFIVsSsu9+zz+nrvvOzDtzcOcoTz11fzPnzP3PvfedOcst+U88DeR0eUzelx/lS3lTbpRDZCUZLJXlHPlCfi/iBdlDBkddeUi6Qg/LcbK5rCpryy5ynrwnafNBTpLBUEUelRT3UPaTSdSQy+W3n46RQbBYchMPZCsOpITPEf3eyjYcyJOm8o38Kn3+5rdKbmaXpRxZKClkp6XsNJHuB8HXuXFZciODLfmxV3KNyZZygnfEF1nNkh8zJDeyzlIONJIU8NiSPyMl1zlgKQd4QlEA74Xfoa/kOkcs/SVay7YxugJ4d0SdT+tYyXVOlzkWZUPpBS8uvkEo7pBetJNcgA/0nQjdUONzmWM+8hvlOrwYk87zG/NioOQCZy0VUlGfkQ6S87cteTBRcoHdlgqpqBupIznPINOLBZILrLBUyCLpvgG/PV+2Sa7zTHbiQATPJW0aW8oIkyA6z7T0K7UkN8B5PCN9cH82TsZeUVyVnO9uKSNuaM4LqzzMMdxPCQ9KH1rIT9JdZ6WMgvkN50dbysh1SeeulgoZIHmS7JctOeAJEzAeKFtkfQ5EsF5SyyxLGXFTVu8X0R9kvqSWVZYyUE/S8Z2l/CmV1LPHUgZ4etDxlqX8YfpMPectZWCYpONJS/nDVJh6WF7KxBRJR57xIVBdMotk7sMTMzVLJTeyxFIYPJLUlOkJuV3SKdfpZzkuSmrqYyklpySdhloKg32SmsZbSgkjTTp1tBQGqyU1zbWUkveSTow8Q2G2pKa1llLgFhUYS4UES6vUlXpc103S4ZqlcOgpqeuKpRSMknRgxBkSzSR1PbWUAuYfdNhgKRzYHGL9gNpqcqAYzAlozIgzNO5KamtvqQjM0Wk8wVJYMBOltkGWinBO0ri/pbBg1Z/aUu10ufWq3DdfImCni9pY+EiEbTQW3BhpMuIMjWmSG9lkKQEWA2jISDNERkjqO24pgd6ShpcshQc7w9R3w1ICrGjQkJWREOGfEajvlaUE2PCnISPNUHktqTFu6chYI2nESDNU+FcQauxsKQa2v2gUzCZ+BCckNQ63FIPbpe1lKUw2S2qcaimGJ5JGjLNoGKJuTXqZjCS0rbZixm7F8WjjjfmvWGZBu6TkB688gEjrDiUnAAAAAElFTkSuQmCC">
                      </a>
                    </div>
                    <div class="col-sm-6 col-md-push-1">
                      <form class="navbar-form navbar-left form-search">
                        <div class="form-group">
                          <input type="text" class="form-control" placeholder="Search">
                        </div>
                        <button type="submit" class="btn btn-default">Search</button>
                      </form>
                    </div>

                    <div class="col-sm-4 navbar-right">
                      <ul class="nav navbar-nav navbar-right">
                      
                        <li class="dropdown store-cicle">
                          <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img
                              class="header-icon-right" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAANISURBVGhD7ZlZyE9bGIc/U2aZUooUrugokVxQMiVTJ4UyXYhEIhniQhmLpISQOB0uhEiGDImUC6FkKHKhDKdj7mQsGZ9nZdV34fvs//6fvrXp/6vn4l3ttfa79l5r7fd9d1VFFf1aagZjYSXsgWNwADbAaGgIhVYH2Arv4Wst3IWeUEgNguegox/gNKyGWTAKxsEyuAFe8xI2wx9QGPWGd6CD+6ET1KT6cAji2/kC66EeJJWO3QKd2mFDRnWBhfAG7LsUkmok6MhDaGFDiRoO9veNtrUhlbaBjiwPVj6dBceYHqxEug060TdY+TQfHGNLsBIpnlRtgpVPQ8AxzgUrkT6DTpRz6gwAx7gYrESKH79GwcqnYeAY7pVkegA60TFY+TQTHOOvYCXSJdCJfsHKp03gGIuDlUh+BHXCp5pX18Ex+gcrkeKy2Bms0tUOPDDeQtKoeB04EZdYHk0G+78CJ5VEHrkxVupjQw41gBhEzrAhhZqCy+IjlHP8moA5kaSb/RroxOBg5dMZcIw/g5VIhuI68QxKDcXbgw/CnOQ/aA3J1AT8kDmZEzaUoIFgv3/BHD+5WoJ75SmYaGXVEnAiFiUKo7hXjJuyKvaxslIYLQKdugBZIuEYKL6AxjYURS6vJ6Bzq2yoRV3hMXjtPBuKpvGgcz/b9DH/uAl+EAun6GDWiSRNpGrTbzeRU8GqWYWfyHbQQQsS3Wz4gTzR1oDXGfF2h8LINPcw6FzEgts+mA1jYBKsADd49esMbaZCUlmANqGKdV+ToymwGz59b/sRhiTT4Gi1NsuuFrybQ53IEMTK+nmIThj0HYfqy8S3NBesuB+BvbAWRkA8ch3L6uI/EMcyeNwINS3NsuVNJ8IdiDe1FOQbKfdfh7mMS+8yxLHNcfxJ5Mfzf1MPuALxJvdgAZRTXaxJZpq7wH8scUK+yXIStyDLma/BQe+DS6EuigSdwVPQiXhvy6mtIJd6QdzIf0OdbcRqsjgei4AnoeSQxg7xN5lPJuUfJd9OPBDm2FCKJoAdH4FZYGrFgNSouaSl7ZFpx6Jkb252j2Z9GmpDVsVX6Ynh0ygCV0Gf/DucSS4lP3J2KiJGDplkWeZggTGtrqiiijKrquobIWQ2YSP96pgAAAAASUVORK5CYII="><span
                              class="badge">4</span></a>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </li>
                        <!-- account -->
                        <li class="dropdown store-cicle">
                          <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img
                              class="header-icon-right" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAN/SURBVGhD7ZppqA5RHIevfcmSsmbJkkJSZElkjSihFOqKLwhJSZIQSQqlCJG1RLKkrImkEOID4gNFIVsSsu9+zz+nrvvOzDtzcOcoTz11fzPnzP3PvfedOcst+U88DeR0eUzelx/lS3lTbpRDZCUZLJXlHPlCfi/iBdlDBkddeUi6Qg/LcbK5rCpryy5ynrwnafNBTpLBUEUelRT3UPaTSdSQy+W3n46RQbBYchMPZCsOpITPEf3eyjYcyJOm8o38Kn3+5rdKbmaXpRxZKClkp6XsNJHuB8HXuXFZciODLfmxV3KNyZZygnfEF1nNkh8zJDeyzlIONJIU8NiSPyMl1zlgKQd4QlEA74Xfoa/kOkcs/SVay7YxugJ4d0SdT+tYyXVOlzkWZUPpBS8uvkEo7pBetJNcgA/0nQjdUONzmWM+8hvlOrwYk87zG/NioOQCZy0VUlGfkQ6S87cteTBRcoHdlgqpqBupIznPINOLBZILrLBUyCLpvgG/PV+2Sa7zTHbiQATPJW0aW8oIkyA6z7T0K7UkN8B5PCN9cH82TsZeUVyVnO9uKSNuaM4LqzzMMdxPCQ9KH1rIT9JdZ6WMgvkN50dbysh1SeeulgoZIHmS7JctOeAJEzAeKFtkfQ5EsF5SyyxLGXFTVu8X0R9kvqSWVZYyUE/S8Z2l/CmV1LPHUgZ4etDxlqX8YfpMPectZWCYpONJS/nDVJh6WF7KxBRJR57xIVBdMotk7sMTMzVLJTeyxFIYPJLUlOkJuV3SKdfpZzkuSmrqYyklpySdhloKg32SmsZbSgkjTTp1tBQGqyU1zbWUkveSTow8Q2G2pKa1llLgFhUYS4UES6vUlXpc103S4ZqlcOgpqeuKpRSMknRgxBkSzSR1PbWUAuYfdNhgKRzYHGL9gNpqcqAYzAlozIgzNO5KamtvqQjM0Wk8wVJYMBOltkGWinBO0ri/pbBg1Z/aUu10ufWq3DdfImCni9pY+EiEbTQW3BhpMuIMjWmSG9lkKQEWA2jISDNERkjqO24pgd6ShpcshQc7w9R3w1ICrGjQkJWREOGfEajvlaUE2PCnISPNUHktqTFu6chYI2nESDNU+FcQauxsKQa2v2gUzCZ+BCckNQ63FIPbpe1lKUw2S2qcaimGJ5JGjLNoGKJuTXqZjCS0rbZixm7F8WjjjfmvWGZBu6TkB688gEjrDiUnAAAAAElFTkSuQmCC"><span
                              class="badge" id="badge-bell">4</span></a>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </li>
                        <!-- shopping cart -->
                        <li class="dropdown store-cicle">
                          <a href="#" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><img
                              class="header-icon-right" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAQESURBVGhD1ZpbqJVFFMePmSmmloYkpaIgWQ+BmjfMS5gY9RAaea0ewksRKiiihQohXYTEFPOhNBKkhzISS1MfFBVBMU0SFaHEIgsjydQ0L5n+fsMe2BzwnJ37m29/+w+/h7XO3jNr9vfNmpk1pyGh+sJO+AdOw3K4G+pKw+Aq3GjEAWgFdaPjYOBLoT08AkdKvjlQF+oBBuzr1EJHSWNB/5Zg1YE6ggH/AXfqKGk86F8frILL1+gluAgG/RF0gyHwY8m3CwZD+dMqjO4F58MlMNhKcB75uhVGT8DvYHDXYTO8Bk/C5/AzfAfz4XFYCMcgDmgjdICaahJcAwP6GnpDJboDfBq/gN91YJ2hJhoJV+A/mAW38853gu3gYPZBW8hVzgnTqwHM1FGFDH4P2Nb7OvLUSrDjL4NVvXrCBfgXHtWRh3waplfnxoM6MtIi8Mf5OFg56FWww8+ClZ2c7M45U3gum0tXZgcyMVjZagfY9qhgJVZMma7YWWsx2PaCYCWWE9L5kUJTwIF8GKyEMu/bkSt5Co0B2/8iWAnVHezop2BlL+eG7W8KVkI9BHZ0OFjZayjY/u5gJVQfsKODwcpej4Htu11JqtFgR+5wU6gr2P7JYCXUy2BHq4OVvTxRehRwYUx68HoXHMgbwUojE4l9uP9KJgsHdvJ0sNLIg5Z9mIqTqCWcBc8f9+tIpLh59OicRBbd7OD7YKXTILCfo8FKICsiduB+KKV88r+BffXXkaV8lf4GM0rSSVhSTCrrgpWh1oANWxXJQx7YPJf4w1kDy0QTwEFchod15KT4VFwcPZVWpRFwDmxwro4c1QZMLPbtgasd3Jas1cbK4VqoRYmzF5wCY/gW3H1XLLPGMvDL8gHUsk5rdf8HMJYzYGWzIhm4X/KmabqOAug+8IxiXM7VAdCsHIDZYmCwiiPfiriW+WM3q1/BD1uELpIciOnf2N7U0ZxeBz9sEc5dbs0r5cgD3VdgXFYkK6rgONnjAijnYQNYmOsHeRTPHgDP72/DfnCjaix/wVPwvzQc3LbHRiLa3nlYeHaAq2AJWIvyDmQ2mCRkXBkvlnyvgJ8T923vgen9GzgEBlven7jrfgeq2nV3gRfAp7QXTIGNO8oS62YnYCu8BabbuyCJrG+ZAp8BBzkDPEfEqwafpMdhJ2fkU7Dw5tP0M9tgHkyD58Hk4kVRsqArVWswx3vebipBeCnkQFKd+6tWvF/39rYpedMVn0ghFcupf4J3hLfSZPBzWV9LZKr4bxpNFQ5iAaPaK7ukmgoGaZG78RWaK7NX0/7dzHcPFFYGG8s5TvpPwIzmbsFtuH7T67NQePlvTN7Oxvv3cky9ll3rSmYx58EKcFV+Djz1JVBDw03jlS55IXVQyQAAAABJRU5ErkJggg=="><span
                              class="badge" id="badge-bag">4</span></a>
                          <ul class="dropdown-menu dropdown-menu-right">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li role="separator" class="divider"></li>
                            <li><a href="#">Separated link</a></li>
                          </ul>
                        </li>
                        <!-- notifition -->
                        <li class="dropdown">
                        <li id="number-store" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                          <a href="#"><span class="number">$ 0.00</span></a>
                        </li>
                        <li class="number-icon" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">
                            <a href="#"><img src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAD0SURBVGhD7dI9CsJAEIbhdNqoJ7DLCZKQIk3uYekBPIBH8S523kJsbLyEqLOwH0gwMZr9mYXvgYVk2GJe2IyIiIiI6Gdt287zPJ/ZX3XKslzZz2FFUVzl8rmqqrUdqSE7bWW/u5y9HfWTiKOcp1y+aIoxEbLXwxzZbWPH/eq6XsrFk6aYTsTOjr/TFPN3BGiImRwBMWOcRUCMGOcREDLGWwSEiPEeAT5jgkWAj5jgEeAyJloEuIiJHgFTYtREwD8x6iKgaZrF2Bi1ETAmRn0EDMUkEwGfYpKLgE7MLckIeI9JNgJMjEQczNOyIyIiIiIimijLXkOD4PbRY89EAAAAAElFTkSuQmCC"></span></a>
                        </li>
                        <ul class="dropdown-menu dropdown-menu-right-number">
                          <li><a href="#">Action</a></li>
                          <li><a href="#">Another action</a></li>
                          <li><a href="#">Something else here</a></li>
                          <li role="separator" class="divider"></li>
                          <li><a href="#">Separated link</a></li>
                        </ul>
                        </li>
                      </ul>
                    </div>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- end header-menu-store -->
      <div class="header-menu-main">
        <div class="row">
          <div class="container header-main">
            <div class="col-md-3 header-main-left">
              <ul class="nav nav-pills nav-stacked">
                <li role="presentation"><a href="#">Home</a></li>
                <li role="presentation"><a href="#">Home</a></li>
                <li role="presentation"><a href="#">Profile</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
                <li role="presentation"><a href="#">Home</a></li>
                <li role="presentation"><a href="#">Profile</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
                <li role="presentation"><a href="#">Profile</a></li>
                <li role="presentation"><a href="#">Messages</a></li>
              </ul>
            </div>
            <div class="col-md-9 header-main-right">
              <div class="row">
                <div id="carousel-id" class="carousel slide" data-ride="carousel">
                  <ol class="carousel-indicators">
                    <li data-target="#carousel-id" data-slide-to="0" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="1" class=""></li>
                    <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
                  </ol>
                  <div class="carousel-inner">
                    <div class="item">
                      <div class="overlay"></div>
                      <img class="img-header-main" src="//laz-img-cdn.alicdn.com/images/ims-web/TB13yioqlLoK1RjSZFuXXXn0XXa.jpg_1200x1200Q100.jpg_.webp">
                    </div>
                    <div class="item">
                      <div class="overlay"></div>
                      <img class="img-header-main" src="//laz-img-cdn.alicdn.com/images/ims-web/TB12RojqxYaK1RjSZFnXXa80pXa.jpg_1200x1200.jpg">
                    </div>
                    <div class="item active">
                      <div class="overlay"></div>
                      <img class="img-header-main" src="//laz-img-cdn.alicdn.com/images/ims-web/TB1LF9.pNYaK1RjSZFnXXa80pXa.jpg_1200x1200Q100.jpg_.webp">
                    </div>
                  </div>
                    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><img class="img-right" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAD/SURBVGhD7Y8xDgFRFEUHUdmBQquwConERvRam5BoVKJiUxq1DUg0ZpwxLySY2n3JPcnLnz//FecUxvymqqpufOaEgE5ZlmvmxpyYcTzlISL2nC+4H+I5Bzh/RdTwbxcr+uDbbYk4M8NY0wbf1giOUaxpg6gjJEDUERIg6ggJEHWEBIg6QgJEHSEBoo6QANH8ETUIbxr1NxkjBsy90W/gfuHIE1GDcC/EX3CvWcRKHpCeMtfoePJMyRiD+wxxx8iBu2Mkwd0xkuDuGElwd4wkuDtGEtwdIwnujpEE97aYeazkAfdfMcd4zgXunzGreMoHIRNmyywJ6cdvY/5PUTwA1NabXgCBD5AAAAAASUVORK5CYII="></span></a>
                    <img class="img-left" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEISURBVGhD7Y+xbQJBEEUPyYnBOhfhFijAgQuxZDISckI34Boc0wJkbsIZRWAHSHe8ux246FL05/SfNNrV7gTvVWYqtG07i2temqbZMP/MkaDXeM4F8jVzJqCH+4njLb7zgPiC+SsZhbQxSL8j3/QVQdoYxFeOUQTxD8co4hhVHKOKY1RxjCqOUcUxqozFMMtYyQPS62i4wdt3fOcA5znS+6I/wNtnrOiD71jED8dTrGmD6GgEU8eaNvg6QgJ8u4hDUR9wxL3Bd9oRHM+xpg2ijpAAUUdIgKgjJEDUERIgmj+iA+FdUR/IGFEX9YF0ER0IPyD+2xdAyogryL8wX8yWeYxnY6ZHVV0A4IebTw9xXbsAAAAASUVORK5CYII="></span>
                    <a class="right carousel-control" href="#carousel-id" data-slide="next"></a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- </div> -->
      <!-- end header -->

      <!-- start content -->
      <div class="container" id="content">

        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->


        <div class="card">
          <div class="title-card">
            <h3 class="title-card-left">ĐIỆN THOẠI HOT NHẤT</h3>
            <a class="title-card-right">Xem tất cả <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span></a>
          </div>
          <div class="row">
            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->

            <div class="col-sm-6 col-md-3 col-xs-12">
              <div class="thumbnail">
                <div class="image-thumbnail">
                  <img src="//vn-test-11.slatic.net/original/14a2bfc5860bf1d4fb8eb7ed724da646.jpg_340x340q80.jpg_.webp">
                </div>
                <div class="caption">
                  <h4 class="text-center">Thumbnail label</h4>
                  <div class="caption-footer">
                    <div class="don-gia">$500</div>
                    <div class="bd-bt"></div>
                    <button class="btn btn-primary">Add to Cart</button>
                  </div>
                </div>
              </div>
            </div>
            <!-- end -->
          </div>
          <!-- end row -->
        </div>
        <!-- end card -->
      </div>
      <!-- end content -->

      <!-- start footer -->
      <!-- Footer -->
      <section id="footer">
        <div class="container">
          <div class="row text-center text-xs-center text-sm-left text-md-left">
            <div class="col-xs-12 col-sm-4 col-md-4">
              <h5 class="text-center">Quick links</h5>
              <ul class="list-unstyled quick-links">
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>
              </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
              <h5 class="text-center">Quick links</h5>
              <ul class="list-unstyled quick-links">
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Videos</a></li>
              </ul>
            </div>
            <div class="col-xs-12 col-sm-4 col-md-4">
              <h5 class="text-center">Quick links</h5>
              <ul class="list-unstyled quick-links">
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Home</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>About</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>FAQ</a></li>
                <li><a href="javascript:void();"><i class="fa fa-angle-double-right"></i>Get Started</a></li>
                <li><a href="https://wwwe.sunlimetech.com" title="Design and developed by"><i class="fa fa-angle-double-right"></i>Imprint</a></li>
              </ul>
            </div>
          </div>
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-5">
              <ul class="list-unstyled list-inline social text-center">

                <img src="https://cdngarenanow-a.akamaihd.net/shopee/shopee-pcmall-live-vn/assets/4588ad8a30e7fdc05a8da05847f867f3.png"
                  alt="">

                <!-- <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-facebook"></i></a></li>
                <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-twitter"></i></a></li>
                <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-instagram"></i></a></li>
                <li class="list-inline-item"><a href="javascript:void();"><i class="fa fa-google-plus"></i></a></li>
                <li class="list-inline-item"><a href="javascript:void();" target="_blank"><i class="fa fa-envelope"></i></a></li> -->
              </ul>
            </div>
            </hr>
          </div>
          <div class="row">
            <div class="col-xs-12 col-sm-12 col-md-12 mt-2 mt-sm-2 text-center text-white">
              <p><u><a href="#">National Transaction Corporation</a></u></p>
              <p class="h6">&copy All right 2018.<a class="text-green ml-2" href="#" target="_blank">Sunlimetech</a></p>
            </div>
            </hr>
          </div>
        </div>
      </section>
      <!-- ./Footer -->
      <!-- end footer -->

    </div>
    <script src="../js/jquery-3.3.1.js"></script>
    <script src="../js/bootstrap.js"></script>
</body>

</html>