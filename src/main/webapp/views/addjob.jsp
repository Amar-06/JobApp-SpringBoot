<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>JobApp - Add Job</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/style.css">
</head>
<body>
<div class="container">
    <div class="card form-card">
        <h1>Add New Job</h1>
        <p class="subtitle">Enter the details of the job posting.</p>

        <!-- Change /handleForm if your Controller uses another POST mapping. -->
        <form action="${pageContext.request.contextPath}/handleForm" method="post">

            <label for="postProfile">Job Profile</label>
            <input type="text" id="postProfile" name="postProfile"
                   placeholder="e.g. Java Developer" required>

            <label for="postDesc">Job Description</label>
            <textarea id="postDesc" name="postDesc" rows="5"
                      placeholder="Describe the job..." required></textarea>

            <label for="reqExperience">Required Experience</label>
            <input type="number" id="reqExperience" name="reqExperience"
                   placeholder="e.g. 2" min="0" required>

            <label for="postTechStack">Technology Stack</label>
            <input type="text" id="postTechStack" name="postTechStack"
                   placeholder="e.g. Java, Spring Boot, PostgreSQL" required>

            <button class="btn" type="submit">Submit Job</button>

            <a class="btn secondary"
               href="${pageContext.request.contextPath}/home">
               Back to Home
            </a>

        </form>
    </div>
</div>
</body>
</html>