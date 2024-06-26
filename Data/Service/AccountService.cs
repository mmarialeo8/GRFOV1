﻿using Dapper;
using GRFO.Data.Models;
using System.Data;
using System.Data.SqlClient;

namespace GRFO.Data.Service
{
    public interface IAccount
    {
        Task<AuthenticationResponse> Authenticate(UserModels data);
    }
    public class AccountService : IAccount
    {
        private readonly IConfiguration _iConfiguration;
        private readonly string sConnectionString;
        public AccountService(IConfiguration _iConfiguration)
        {
            this._iConfiguration = _iConfiguration;
            this.sConnectionString = _iConfiguration.GetSection("ConnectionStrings:sConnectionString").Value;
        }

        public async Task<AuthenticationResponse> Authenticate(UserModels data)
        {
            var result = new AuthenticationResponse();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {

                    var res = (await _db.QueryAsync<UserModels>
                        (sql: StoreProcedure.Account.authenticate,
                        new
                        {
                            username = data.username,
                            password = data.password,
                        },
                        commandType: CommandType.Text)).FirstOrDefault();
                    if (res != null)
                    {
                        result.isTransactionDone = true;
                        result.user = res;
                    }
                    else
                    {
                        result.isTransactionDone = false;
                        result.transactionMessage = "No Records Found";
                    }
                }
                catch (Exception ex)
                {
                    result.isTransactionDone = false;
                    result.transactionMessage = ex.ToString();
                }
            }
            return result;
        }

    }
}
