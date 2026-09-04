package com.amar.JobApp.repository;

import com.amar.JobApp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepo {

    List<JobPost> jobs=  new ArrayList<JobPost>(Arrays.asList(
            new JobPost(
                    "1",
                    "Java Backend Developer",
                    "Develop and maintain backend applications using Java and Spring Boot.",
                    2,
                    "Java, Spring Boot, REST API, PostgreSQL"
            ),

            new JobPost(
                    "2",
                    "Python Developer",
                    "Build scalable backend applications and REST APIs using Python.",
                    1,
                    "Python, Django, REST API, PostgreSQL"
            ),

            new JobPost(
                    "3",
                    "Frontend Developer",
                    "Develop responsive and user-friendly web applications.",
                    2,
                    "HTML, CSS, JavaScript, React"
            ),

            new JobPost(
                    "4",
                    "Full Stack Developer",
                    "Work on both frontend and backend components of web applications.",
                    3,
                    "Java, Spring Boot, React, PostgreSQL"
            )
    ));

    public List<JobPost> getAllJobs() {
        return jobs;
    }

    public void addjob(JobPost job) {
        jobs.add(job);
        System.out.println(jobs);

    }

}
