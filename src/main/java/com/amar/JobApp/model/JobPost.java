package com.amar.JobApp.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.stereotype.Component;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Component
public class JobPost {

    private String postId;
    private String postProfile;
    private String postDesc;
    private Integer reqExperience;
    private String postTechStack;

    // getters and setters
}