using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(XPPROJECT2.Startup))]
namespace XPPROJECT2
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
