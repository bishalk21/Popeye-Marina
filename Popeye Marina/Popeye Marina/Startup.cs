using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Popeye_Marina.Startup))]
namespace Popeye_Marina
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
