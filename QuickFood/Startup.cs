using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(QuickFood.Startup))]
namespace QuickFood
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
