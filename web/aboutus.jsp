<%-- 
    Document   : aboutus
    Created on : Nov 15, 2020, 11:09:52 AM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>About Us | Villanos Secondary School</title>
        <style>
            *{
                font-family: Trebuchet MS, Helvetica, sans-serif;
            }
            section{
                font-size: 1.15em;
                color: #333333;
                margin: 0 40px;
            }
            section div{
                margin-bottom: 30px;
            }
            div#vision{
                padding: 2px 10px;
                
            }
            h3, h2{
                text-align: center;
                font-size: 1.25em;
                color: #008bc4e3;
                text-decoration: underline;
            }

            div#facility div ul.flex{
                list-style: none;
                display: flex;
            }

            div ul.flex li{
                flex: 1 1 5%;
                margin: 0 5px;
                text-align: center;
            }

            div ul.flex li img{
                max-width: 100%;
                height: 125px;
                border: solid 4px white;
                box-shadow: 0 1px 2px #b3b3b3;
            }

        </style>
    </head>
    <body>
        <c:import url="header.jsp" />
        <section>
            <div>
                <h2>ENEMIGO SECONDARY SCHOOL</h2>
                <p>
                    Enemigo Secondary School is one of the leading private schools in Nigeria. It was founded in 
                    2017 by a renowned educationist – Caleb I. Austine.
                </p>
                <p>
                    Since its inception, the school has remained committed to the goal of exposing children to rich balanced learning 
                    experiences that are capable of challenging their intellect and developing their creative potential.
                </p>
                Our students are outstanding and have gone on to Universities within and outside the country. The school maintains fruitful
                links with various institutions of higher learning in countries like the United Kingdom, Canada, Ukraine, Ghana, USA and South Africa.
                <p>
                    The school is situated in a serene area – away from the busy areas of the city. However, it still remains close to 
                    some of the important landmarks. These include the Army Barracks and the Airforce base.
                    In addition to our state-of-the-art teaching & learning facilities, we also have Ultra-modern Boarding facilities 
                    available for students who prefer to reside in the hostel.
                </p>
                <p>
                    The major strength of the school lies in its highly qualified and experienced staff coupled with its ultra-modern teaching 
                    and learning facilities. We have spacious well-ventilated / air-conditioned classrooms and well-equipped laboratories including physics, chemistry, 
                    biology and home economics (popularly referred to as a modern unique kitchen).
                </p>
                <p>
                    With a rich and impressive track record of achievement, our alumni have distinguished themselves in various fields of human endeavor. 
                    In our 3 years of corporate existence, we have produced hundreds of Medical Doctors, Pilots, Engineers, Accountants, Lawyers – all of which are 
                    of very high profile all over the world.
                </p>
            </div>

            <div id="vision">
                <h3>OUR VISION</h3>
                <p>
                    Our vision is to run an institution of learning that will rank among the best in the inculcation of moral discipline and academic excellence. 
                    This is in response to the survival needs of the students, as well as the needs of the society at large. 
                </p>
                <p>
                    The education of a child is a joint venture between the home and the school. It is best to send your child to a school of value, founded 
                    and managed by professional and experienced educationists. This ensures the child’s discipline and a self reliant future, as well as parental old-age grace.
                </p>
            </div>
            <div id="facility">
                <h3>OUR FACILITIES</h3>

                <div>
                    If you are wondering why you should choose Villanos Secondary School, maybe you should take into consideration - the facilities we have.

                    We have well-equipped science laboratories (Physics, Chemistry & Biology) where students engage in hands-on practice on a regular basis.
                    <ul class="flex">
                        <li><img src="imgs/physicslab.JPG" alt=""/></li>
                        <li><img src="imgs/lab.JPG" alt=""/></li>
                        <li><img src="imgs/chemlab.jpg" alt=""/></li>

                    </ul>
                </div>
                <div>
                    The school environment is peaceful and serene. This makes it conducive for teaching and learning. 
                    <ul class="flex">
                        <li><img src="imgs/serene-environment2-1-300x200.jpg" alt=""/></li>
                        <li><img src="imgs/hallway.JPG" alt=""/></li>
                        <li><img src="imgs/serene-environment3-300x178.jpg" alt=""/></li>
                    </ul>
                </div>
                <div>
                    Our classrooms and library are tiled and air conditioned. With good lighting and ventilation, the learning environment is conducive.
                    <ul class="flex">
                        <li>
                            <img src="imgs/classsetting.jfif" alt=""/>
                        </li>
                        <li>
                            <img src="imgs/schoolsett.jfif" alt=""/>
                        </li>
                        <li>
                            <img src="imgs/teachersett.jfif" alt=""/>
                        </li>
                        <li>
                            <img src="imgs/library.JPG" alt=""/>
                        </li>
                    </ul>
                </div>
                <div>
                    We have an ultra modern ICT laboratory where the ICT capabilities of our students are developed. 
                    <ul class="flex">
                        <li><img src="imgs/clab1.JPG" alt="ICT LAB1"/></li>
                        <li><img src="imgs/clab2.JPG" alt="ICT LAB2"/></li>
                    </ul>
                </div>
                <div>
                    Our fully air-conditioned luxury buses are used to convey students to and from school. They would also be used on school trips, excursion, etc.
                    <ul class="flex">
                        <li><img src="imgs/bus.JPG" alt=""/></li>
                    </ul>
                </div>
                <div>
                    Our Home Economics Lab is well-equipped. With these, students can fine-tune their daily life skills.
                    <ul class="flex">
                        <li>
                            <img src="imgs/econs labs.jpg" alt=""/>
                        </li>
                        <li>
                            <img src="imgs/econs.JPG" alt=""/>
                        </li>
                    </ul>
                </div>
            </div>
        </section>
        <c:import url="footer.jsp" />
    </body>
</html>
