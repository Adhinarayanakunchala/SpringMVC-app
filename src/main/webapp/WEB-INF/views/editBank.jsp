<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<title>Edit Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Bank Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/SpringMvcBankMySql/insert">Add Bank</a>
        </li>
        <li class="nav-item">
           <a class="nav-link" href="/SpringMvcBankMySql/viewAll">View All</a>
        </li>
      </ul>
    </div>
  </div>
</nav>

<div class="container">
    <div class="row">
        <div class="col-md-6 offset-md-3">
            <div class="card">
                <div class="card-header text-center text-light bg-primary">
                    <h2>Edit Bank</h2>
                    <!-- <c:if test="${not empty msg}">
                        <h5>${msg}</h5>
                        <c:remove var="msg"/>
                    </c:if> -->
                </div>
                <div class="card-body">
                    <form action="/SpringMvcBankMySql/editRes" method="post">
                        <div class="md-3">
                             <label>Bank Id</label>
                             <input type="number" name="bankId" value="${bank.bankId}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Bank Name</label>
                             <input type="text" name="bankName" value="${bank.bankName}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Employee Name</label>
                             <input type="text" name="empName" value="${bank.empName}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Department</label>
                             <input type="text" name="department" value="${bank.department}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Salary</label>
                             <input type="number" name="salary" value="${bank.salary}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Address</label>
                             <input type="text" name="address" value="${bank.address}" class="form-control">
                        </div><br>
                        <div class="md-3">
                             <label>Country</label>
                             <input type="text" name="country" value="${bank.country}" class="form-control">
                        </div><br>
                        <button class="btn btn-primary">Submit</button>
                    <form>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>