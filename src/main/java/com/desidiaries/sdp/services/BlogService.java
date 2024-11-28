package com.desidiaries.sdp.services;

import com.desidiaries.sdp.model.Blog;
import com.desidiaries.sdp.repository.BlogRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BlogService {

    private final BlogRepository blogRepository;

    @Autowired
    public BlogService(BlogRepository blogRepository) {
        this.blogRepository = blogRepository;
    }

    // Save a new blog
    public Blog saveBlog(Blog blog) {
        return blogRepository.save(blog);
    }

    // Find all blogs
    public List<Blog> getAllBlogs() {
        return blogRepository.findAll();
    }

    // Find blogs by author
    public List<Blog> getBlogsByAuthor(String author) {
        return blogRepository.findByAuthor(author);
    }

    // Find blog by ID
    public Optional<Blog> getBlogById(Long id) {
        return blogRepository.findById(id);
    }
 // Update blog
    public Blog updateBlog(int id, String title, String content, String author, String date) {
        // Fetch the blog by ID
        Optional<Blog> existingBlog = blogRepository.findById((long) id);
        
        if (existingBlog.isPresent()) {
            Blog blog = existingBlog.get();
            // Update fields
            blog.setTitle(title);
            blog.setContent(content);
            blog.setAuthor(author);
            blog.setDate(date);
            return blogRepository.save(blog); // Save the updated blog
        } else {
            throw new IllegalArgumentException("Blog with ID " + id + " not found");
        }
    }

    // Delete blog by ID
    public void deleteBlog(int id) {
        if (blogRepository.existsById((long) id)) {
            blogRepository.deleteById((long) id);
        } else {
            throw new IllegalArgumentException("Blog with ID " + id + " not found");
        }
    }
}

