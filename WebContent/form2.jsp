<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html>
<html lang="en">

<head>
    <title>ADMIN</title>
    <script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
     <link rel="stylesheet" href="css/admin4.css" />
    <!-- Font Awesome Cdn Link -->
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" />
</head>

<body style="background:url(assets/img/hotel3.jfif);background-size: cover;background-repeat: no-repeat;">
    <div class="container">
        <nav>
            <div class="navbar">
                <div class="logo">
                    <img src="./css/Rectangle58.jpg" alt="">
                    <h1>Admin</h1>
                </div>
                <ul>
                    <li><a id="active" href="list">
                            <i class="fas fa-tasks"></i>
                            <span class="nav-item">Customer</span>
                        </a>
                    </li>
                    <li><a href="account">
                            <i class="fas fa-user"></i>
                            <span class="nav-item">Account</span>
                        </a>
                    </li>
                    <li><a href="index.jsp">
                            <i class="fab fa-dochub"></i>
                            <span class="nav-item">My Website</span>
                        </a>
                    </li>
                    <li><a href="statictical.jsp">
                            <i class='bx bx-line-chart'></i>
                            <span class="nav-item">Statistical</span>
                        </a>
                    </li>
           
                    <li><a href="login.jsp" class="logout">
                            <i class="fas fa-sign-out-alt"></i>
                            <span class="nav-item">Logout</span>
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

        <section class="main">
            <div class="main-top">
                <p>The K&L Corner Coffee!</p>
            </div>
            <div class="main-body">
            		<h1>
						<c:if test="${user != null}">
            			Edit Customers
            		</c:if>
						<c:if test="${user == null}">
            			Add New Customers
            		</c:if>
					</h1>
                <div class="search_bar">
                    <input type="search" placeholder="Search name customer here...">
                </div>

                <div class="tags_bar">
                    <div class="tag">
                        <i class="fas fa-times"></i>
                        <span>Hot</span>
                    </div>
                    <div class="tag">
                        <i class="fas fa-times"></i>
                        <span>Coffeee</span>
                    </div>
                    <div class="tag">
                        <i class="fas fa-times"></i>
                        <span>What happen ?</span>
                    </div>
                    <div class="tag">
                        <i class="fas fa-times"></i>
                        <span>What Wrong ?</span>
                    </div>
                </div>
				<form action="update" method="post">
    <c:if test="${user != null}">
        <input type="hidden" name="id" value="<c:out value='${user.id}' />" />
    </c:if>
    
    <div class="edit">
        <div class="row_2">
            <label for="">User Name:</label>
            <input style="color: black" value="<c:out value='${user.name}' />" type="text" id="username" name="name" required="required">
        </div>
        <div class="row_2">
            <label for="">Email:</label>
            <input style="color: black" value="<c:out value='${user.email}' />" type="text" id="email" name="email" required="required">
        </div>
        <div class="row_2">
            <label for="">Address:</label>
            <input style="color: black" value="<c:out value='${user.address}' />" type="text" id="address" name="address" required="required">
        </div>

        <div class="row_2">
            <label for="">User phone:</label>
            <input style="color: black" value="<c:out value='${user.phone}' />" type="text" id="phone" name="phone" required="required">
        </div>

        <div class="row_2">
            <label for="room">User room:</label>
            <select id="room" name="room" required="required">
                <c:choose>
                    <c:when test="${user.room == ''}">
                        <option value="" selected="selected"></option>
                    </c:when>
                    <c:otherwise>
                        <option value=""></option>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${user.room == 'A-1'}">
                        <option value="A-1" selected="selected">A-1</option>
                    </c:when>
                    <c:otherwise>
                        <option value="A-1">A-1</option>
                    </c:otherwise>
                </c:choose>
                
                		<c:choose>
						            <c:when test="${user.room == 'A-2'}">
						                <option value="A-2" selected="selected">A-2</option>
						            </c:when>
						            <c:otherwise>
						                <option value="A-2">A-2</option>
						            </c:otherwise>
						        </c:choose>
						        
						        <c:choose>
						            <c:when test="${user.room == 'B-1'}">
						                <option value="B-1" selected="selected">B-1</option>
						            </c:when>
						            <c:otherwise>
						                <option value="B-1">B-1</option>
						            </c:otherwise>
						        </c:choose>
						        
						        <c:choose>
						            <c:when test="${user.room == 'B-2'}">
						                <option value="B-2" selected="selected">B-2</option>
						            </c:when>
						            <c:otherwise>
						                <option value="B-2">B-2</option>
						            </c:otherwise>
						        </c:choose>
						        
						        <c:choose>
						            <c:when test="${user.room == 'C-1'}">
						                <option value="C-1" selected="selected">C-1</option>
						            </c:when>
						            <c:otherwise>
						                <option value="C-1">C-1</option>
						            </c:otherwise>
						        </c:choose>
						        
						        <c:choose>
						            <c:when test="${user.room == 'C-2'}">
						                <option value="C-2" selected="selected">C-2</option>
						            </c:when>
						            <c:otherwise>
						                <option value="C-2">C-2</option>
						            </c:otherwise>
						        </c:choose>
           		 </select>
        				</div>
        
        			<div class="event">
            <button type="submit">Update</button>
        </div>
    </div>
</form>
        </section>
    </div>
   
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script> 

</body>

</html>