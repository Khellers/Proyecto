using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(XPPROJECT3.Startup))]
namespace XPPROJECT3
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
