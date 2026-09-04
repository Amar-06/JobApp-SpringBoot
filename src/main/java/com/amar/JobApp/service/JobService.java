package com.amar.JobApp.service;

import com.amar.JobApp.model.JobPost;
import com.amar.JobApp.repository.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobService {

    @Autowired
    private JobRepo repo;
    public void addjob(JobPost job) {
        repo.addjob(job);
    }

    public List<JobPost> getAlljobs() {
        return repo.getAllJobs();
    }
}
