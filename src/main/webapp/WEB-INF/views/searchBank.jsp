<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>Search Page</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
        <div class="col-md-12">
            <div class="card">
                <div class="card-header text-center text-light bg-primary">
                    <h3>Search Bank Details</h3>
                </div>
                <div class="card-body">
                        <table class="table">
                          <thead>
                            <tr>
                              <th scope="col">Bank Id</th>
                              <th scope="col">Bank Name</th>
                              <th scope="col">Employee Name</th>
                              <th scope="col">Department</th>
                              <th scope="col">Salary</th>
                              <th scope="col">Address</th>
                              <th scope="col">Country</th>
                              <th scope="col">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <c:forEach var="banks" items="${bank}">
                            <tr>
                            <th scope="row">${banks.bankId}</th>
                            <td>${banks.bankName}</td>
                            <td>${banks.empName}</td>
                            <td>${banks.department}</td>
                            <td>${banks.salary}</td>
                            <td>${banks.address}</td>
                            <td>${banks.country}</td>
                            <td>
                                <a href="/SpringMvcBankMySql/edit/${banks.bankId}" class="fa fa-edit btn btn-sm btn-warning" title="Edit"></a>
                                <a href="/SpringMvcBankMySql/remove/${banks.bankId}" class="fa fa-trash btn btn-sm btn-danger" title="Delete"></a>
                            </td>
                            </tr>
                            </c:forEach>
                           </tbody>
                        </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>