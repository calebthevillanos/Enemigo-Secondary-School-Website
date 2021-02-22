<%-- 
    Document   : index.jsp
    Created on : Mar 26, 2020, 12:43:17 PM
    Author     : laptop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Enemigo Secondary School</title>

        <style>
            *{
                color: #333333;
                font-family: Trebuchet MS, Helvetica, sans-serif;
            }

            .mySlides {
                display:none;
            }
            section.main-content{
                width: 100%;
                margin-left: auto;
                margin-right: auto;
                margin-top: 0;
                margin-bottom: 0;
                max-width: 1050px;
                line-height: 1.7;
            }
            .slideshow-div{
                margin-left: 50px;
                margin-right: 50px;
            }

            .w3-badge{
                height:13px;
                width:13px;
                padding:0;
                background-color:transparent;
                cursor: pointer;
            }
            .fullfrontviewimg{
                width: 40%;
                margin: 0 20px;
                float: right;
                display: inline-block;
                vertical-align: middle;
                max-width: 100%;
            }
            section#welcome h3{
                color: #008bc4e3;
                text-align: center;

            }   
            section#welcome p{
                text-align: justify;
                text-indent: 50px;
                line-height: 1.8;
            }
            section#join-us{
                padding: 50px 6%;
                margin: 0 0 30px;
                background-color: #008bc4e3;

            }

            section#join-us p, h2, h3, h5{
                color: white;

            }

            section#join-us #uniqueness{
                display: flex;

            }
            section#join-us #uniqueness div{
                flex: 1 0 200px;
            }
            section#join-us .button{
                background-color: white;
                border: 0.5px solid #008bc4;
                letter-spacing: 1px;
                padding: 5px 45px;
                border-radius: 7px;
                font-size: 1.5em;
                cursor: pointer;
                display: inline-block;
                margin: 0 320px;
                color: #008bc4;
            }
            section#more-info #information{
                display: flex;
            }

            section#more-info #information h5{
                color: #008bc4e3;
            }

            section#more-info #information div{
                flex: 1 1 24%;
                padding: 0 30px;
                margin: 0 10px;
                padding: 10px 30px;
            }
            .round-button{
                color: white;
                border: 0.5px solid white;
                letter-spacing: 1px;
                border-radius: 15px;
                font-size: 0.9em;
                cursor: pointer;
                text-align: center;
                background-color: #008bc4e3;
                margin: 0px 400px;
                padding: 10px;
            }
            section#furtheredu div{
                display: flex;
                flex-wrap: wrap;
            }

            section#furtheredu h5{
                color: #333333;
            }

            section#furtheredu div .school{
                flex: 1 0 100px;
                height: 50px;
                margin: 5px 25px 60px;

            }            
            section#furtheredu div .school img{
                max-width: 100%;
                margin: 0 9px 20px;
                padding: 10px 0 50px;
            }

        </style>
    </head>
    <body>
        <c:import url="header.jsp" />

        <div  style="max-width: 100%">

            <img class="mySlides" src="imgs/1.JPG" alt="" style="width:100%"/>
            <img class="mySlides" src="imgs/2.JPG" alt="" style="width:100%"/>
            <div class="w3-center w3-section w3-large w3-text-white w3-display-bottomleft" style="width:100%; position: sticky;">
                <span class="w3-badge demo w3-border w3-hover-white" onclick="currentDiv(1)"></span>
                <span class="w3-badge demo w3-border w3-hover-white" onclick="currentDiv(2)"></span>
            </div>
        </div>

        <section class="main-content">
            <section id="welcome">
                <h3>WELCOME TO VILLANOS SECONDARY SCHOOL</h3>
                <img class="fullfrontviewimg" src="imgs/Full-view.jpg" alt=""/>
                <p>Villanos Secondary School is a co-educational school situated in a 
                    serene environment in the heart of Port Harcourt, It has boarding, standard living,
                    learning and recreational facilities. Our school also admits day students. Our ability to 
                    our students a home away from their homes and at the same time deliver to them high qualiy education through 
                    curricular and co-curricular activities is one of our greatest strength.
                </p>
                <p>
                    Established in 2014, we have garnered experience and reputation for giving our students
                    the best of education, always awaiting them the opportunity to discover and develop themselves. Our guiding mantra is
                    <strong>"What is Real will Prosper"</strong> and that we pass to our students. Through visionary and strong leadership,
                    our staff team have over the years worked together to nurture and groom our students morally and educationally who we forsee 
                    as the future leaders.
                </p>
            </section>

            <section id="join-us">
                <div>
                    <h2>JOIN THE VILLANOS FAMILY</h2>
                    <p>Experience the uniqueness of Villanos by giving us the opportunity to train your ward. 
                        The Villanos Family is a typical exemplary household setting where responsible parents 
                        and older siblings care for and protect one another.
                    </p>
                </div>
                <h3>OUR UNIQUENESS</h3>
                <div id='uniqueness'>
                    <div>
                        <h5>RESIDENT STAFF SYSTEM</h5>
                        <p>In Villanos, the staff reside with the students to ensure total mentorship. 
                            More importantly, there is no form of bullying, fagging, molestation or harassment from any quarters.
                        </p>
                    </div>
                    <div>
                        <h5>WEB-BASED ACADEMICS</h5>
                        <p>We have set up web-based systems by which we can deliver high quality education on an electronic platform.</p>
                    </div>
                    <div>
                        <h5>ADMISSION</h5>
                        <p>We know that choosing a new school can be tough and challenging, but our staff are here to guide you. 
                            Please do not hesitate - contact us if you require clarification on any issue
                        </p>
                    </div>
                </div>
                <div class="button"><a href="admissions.jsp">Enroll today</a></div>
            </section>

            <section id='more-info'>
                <div id="information">
                    <div>
                        <h5>OUR STANDARD</h5>
                        <p>The standard of the school in moral discipline and academic excellence is quite high. 
                            To prove this fact, our school has bagged a large number of awards in competitions involving other schools…
                        </p>
                    </div>
                    <div>
                        <h5>OUR PROGRAMMES</h5>
                        <p>Villanos Schools operate both the Nigerian & British curriculum. 
                            One aspect of Villanos programme is its capacity to expose students to rich curricular experience that would inspire them…
                        </p>
                    </div>
                    <div>
                        <h5>OUR FACILITIES</h5>
                        <p>If you are wondering why you should choose Villanos Schools, maybe you should take into 
                            consideration our facilities – decent hostels, ultra modern sports arena, laboratories…
                        </p>
                    </div>
                </div>
                <div class="round-button"><a href="admissions.jsp">READ MORE</a></div>
            </section>

            <section id='furtheredu'>
                <h5>OUR GRADUATES HAVE GONE ON TO CONTINUE THEIR EDUCATION AT THE WORLD'S MOST PRESTIGIOUS INSTITUTIONS LIKE:</h5>
                <div id='all-institutes'>
                    <div class='school'>
                        <img src="imgs/cambridge.png" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/Yale.png" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/alberta-300x70.png" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/harvard-300x129.png" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/liverpool-300x76.png" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/university-logo6-300x150.jpg" alt=""/>
                    </div>
                    <div class='school'>
                        <img src="imgs/university-logo8.jpg" alt=""/>
                    </div>
                </div> 
            </section>

        </section>

        <c:import url="footer.jsp" />

        <script>
            var myIndex = 0;
            carousel();


            function carousel() {
                var i;
                var x = document.getElementsByClassName("mySlides");
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                myIndex++;
                if (myIndex > x.length) {
                    myIndex = 1;
                }
                x[myIndex - 1].style.display = "block";
                setTimeout(carousel, 3500);
            }

            function currentDiv(n) {
                showDivs(slideIndex = n);
            }

            function showDivs(n) {
                var i;
                var x = document.getElementsByClassName("mySlides");
                var dots = document.getElementsByClassName("demo");
                if (n > x.length) {
                    slideIndex = 1;
                }
                if (n < 1) {
                    slideIndex = x.length;
                }
                ;
                for (i = 0; i < x.length; i++) {
                    x[i].style.display = "none";
                }
                for (i = 0; i < dots.length; i++) {
                    dots[i].classList.remove("w3-white");
                }
                x[slideIndex - 1].style.display = "block";
                dots[slideIndex - 1].classList.add("w3-white");
            }
        </script>
    </body>
</html>
