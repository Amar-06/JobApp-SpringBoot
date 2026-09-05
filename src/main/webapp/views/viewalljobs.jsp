<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JobApp - All Jobs</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<div class="container">

    <div class="page-header">
        <div>
            <h1>Available Jobs</h1>
            <p class="subtitle">All job postings in JobApp</p>
        </div>
        <div class="actions">
            <a class="btn" href="${pageContext.request.contextPath}/addjob">Add Job</a>
            <a class="btn secondary" href="${pageContext.request.contextPath}/home">Home</a>
        </div>
    </div>

    <!-- Controller should add the list as:
         model.addAttribute("jobPosts", jobList);
         Change "jobPosts" below if your attribute has another name. -->

    <c:choose>
        <c:when test="${empty jobPosts}">
            <div class="card empty-card">
                <h2>No jobs found</h2>
                <p>Add your first job posting.</p>
                <a class="btn" href="${pageContext.request.contextPath}/addjob">Add Job</a>
            </div>
        </c:when>

        <c:otherwise>
            <div class="job-grid">
                <c:forEach var="job" items="${jobPosts}">
                    <div class="card job-card">
                        <h2>${job.postProfile}</h2>
                        <p><strong>Description:</strong> ${job.postDesc}</p>
                        <p><strong>Experience:</strong> ${job.reqExperience}</p>
                        <p><strong>Tech Stack:</strong> ${job.postTechStack}</p>
                    </div>
                </c:forEach>
            </div>
        </c:otherwise>
    </c:choose>

</div>
</body>
</html>