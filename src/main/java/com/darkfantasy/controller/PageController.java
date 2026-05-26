package com.darkfantasy.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class PageController {

    @GetMapping("/")
    public String home(Model model) {
        model.addAttribute("activePage", "home");
        model.addAttribute("pageTitle", "Dark Moon - Enter the Darkness");
        return "index";
    }

    @GetMapping("/story")
    public String story(Model model) {
        model.addAttribute("activePage", "story");
        model.addAttribute("pageTitle", "The Story - Dark Moon");
        return "storys/story";
    }

    @GetMapping("/characters")
    public String characters(Model model) {
        model.addAttribute("activePage", "characters");
        model.addAttribute("pageTitle", "Characters - Dark Moon");
        return "characters/characters";
    }

    @GetMapping("/enemies")
    public String enemies(Model model) {
        model.addAttribute("activePage", "enemies");
        model.addAttribute("pageTitle", "Enemies - Dark Moon");
        return "enemies/enemies";
    }

    @GetMapping("/weapons")
    public String weapons(Model model) {
        model.addAttribute("activePage", "weapons");
        model.addAttribute("pageTitle", "Weapons & Relics - Dark Moon");
        return "weapons/weapons";
    }

    @GetMapping("/world")
    public String world(Model model) {
        model.addAttribute("activePage", "world");
        model.addAttribute("pageTitle", "The World - Dark Moon");
        return "worlds/world";
    }

    @GetMapping("/news")
    public String news(Model model) {
        model.addAttribute("activePage", "news");
        model.addAttribute("pageTitle", "News - Dark Moon");
        return "news/news";
    }

    @GetMapping("/community")
    public String community(Model model) {
        model.addAttribute("activePage", "community");
        model.addAttribute("pageTitle", "Community - Veil of Perdition");
        return "community/community";
    }

    @GetMapping("/support")
    public String support(Model model) {
        model.addAttribute("activePage", "support");
        model.addAttribute("pageTitle", "Support - Veil of Perdition");
        return "supports/support";
    }
}
