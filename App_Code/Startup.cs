using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WhisperSite.Startup))]
namespace WhisperSite
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
