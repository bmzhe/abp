using Microsoft.EntityFrameworkCore;
using Volo.Abp.AuditLogging.EntityFrameworkCore;
using Volo.Abp.EntityFrameworkCore;
using Volo.Abp.Identity.EntityFrameworkCore;
using Volo.Abp.IdentityServer.EntityFrameworkCore;
using Volo.Abp.PermissionManagement.EntityFrameworkCore;
using Volo.Abp.SettingManagement.EntityFrameworkCore;

namespace AuthServer.Host.EntityFrameworkCore
{
    public class AuthServerDbContext : AbpDbContext<AuthServerDbContext>
    {
        public const string DefaultTablePrefix = "tb_";

        public AuthServerDbContext(DbContextOptions<AuthServerDbContext> options) 
            : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            modelBuilder.ConfigureIdentity(t=>t.TablePrefix = DefaultTablePrefix);
            modelBuilder.ConfigureIdentityServer(DefaultTablePrefix);
            modelBuilder.ConfigureAuditLogging(DefaultTablePrefix);
            modelBuilder.ConfigurePermissionManagement(DefaultTablePrefix);
            modelBuilder.ConfigureSettingManagement(DefaultTablePrefix);
        }
    }
}
