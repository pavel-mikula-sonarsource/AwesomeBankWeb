using Microsoft.AspNetCore.Builder;
using Microsoft.AspNetCore.Hosting;
using Microsoft.Extensions.DependencyInjection;

namespace AwesomeBankWeb.CSharp
{
    public class Startup
    {
        public void ConfigureServices(IServiceCollection services) =>
            services.AddControllersWithViews();

        public void Configure(IApplicationBuilder app, IWebHostEnvironment env)
        {
            app.UseDeveloperExceptionPage();
            app.UseStaticFiles();
            app.UseRouting();
            app.UseEndpoints(x => x.MapControllerRoute(null, "{Action=Index}", new { Controller = "Home" }));
        }
    }
}
