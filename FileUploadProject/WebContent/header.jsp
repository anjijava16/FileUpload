<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Modern Menu http://www.creativetier.com/products/modern-menu/</title>
        
    
    <style>
        @charset "utf-8";

        /* Reset */
        /* v2.0 | 20110126
          http://meyerweb.com/eric/tools/css/reset/ 
          License: none (public domain)
        */
        html, body, div, span, applet, object, iframe,
        h1, h2, h3, h4, h5, h6, p, blockquote, pre,
        a, abbr, acronym, address, big, cite, code,
        del, dfn, em, img, ins, kbd, q, s, samp,
        small, strike, strong, sub, sup, tt, var,
        b, u, i, center,
        dl, dt, dd, ol, ul, li,
        fieldset, form, label, legend,
        table, caption, tbody, tfoot, thead, tr, th, td,
        article, aside, canvas, details, embed, 
        figure, figcaption, footer, header, hgroup, 
        menu, nav, output, ruby, section, summary,
        time, mark, audio, video {
            margin: 0;
            padding: 0;
            border: 0;
            font-size: 100%;
            font: inherit;
            vertical-align: baseline;
        }
        /* HTML5 display-role reset for older browsers */
        article, aside, details, figcaption, figure, 
        footer, header, hgroup, menu, nav, section {
            display: block;
        }
        body {
            line-height: 1;
        }
        ol, ul {
            list-style: none;
        }
        blockquote, q {
            quotes: none;
        }
        blockquote:before, blockquote:after,
        q:before, q:after {
            content: '';
            content: none;
        }
        table {
            border-collapse: collapse;
            border-spacing: 0;
        }

        /* Main */
        html {
            background-color: #efefef;
            background-image: url("page-background.jpg");
        }
        body {
            font-family: Arial, sans-serif;
            margin: 0px 0px 0px 0px;
            width: 100%;
            background-color: #dadada;
            background-image: url("body-background.png");
            padding: 0px 0px 0px 0px;
            -webkit-border-radius: 1px;
            -moz-border-radius: 1px;
            -ms-border-radius: 1px;
            -o-border-radius: 1px;;
            border-radius: 0px;
        }
        h1 {
            color: #707070;
            font-size: 28px;
            font-weight: normal;
        }
        #menu1, #menu2, #menu3, #menu4, #menu5, #menu6, #menu7, #menu8 {
            margin: 5px auto 100%;
        }
        #menu1 {
            font-family: Arial, sans-serif;
            margin: 0px 0px 0px 0px;
            font-size: 11px;
            background-color: #202020;
            width: 100%;
            height: 40px;
            -webkit-border-radius: 5px;
            -moz-border-radius: 5px;
            -ms-border-radius: 5px;
            -o-border-radius: 5px;
            border-radius: 5px;
            padding: 0 0px;
            display: block;
            line-height: 1
        }
        #menu1 h1,
        #menu1 ul,
        #menu1 p,
        #menu1 img {
            margin: 0;
            padding: 0;
            border: 0
        }
        #menu1 h1 {
            font-weight: 400
        }
        #menu1 ul {
            list-style: none
        }
        #menu1 a {
            text-decoration: none;
            color: #d0d0d0
        }
        #menu1 .menu-label {
            font-weight: 700;
            text-transform: uppercase
        }
        #menu1 .menu-top>li {
            float: left;
            position: relative;
            text-align: center;
            -webkit-transition: background-color .2s;
            -moz-transition: background-color .2s;
            -ms-transition: background-color .2s;
            -o-transition: background-color .2s;
            transition: background-color .2s
        }
        #menu1 .menu-top>li:hover {
            background-color: #4a4a4a;
            -webkit-transition: background-color .2s;
            -moz-transition: background-color .2s;
            -ms-transition: background-color .2s;
            -o-transition: background-color .2s;
            transition: background-color .2s
        }
        #menu1 .menu-top .menu-right {
            float: right
        }
        #menu1 .menu-button {
            display: block;
            line-height: 40px;
            padding: 0 20px;
            color: #d0d0d0;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 li:hover .menu-button {
            color: #fff;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 .menu-drop {
            padding-right: 15px
        }
        #menu1 .menu-drop .menu-label {
            padding-right: 20px;
            background: url(img/menu1-drop1.png) no-repeat right;
            -webkit-transition: background .2s;
            -moz-transition: background .2s;
            -ms-transition: background .2s;
            -o-transition: background .2s;
            transition: background .2s
        }
        #menu1 li:hover .menu-drop .menu-label {
            background: url(img/menu1-drop2.png) no-repeat right;
            -webkit-transition: background .2s;
            -moz-transition: background .2s;
            -ms-transition: background .2s;
            -o-transition: background .2s;
            transition: background .2s
        }
        #menu1 .menu-dropdown {
            text-align: left;
            background-color: #4a4a4a;
            -webkit-border-radius: 0 0 5px 5px;
            -moz-border-radius: 0 0 5px 5px;
            -ms-border-radius: 0 0 5px 5px;
            -o-border-radius: 0 0 5px 5px;
            border-radius: 0 0 5px 5px;
            position: absolute;
            left: -5000px;
            opacity: 0;
            z-index: 100
        }
        #menu1 li:hover .menu-dropdown {
            left: 0;
            opacity: 1;
            -webkit-transition: opacity .2s;
            -moz-transition: opacity .2s;
            -ms-transition: opacity .2s;
            -o-transition: opacity .2s;
            transition: opacity .2s
        }
        #menu1 .menu-right:hover .menu-dropdown {
            left: auto;
            right: 0
        }
        #menu1 .menu-sub {
            margin: 5px 0
        }
        #menu1 .menu-sub li {
            white-space: nowrap;
            -webkit-transition: background-color .1s;
            -moz-transition: background-color .1s;
            -ms-transition: background-color .1s;
            -o-transition: background-color .1s;
            transition: background-color .1s
        }
        #menu1 .menu-sub li:hover {
            background: #2a2a2a url(img/menu1-select.png) no-repeat 10px;
            -webkit-transition: background-color .2s;
            -moz-transition: background-color .2s;
            -ms-transition: background-color .2s;
            -o-transition: background-color .2s;
            transition: background-color .2s
        }
        #menu1 .menu-subbutton {
            display: block;
            padding: 7px 20px;
            line-height: 1.3;
            color: #d0d0d0;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 .menu-sub li:hover .menu-subbutton {
            color: #fff;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 .menu-desc {
            font-style: italic;
            color: #a0a0a0;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 .menu-sub li:hover .menu-desc {
            color: #d0d0d0;
            -webkit-transition: color .2s;
            -moz-transition: color .2s;
            -ms-transition: color .2s;
            -o-transition: color .2s;
            transition: color .2s
        }
        #menu1 .menu-row {
            vertical-align: text-top;
            display: inline-block;
            zoom: 1;
            *display: inline
        }
        #menu1 .menu-row .menu-sub {
            margin: 0
        }
        #menu1 h1 {
            font-size: 2em;
            color: #a0a0a0
        }
        #menu1 p {
            color: #e5e5e5
        }
        #menu1 .emp {
            font-weight: 700
        }
        #menu1 .quote {
            font-style: italic
        }
        #menu1 .menu-dropdown3 {
            padding-top: 5px;
            white-space: nowrap
        }
        #menu1 .menu-dropdown3 h1 {
            margin: 0 0 5px 20px
        }
        #menu1 .menu-dropdown3 .menu-row {
            border-right: 1px dotted #707070;
            margin: 5px 0
        }
        #menu1 .menu-dropdown3 .menu-row:last-child {
            border-right: 0
        }
        #menu1 .menu-dropdown4 {
            padding-top: 5px;
            white-space: nowrap
        }
        #menu1 .menu-dropdown4 h1 {
            margin: 0 0 5px 20px
        }
        #menu1 .menu-dropdown4 .menu-row div {
            border-right: 1px dotted #707070;
            margin: 5px 0 10px
        }
        #menu1 .menu-dropdown4 .menu-row:last-child div {
            border-right: 0
        }
        #menu1 .menu-dropdown4 .menu-row div:last-child {
            margin-bottom: 5px
        }
        #menu1 .menu-dropdown6 img {
            margin-right: 5px;
            vertical-align: middle
        }
        #menu1 .menu-dropdown6 .menu-label {
            vertical-align: middle
        }
        #menu1 .menu-dropdown6 .menu-subbutton {
            padding: 5px 20px
        }
        #menu1 .menu-dropdown7 {
            padding: 10px;
            width: 210px
        }
        #menu1 .menu-dropdown7 p {
            margin-top: 7px
        }
        #menu1 .menu-dropdown7 h1 {
            color: #e0e0e0;
            padding-bottom: 3px;
            border-bottom: 1px solid #858585
        }
       

    </style>
    </head>
    <body>
        
        <div id="menu1">
            <ul class="menu-top">
                <li><a href="#" class="menu-button"><span class="menu-label">Home</span></a></li>
                
                
                <li>
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">DIRECTORY</span></a>
                    <div class="menu-dropdown menu-dropdown3">
                        <div class="menu-row">
                            <h1>HTML</h1>
                            <ul class="menu-sub">
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Pellentesq</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Et rhoncus</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Ligula eget</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Turpis quis</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Vivamus ut</span></a></li>
                            </ul>
                        </div>
                        <div class="menu-row">
                            <h1>Flash</h1>
                            <ul class="menu-sub">
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Commodo</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Pulvinar</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Curabitur</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Aliquam</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Vulputate</span></a></li>
                            </ul>
                        </div>
                        <div class="menu-row">
                            <h1>Mobile</h1>
                            <ul class="menu-sub">
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Lorem ipsum</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Dolor amet</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Consectetur</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Adipiscing</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Duis ut nibh</span></a></li>
                            </ul>
                        </div>
                        <div class="menu-row">
                            <h1>HTML</h1>
                            <ul class="menu-sub">
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Pellentesq </span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Et rhoncus</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Ligula eget</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Turpis quis</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Vivamus ut</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Pellentesq</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Et rhoncus</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Ligula eget</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Turpis quis</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Vivamus ut</span></a></li>
                            </ul>
                        </div>
                        <div class="menu-row">
                            <h1>HTML</h1>
                            <ul class="menu-sub">
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Pellentesq</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Et rhoncus</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Ligula eget</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Turpis quis</span></a></li>
                                <li><a href="#" class="menu-subbutton"><span class="menu-label">Vivamus ut</span></a></li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">SERVICES</span></a>
                    <div class="menu-dropdown menu-dropdown4">
                        <div class="menu-row">
                            <div>
                                <h1>Loads</h1>
                                <ul class="menu-sub">
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">View Loads</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Post Loads</span></a></li>
                                    
                                </ul>
                            </div>
                            <div>
                                <h1>Trucks</h1>
                                <ul class="menu-sub">
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">View Trucks</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Post Trucks</span></a></li>
                                    
                                </ul>
                            </div>
                        </div>
                        <div class="menu-row">
                            <div>
                                <h1>AZ Jobs</h1>
                                <ul class="menu-sub">
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Apply AZ driver positions</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">View AZ Applicants</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">View AZ Jobs</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Post AZ Jobs</span></a></li>
                                </ul>
                            </div>
                        <!--    <div>
                                <h1>Asia</h1>
                                <ul class="menu-sub">
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Turpis quis</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Vivamus ut</span></a></li>
                                    <li><a href="#" class="menu-subbutton"><span class="menu-label">Commodo</span></a></li>
                                </ul>
                            </div> -->
                        </div>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">Contact</span></a>
                    <div class="menu-dropdown menu-dropdown5">
                        <ul class="menu-sub">
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Phone</span><span class="menu-desc"> - 647 849 7969</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Fax</span><span class="menu-desc"> - 647 692 9046</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Email</span><span class="menu-desc"> - onthegologistics@gmail.com</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Contact Form</span></a></li>
                           
                        </ul>
                    </div>
                </li>
                <li>
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">About</span></a>
                    <div class="menu-dropdown menu-dropdown1">
                        <ul class="menu-sub">
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">ACCEPTANCE OF TERMS OF SERVICE</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">CHANGES TO TERMS OF SERVICE</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Who We Are</span></a></li>
                            <li><a href="#" class="menu-subbutton"><span class="menu-label">Who We Are Not</span></a></li>
                            
                            
                        </ul>
                    </div>
                </li>
                <li class="menu-right">
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">Info</span></a>
                    <div class="menu-dropdown menu-dropdown7">
                        <h1>Quick Info</h1>
                        <p><span class="emp">Lorem ipsum dolor</span> sit amet, optiones congue adipiscing elit, sed diam exp nonummy nibh euismod tincidunt utd.
                        <p>
                        <p class="quote">Laoreet dolore magna aliquam erates volutpat. Ut wisi enim ad eleifend exp minim veniam, quis. u feugiat nulla.</p>
                        <p><span class="emp">Facilisis at vero</span> eros et accumsan et iusto nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea.</p>
                        <p class="quote"><a href="#">Commodo consequat</a> duis autem vel eum iriure dolor in hendrerit in nulla vulputate velit esse consequat erates.</p>
                        <p><span class="emp">Vel illum dolore</span> e odio dignissim quie blandit praesent luptatum zzril delenis augue duis.</p>
                    </div>
                </li>
                <li class="menu-right">
                    <a href="#" class="menu-button menu-drop"><span class="menu-label">Social</span></a>
                    <div class="menu-dropdown menu-dropdown6">
                        <ul class="menu-sub">
                            <li><a href="#" class="menu-subbutton"><img src="img/facebook.png"><span class="menu-label">Facebook</span></a></li>
                            <li><a href="#" class="menu-subbutton"><img src="img/twitter.png"><span class="menu-label">Twitter</span></a></li>
                            <li><a href="#" class="menu-subbutton"><img src="img/googleplus.png"><span class="menu-label">Google+</span></a></li>
                            <li><a href="#" class="menu-subbutton"><img src="img/linkedin.png"><span class="menu-label">LinkedIn</span></a></li>
                        </ul>
                    </div>
                </li>
            </ul>
        </div>
        <div id="menu1">
            
        </div>
    </body>
</html>