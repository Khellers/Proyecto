using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(horarios.Startup))]
namespace horarios
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}
