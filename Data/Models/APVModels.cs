﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GRFO.Data.Models
{
    public class APVDataModels
    {
        public virtual int basePartId { get; set; }
        public virtual string basePartNumber { get; set; }
        public virtual string partDescription { get; set; }
        public virtual double stdCostBasePart { get; set; }
        public virtual double annualRepairForecast { get; set; }
        public virtual double extendedSpendPotential { get; set; }
        public virtual double t1CustomerQty { get; set; }
        public virtual double t2CustomerQty { get; set; }
        public virtual double mg3 { get; set; }
        public virtual string enabledDisabledStatus { get; set; }
        public virtual string pbg { get; set; }
    }


    public class locationPartDemandHistoryModels
    {
        public virtual string part { get; set; }
        public virtual double dh_qty { get; set; }
        public virtual string shiptocust { get; set; }
        public virtual string T1T2Category { get; set; }
    }


    public class APVDataResponse : TransactionWrapper
    {
        public APVDataModels APVData { get; set; }
        public List<locationPartDemandHistoryModels> locationPart { get; set; }
    }
    public class APVDataResult : TransactionWrapper
    {
        public List<APVDataModels> APVData { get; set; }
    }


    public class APVDataDownloadModels
    {
        public string material { get; set; }
        public string material_desc { get; set; }
        public string? mg3 { get; set; }
        public string? pbg { get; set; }
        public string? cost { get; set; }
        public string? gfcst { get; set; }
    }

    public class APVDataDownloadResponse : TransactionWrapper
    {
        public APVDataDownloadModels apvData { get; set; }
    }

    public class APVDataDownloadResult : TransactionWrapper
    {
        public List<APVDataDownloadModels> apvData { get; set; }
    }
}
