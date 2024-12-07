package com.desidiaries.sdp.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.desidiaries.sdp.repository.ContentRepository;

@Service
public class SearchService {

    @Autowired
    private ContentRepository contentRepository; // Example for dynamic search from DB

    public List<String> searchWebsiteContent(String query) {
        // Example logic: Fetch matching data from database or a search index
        return contentRepository.findByKeyword(query);
    }
}

