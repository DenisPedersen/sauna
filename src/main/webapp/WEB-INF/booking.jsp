<%--
  Created by IntelliJ IDEA.
  User: hvore
  Date: 30-03-2022
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page errorPage="/error.jsp" isErrorPage="false" %>



<t:pagetemplate>
    <jsp:attribute name="header">
         Booking
    </jsp:attribute>

    <jsp:attribute name="footer">

    </jsp:attribute>

    <jsp:body>
        <p>Book her </p>


        <c:forEach items="${applicationScope.eventArrayList}" var="item" >

        <div class="card">
            <div class="card-body">
                <h5 class="card-title">${item.startTime}</h5>
                <h6 class="card-subtitle mb-2 text-muted">${item.duration} time</h6>
                <p class="card-text">${item.address}</p>
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModalCenter">
                Book</button>
            </div>
        </div>


            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLongTitle">${item.startTime}</h5>
                            <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">

                            <form>
                                <br>
                                Vil du booke plads til sauna på ${item.address}?
                                <br>
                                <label for="name">Navn</label><br>
                                <input type="text" id="name" name="name" placeholder="Navn"><br>
                                <label for="tlf">Telefonnummer:</label><br>
                                <input type="text" id="tlf" name="tlf" placeholder="Telefonnummer">
                                <br>
                                <label for="email">Email</label><br>
                                <input type="text" id="email" name="email" placeholder="Email">
                                <br>

                                <br>
                                <button type="button" class="btn btn-primary">Klik her for at gå til betaling</button>
                            </form>


                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Luk</button>

                        </div>
                    </div>
                </div>
            </div>

        </c:forEach>



    </jsp:body>

</t:pagetemplate>