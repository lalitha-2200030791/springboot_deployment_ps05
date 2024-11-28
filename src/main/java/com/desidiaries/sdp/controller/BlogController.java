package com.desidiaries.sdp.controller;

import com.desidiaries.sdp.model.Blog;
import com.desidiaries.sdp.services.BlogService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/blogs")
public class BlogController {

    private final BlogService blogService;

    @Autowired
    public BlogController(BlogService blogService) {
        this.blogService = blogService;
    }

    // API to get all blogs
    @GetMapping
    public List<Blog> getAllBlogs() {
        return blogService.getAllBlogs();
    }

    // API to get blog by ID
    @GetMapping("/{id}")
    public Optional<Blog> getBlogById(@PathVariable Long id) {
        return blogService.getBlogById(id);
    }

    // API to get blogs by author
    @GetMapping("/author/{author}")
    public List<Blog> getBlogsByAuthor(@PathVariable String author) {
        return blogService.getBlogsByAuthor(author);
    }

    // API to create a new blog
    @PostMapping
    public String createBlog(@RequestParam String title, 
                             @RequestParam String content, 
                             @RequestParam String author) {
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setContent(content);
        blog.setAuthor(author);

        blogService.saveBlog(blog);

        return "redirect:/userblogs"; // Redirect to the blogs list or some confirmation page
    }

 // Add PostMapping method in BlogController
    @PostMapping("/submit-blog")
    public String submitBlog(@RequestParam String title, @RequestParam String content, @RequestParam String author) {
        Blog blog = new Blog();
        blog.setTitle(title);
        blog.setContent(content);
        blog.setAuthor(author);
        blogService.saveBlog(blog);
        return "redirect:/userblogs"; // Redirect back to the list
    }

    // -----------------------------------------------
    // View Controller for showing blogs in the front-end

}
