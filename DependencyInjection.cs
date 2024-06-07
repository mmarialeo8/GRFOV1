using GRFO.Data.Service;

namespace GJApi
{
    public class DependencyInjection
    {
        public static void Bind(IServiceCollection services)
        {
            services.AddSingleton<IDashboardData, DashboardDataService>();
            services.AddSingleton<IRequest, RequestService>();
            services.AddSingleton<IMasterData, MasterDataService>();


            #region APV Data
            
            services.AddSingleton<IAPVDataData, APVDataService>();

            #endregion


            #region GPST Data

            services.AddSingleton<IMigrationData, MigrationDataService>();

            #endregion


            services.AddSingleton<IAccount, AccountService>();

        }
    }
}
