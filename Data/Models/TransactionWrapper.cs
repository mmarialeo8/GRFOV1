﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace GRFO.Data.Models
{
    public class TransactionWrapper
    {
        public virtual bool isTransactionDone {  get; set; }
        public virtual string transactionMessage {  get; set; }
    }
}
