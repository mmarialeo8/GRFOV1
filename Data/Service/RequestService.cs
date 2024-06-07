using Dapper;
using GRFO.Data.Models;
using System.Data;
using System.Data.SqlClient;

namespace GRFO.Data.Service
{
    public interface IRequest
    {
        Task<RequestResult> GetRequestList();
        Task<RequestResponse> GetRequestById(int requestId);
        Task<TransactionWrapper> SaveRequest(List<RequestPostModels> data);
        Task<TransactionWrapper> UpdateRequest(RequestUpdateModels data);
        Task<requestReportResult> ReportData();


        Task<customerResult> GetCustomerList(string customerIds);


        Task<TransactionWrapper> GetLastRequestId();

    }
    public class RequestService : IRequest
    {
        private readonly IConfiguration _iConfiguration;
        private readonly string sConnectionString;
        public RequestService(IConfiguration _iConfiguration)
        {
            this._iConfiguration = _iConfiguration;
            this.sConnectionString = _iConfiguration.GetSection("ConnectionStrings:sConnectionString").Value;
        }

        public async Task<RequestResult> GetRequestList()
        {
            var result = new RequestResult();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryAsync<RequestModels>
                        (sql: StoreProcedure.Request.SelectAll,
                        new
                        {
                            requestId = 0
                        },
                        commandType: CommandType.StoredProcedure)).AsList();
                    if (res != null)
                    {
                        result.isTransactionDone = true;
                        result.request = res;
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

        public async Task<RequestResponse> GetRequestById(int groupRequestId)
        {
            var result = new RequestResponse();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryMultipleAsync(sql: StoreProcedure.Request.SelectById,
                        new
                        {
                            groupRequestId = groupRequestId
                        },
                        commandType: CommandType.StoredProcedure));
                    if (res != null)
                    {
                        result.isTransactionDone = true;
                        result.request = res.Read<RequestPostModels>().FirstOrDefault();
                        result.apvData = res.Read<APVDataModels>().AsList();
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

        public async Task<TransactionWrapper> SaveRequest(List<RequestPostModels> data1)
        {
            var result = new TransactionWrapper();
            int groupRequestId = 0;
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    foreach (var data in data1)
                    {
                        var res = (await _db.QueryAsync<string>
                            (sql: StoreProcedure.Request.Save,
                            new
                            {
                                RequestId = data.requestId,
                                RequestCategoryId = data.requestCategoryId,
                                BusinessTypeId = data.businessTypeId,
                                RequestSourceId = data.requestSourceId,
                                RequestorProjectGroup = data.requestorProjectGroup,
                                Requestor = data.requestor,
                                BasePartNumber = data.basePartNumber,
                                PartDescription = data.partDescription,
                                SolutionPartNumber = data.solutionPartNumber,
                                NeedByDate = data.needByDate,
                                BUNameId = data.buNameId,
                                RepairLocationId = data.repairLocationId,
                                TargetCustomer = data.targetCustomer,
                                CustomerLocationId = data.customerLocationId,
                                AnnualRepairForecast1 = data.annualRepairForecast1,
                                AnnualRepairForecast2 = data.annualRepairForecast2,
                                STDCostBasePart = data.stdCostBasePart,
                                AnnualRepairForecast = data.annualRepairForecast,
                                ExtendedSpendPotential = data.extendedSpendPotential,
                                T1CustomerQty = data.t1CustomerQty,
                                T2CustomerQty = data.t2CustomerQty,
                                MG3 = data.mg3,
                                pbg = data.pbg,
                                Comments = data.comments,
                                ScreeningStatus = data.screeningStatus,
                                BusinessCaseStatus = data.businessCaseStatus,
                                PilotReviewStatus = data.pilotReviewStatus,
                                PrdImplementation = data.prdImplementation,
                                PrdDate = data.prdDate,
                                ExectiveName = data.exectiveName,
                                GRFOComment = data.grfoComment,
                                ccNumber = data.ccNumber,
                                partRequestId = data.partRequestId,
                                groupRequestId = groupRequestId
                            },
                            commandType: CommandType.StoredProcedure)).FirstOrDefault();
                        if (res != null)
                        {
                            groupRequestId = Convert.ToInt32(res);
                            result.isTransactionDone = res.Contains("Success");
                            result.transactionMessage = res;
                        }
                        else
                        {
                            result.isTransactionDone = false;
                            result.transactionMessage = "Error in save";
                        }
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

        public async Task<TransactionWrapper> UpdateRequest(RequestUpdateModels data)
        {
            var result = new TransactionWrapper();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryAsync<string>
                        (sql: StoreProcedure.Request.Update,
                        new
                        {
                            RequestId = data.requestId,
                            ScreeningStatus = data.screeningStatus,
                            BusinessCaseStatus = data.businessCaseStatus,
                            PilotReviewStatus = data.pilotReviewStatus,
                            PrdImplementation = data.prdImplementation,
                            PrdDate = data.prdDate,
                        },
                        commandType: CommandType.StoredProcedure)).FirstOrDefault();
                    if (res != null)
                    {
                        result.isTransactionDone = res.Contains("Success");
                        result.transactionMessage = res;
                    }
                    else
                    {
                        result.isTransactionDone = false;
                        result.transactionMessage = "Error in save";
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

        public async Task<requestReportResult> ReportData()
        {
            var result = new requestReportResult();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryAsync<requestReportModels>
                        (sql: StoreProcedure.Request.ReportData,
                        new
                        {

                        },
                        commandType: CommandType.StoredProcedure)).AsList();
                    if (res != null)
                    {
                        result.isTransactionDone = true;
                        result.report = res;
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

        public async Task<customerResult> GetCustomerList(string customerIds)
        {
            var result = new customerResult();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryAsync<customerModels>
                        (sql: StoreProcedure.Request.customerSelect,
                        new
                        {
                            @customerIds = customerIds
                        },
                        commandType: CommandType.StoredProcedure)).AsList();
                    if (res != null)
                    {
                        result.isTransactionDone = true;
                        result.customers = res;
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


        public async Task<TransactionWrapper> GetLastRequestId()
        {
            var result = new TransactionWrapper();
            using (IDbConnection _db = new SqlConnection(sConnectionString))
            {
                try
                {
                    var res = (await _db.QueryAsync<string>
                        (sql: "select ISNULL(max(partRequestId),0) partRequestId from [RMS].[dbo].[RequestMaster]",
                    new
                    {
                    },
                        commandType: CommandType.Text)).FirstOrDefault();
                    if (res != null)
                    {
                        result.isTransactionDone = !res.Equals("0");
                        result.transactionMessage = result.isTransactionDone ? res : "";
                    }
                    else
                    {
                        result.isTransactionDone = false;
                        result.transactionMessage = "Error in save";
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
