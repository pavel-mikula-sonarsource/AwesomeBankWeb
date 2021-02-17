using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.Hosting;

namespace AwesomeBankWeb.CSharp
{
    public static class Program
    {
        public static void Main() =>
            Host.CreateDefaultBuilder().ConfigureWebHostDefaults(x => x.UseStartup<Startup>()).Build().Run();
    }
}
