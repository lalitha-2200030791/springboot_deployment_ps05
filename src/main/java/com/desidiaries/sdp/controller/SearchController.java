package com.desidiaries.sdp.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.desidiaries.sdp.services.SearchService;

@RestController
@RequestMapping("/search")
public class SearchController {

    @Autowired
    private SearchService searchService;

    @GetMapping
    public ResponseEntity<List<String>> search(@RequestParam("query") String query) {
        List<String> results = searchService.searchWebsiteContent(query);
        return ResponseEntity.ok(results);
    }
}

