using AwesomeBankWeb.CSharp.Models;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;

namespace AwesomeBankWeb.CSharp.Controllers
{
    public class HomeController : Controller
    {
        private readonly IWebHostEnvironment environment;
        private readonly IConfiguration config;

        public HomeController(IWebHostEnvironment environment, IConfiguration config)
        {
            this.environment = environment;
            this.config = config;
        }

        public IActionResult Index(string page)
        {
            Article data;
            using var reader = ExecuteReader("SELECT ID, Title, Text FROM Article WHERE Page='" + page + "' AND Active=1");
            if (reader.Read())
            {
                data = new Article(reader.GetString(1), reader.GetString(2));
            }
            else
            {
                data = new Article("Error", "Page " + page + " not found.");
            }
            return View(data);
        }

        public IActionResult Download(string file)
        {
            var path = Path.Combine(environment.ContentRootPath, "App_Data", file);
            if (System.IO.File.Exists(path))
            {
                return new PhysicalFileResult(path, "application/pdf");
            }
            else
            {
                return View("Index", new Article("Download", "File not found."));
            }
        }

        private SqlDataReader ExecuteReader(string command, params SqlParameter[] parameters)
        {
            using var cmd = new SqlCommand(command, new SqlConnection(config.GetConnectionString("Web")));
            cmd.Parameters.AddRange(parameters);
            cmd.Connection.Open();
            return cmd.ExecuteReader(CommandBehavior.CloseConnection);
        }
    }
}
