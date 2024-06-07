﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GRFO.Data
{
    public class StoreProcedure
    {
        public class Account
        {
            public const string authenticate = "[dbo].[Authenticate_User]";
        }
        public class Dashboard
        {
            public const string SelectAll = "[dbo].[DashboardData_SelectAll]";
        }

        public class Request
        {
            public const string SelectAll = "[dbo].[Request_SelectAll]";
            public const string SelectById = "[dbo].[Request_SelectById]";
            public const string Save = "[dbo].[Request_Save]";
            public const string Update = "[dbo].[Request_Status_Update]";


            public const string ReportData = "[dbo].[Request_Report]";



            public const string customerSelect = "[dbo].[GetCustomerByIds]";

        }

        public class hadoop
        {
            public const string SelectAll = "[dbo].[hadoop_Data_SelectAll]";
        }

        public class master
        {
            public const string Save = "[dbo].[master_Data_Save]";
        }

    }
}
