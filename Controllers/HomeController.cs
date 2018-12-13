﻿using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using newProject.Areas.Identity.Data;
using newProject.Models;

namespace newProject.Controllers
{
    public class HomeController : Controller
    {
        private readonly ApplicationDbContext db;
        public HomeController( ApplicationDbContext db)
        {
            this.db = db;
        }   
        public IActionResult Index()
        {
            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public IActionResult Whatsinyourfridge() 
        {
            var MealsWithRecipes = db.Meals.Include(m => m.Recipes).ToList();
            //var mealsWithRecipes = (from m in db.Meals select m).Include("Recipes");
            return View(MealsWithRecipes);
        }

        public IActionResult selection(){

            var Ingredientslist =db.Ingredients.ToList();

                return View(Ingredientslist);

        }
    }
}