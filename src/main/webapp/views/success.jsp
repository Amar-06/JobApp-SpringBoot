<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JobApp - Success</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<div class="container">
    <div class="card success-card">
        <h1>Job Posted Successfully!</h1>
        <p>Your job posting has been submitted.</p>

        <!-- If Controller adds jobPost to Model, you can display:
             ${jobPost.postProfile}, ${jobPost.postDesc}, etc. -->

        <div class="actions center">
            <a class="btn" href="${pageContext.request.contextPath}/addjob">Add Another Job</a>
            <a class="btn secondary" href="${pageContext.request.contextPath}/viewalljobs">View All Jobs</a>
            <a class="btn secondary" href="${pageContext.request.contextPath}/home">Home</a>
        </div>
    </div>
</div>
</body>
</html>
