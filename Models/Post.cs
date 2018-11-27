using newProject.Areas.Identity.Data;

namespace newProject.Models
{
    public class Post
    {
        public int Id {get;set;}
        public string Title {get;set;}
        public string Content {get;set;}
        public ApplicationUser CreatedBy {get;set;}
    }
}