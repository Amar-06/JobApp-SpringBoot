<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobApp — Discover & Post Jobs</title>

    <!-- Google Fonts for crisp, modern typography -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Plus+Jakarta+Sans:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!-- Bootstrap Icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        :root {
            --primary: #2563eb;
            --primary-hover: #1d4ed8;
            --surface: #ffffff;
            --bg: #f8fafc;
            --text-main: #0f172a;
            --text-muted: #64748b;
            --border: #e2e8f0;
            --radius-lg: 16px;
            --radius-md: 10px;
            --shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
            --shadow-md: 0 10px 25px -5px rgba(0,0,0,0.06), 0 8px 10px -6px rgba(0,0,0,0.04);
        }

        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }

        body {
            font-family: 'Plus Jakarta Sans', sans-serif;
            background-color: var(--bg);
            color: var(--text-main);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        /* Top Navbar */
        .navbar {
            background: var(--surface);
            border-bottom: 1px solid var(--border);
            padding: 1rem 2rem;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .brand {
            font-size: 1.35rem;
            font-weight: 700;
            color: var(--primary);
            text-decoration: none;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .nav-links {
            display: flex;
            gap: 1.5rem;
            list-style: none;
        }

        .nav-links a {
            text-decoration: none;
            color: var(--text-muted);
            font-weight: 500;
            font-size: 0.95rem;
            transition: color 0.2s ease;
        }

        .nav-links a:hover {
            color: var(--primary);
        }

        /* Main Container */
        .main-wrapper {
            max-width: 1000px;
            margin: 3.5rem auto;
            padding: 0 1.5rem;
            width: 100%;
        }

        /* Hero Banner */
        .hero-card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 3.5rem 2.5rem;
            text-align: center;
            box-shadow: var(--shadow-md);
            margin-bottom: 2.5rem;
        }

        .hero-badge {
            display: inline-block;
            background: #eff6ff;
            color: var(--primary);
            font-size: 0.8rem;
            font-weight: 600;
            padding: 0.35rem 0.85rem;
            border-radius: 9999px;
            margin-bottom: 1.25rem;
            text-transform: uppercase;
            letter-spacing: 0.05em;
        }

        .hero-card h1 {
            font-size: 2.5rem;
            font-weight: 700;
            line-height: 1.2;
            letter-spacing: -0.02em;
            margin-bottom: 1rem;
        }

        .hero-card p {
            font-size: 1.1rem;
            color: var(--text-muted);
            max-width: 600px;
            margin: 0 auto 2rem auto;
            line-height: 1.6;
        }

        /* Action Grid */
        .action-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 1.5rem;
        }

        .card {
            background: var(--surface);
            border: 1px solid var(--border);
            border-radius: var(--radius-lg);
            padding: 2rem;
            display: flex;
            flex-direction: column;
            justify-content: space-between;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .card:hover {
            transform: translateY(-4px);
            box-shadow: var(--shadow-md);
        }

        .card-icon {
            width: 48px;
            height: 48px;
            border-radius: var(--radius-md);
            background: #eff6ff;
            color: var(--primary);
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.4rem;
            margin-bottom: 1.25rem;
        }

        .card h3 {
            font-size: 1.2rem;
            font-weight: 600;
            margin-bottom: 0.5rem;
        }

        .card p {
            color: var(--text-muted);
            font-size: 0.95rem;
            line-height: 1.5;
            margin-bottom: 1.5rem;
        }

        /* Buttons */
        .btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            gap: 0.5rem;
            padding: 0.75rem 1.25rem;
            font-size: 0.95rem;
            font-weight: 600;
            text-decoration: none;
            border-radius: var(--radius-md);
            transition: all 0.2s ease;
        }

        .btn-primary {
            background-color: var(--primary);
            color: #ffffff;
        }

        .btn-primary:hover {
            background-color: var(--primary-hover);
        }

        .btn-outline {
            background-color: transparent;
            color: var(--text-main);
            border: 1px solid var(--border);
        }

        .btn-outline:hover {
            background-color: #f1f5f9;
        }
    </style>
</head>
<body>

    <!-- Navigation Header -->
    <header class="navbar">
        <a class="brand" href="${pageContext.request.contextPath}/">
            <i class="bi bi-briefcase-fill"></i> JobApp
        </a>
        <ul class="nav-links">
            <li><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li><a href="${pageContext.request.contextPath}/viewalljobs">Browse Jobs</a></li>
            <li><a href="${pageContext.request.contextPath}/addjob">Post a Job</a></li>
        </ul>
    </header>

    <!-- Main Content -->
    <main class="main-wrapper">
        <section class="hero-card">
            <span class="hero-badge">Spring MVC Demo</span>
            <h1>Find Your Next Role or Post New Openings</h1>
            <p>A streamlined job portal built with Spring Boot, Spring MVC, and JSP to manage career opportunities efficiently.</p>
        </section>

        <!-- Functional Sections -->
        <section class="action-grid">
            <!-- Card 1: Explore -->
            <div class="card">
                <div>
                    <div class="card-icon">
                        <i class="bi bi-search"></i>
                    </div>
                    <h3>Explore Openings</h3>
                    <p>Browse through all available positions, filter listings, and view required skill sets.</p>
                </div>
                <a class="btn btn-outline" href="${pageContext.request.contextPath}/viewalljobs">
                    View All Jobs <i class="bi bi-arrow-right"></i>
                </a>
            </div>

            <!-- Card 2: Post -->
            <div class="card">
                <div>
                    <div class="card-icon">
                        <i class="bi bi-plus-circle"></i>
                    </div>
                    <h3>Post a Job</h3>
                    <p>Create and publish new job vacancies with title, description, and required qualifications.</p>
                </div>
                <a class="btn btn-primary" href="${pageContext.request.contextPath}/addjob">
                    Post New Job <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </section>
    </main>

</body>
</html>