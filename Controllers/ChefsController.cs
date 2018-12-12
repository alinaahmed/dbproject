using System.Collections.Generic;
using System.Threading.Tasks;
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
        public async Task<IActionResult> Register(Chef input)
        {
            _ilog.LogDebug($"Name: {input.Name}, Email: {input.Email}, Password :{input.Password}, Country: {input.Country}, City: {input.City} Academy: {input.Academy} YearsOfExperience: {input.YearsOfExperience} ChannelAffilitations: {input.ChannelAffilitations} CookingShowName: {input.CookingShowName} YouTubeChannel: {input.YouTubeChannel} ImageLink: {input.ImageLink}");
           
            input.Country.ToUpper();
            input.City.ToUpper();
            input.UserName= input.Email;
            var userCreationResult= await _userManager.CreateAsync(input, input.Password);

            if(userCreationResult.Succeeded){
                this._ilog.LogInformation("User Created Successfully!");
            }
            return View();
        }

        
        
    }
}