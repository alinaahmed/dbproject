using System.Collections.Generic;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Logging;
using newProject.Areas.Identity.Data;
using newProject.Models;

namespace dbproject.Controllers
{
    public class ChefsController :Controller
    {
        private readonly UserManager<ApplicationUser> _userManager;
        private readonly ILogger<Chef> _ilog;
        public ChefsController(UserManager<ApplicationUser> _userManager, ILogger<Chef> ilog)
        {
            this._userManager = _userManager;
            this._ilog=ilog;
        }

        public IActionResult Register() => View();

        [HttpPost]
        public IActionResult Register(Chef input)
        {
            _ilog.LogDebug($"Name: {input.Name}, Email: {input.Email}, Password :{input.Password}, Country: {input.Country}, City: {input.City} Academy: {input.Academy} YearsOfExperience: {input.YearsOfExperience} ChannelAffilitations: {input.ChannelAffilitations} CookingShowName: {input.CookingShowName} YouTubeChannel: {input.YouTubeChannel} ImageLink: {input.ImageLink}");
            return View();
        }
        public IEnumerable<string> GetCountries() 
        {
            string[] countries = {"Pakistan", "India", "China"};
            return countries;
        }
    }
}