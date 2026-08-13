using Nyx.Inventory.Enums;
using Serilog;
using System;
using System.Collections.Generic;
using System.Formats.Asn1;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Nyx.Inventory.Trackers
{
    public class ItemsEventsTracker
    {
        public ILogger logger = Log.ForContext<ItemsEventsTracker>();
        public async Task WriteAsync(uint ItemID, string TransactionHash, Events eventtype)
        {
            logger.Information("[Item Tracker] : ItemID [id] triggerd '{event}', Transcation Hash : {hash} ", ItemID, eventtype, TransactionHash);
        }
    }
}
