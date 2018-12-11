using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using newProject.Areas.Identity.Data;

namespace newProject.Models
{
    public class Chef : ApplicationUser
    {
        [NotMapped]
        public string Password {get;set;}

        [DataType(DataType.DateTime)]
        public DateTime DateOfBirth {get;set;}
        public string Academy{get; set;}
        public int YearsOfExperience{get; set;}
        public string CookingShowName{get; set;}
        public string ChannelAffilitations{get;set;}
        public string YouTubeChannel {get; set;}
        public string ImageLink{get; set;}
    }

        public class Ingredient
    {
        public int IngredientID{get; set;}
        public string CategoryName{get; set;}
        public string IngredientName{get;set;}
        public string QuantityMetric{get;set;}
         public ICollection<RecipeIngredient> RecipeIngredients{get;set;}
        

    }
    public class Meal
    {
        public int MealID{get; set;}

        public string MealName{get;set;}

        public ICollection<Recipe> Recipes{get;set;}
    }
    public class Recipe
    {
        public int RecipeID{get;set;}
        public string RecipeName{get;set;}
        public string Origin_Country{get;set;}
        public string Origin_City{get;set;}
        public float Avg_Cooking_Time{get;set;}
        public string Instructions{get;set;}
        public ICollection<RecipeIngredient> RecipeIngredients{get;set;}

        
    }

    public class RecipeIngredient
    {
        public int RecipeID{get;set;}
        public int IngredientID {get;set;}
        public Recipe Recipe{get;set;}

        public Ingredient Ingredient{get;set;}
    }

    

}