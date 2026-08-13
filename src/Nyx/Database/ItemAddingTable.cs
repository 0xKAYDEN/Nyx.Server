using System;
using System.Linq;
using System.Text;
using System.Collections.Generic;
using Nyx.Server.Network.GamePackets;

namespace Nyx.Server.Database
{
    public class ItemAddingTable
    {
        public static void GetAddingsForItem(ConquerItem item)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.SELECT).Select("itemadding").Where("UID", item.UID))
            using (var reader = cmd.CreateReader())
            {
                while (reader.Read())
                {
                    if (reader.ReadInt32("Addingtype") == 0)
                    {
                        ItemAdding.Purification_ purification = new ItemAdding.Purification_();
                        purification.ItemUID = item.UID;
                        purification.Available = true;
                        purification.PurificationItemID = reader.ReadUInt32("Addingid");
                        purification.PurificationDuration = reader.ReadUInt32("Duration");
                        purification.PurificationLevel = reader.ReadUInt32("Addinglevel");
                        purification.AddedOn = DateTime.FromBinary(reader.ReadInt64("Addedon"));
                        if (purification.PurificationDuration != 0)
                        {
                            TimeSpan span1 = new TimeSpan(purification.AddedOn.AddSeconds(purification.PurificationDuration).Ticks);
                            TimeSpan span2 = new TimeSpan(DateTime.Now.Ticks);
                            int secondsleft = (int)(span1.TotalSeconds - span2.TotalSeconds);
                            if (secondsleft <= 0)
                            {
                                purification.Available = false;
                                RemoveAdding(item.UID, purification.PurificationItemID);
                                continue;
                            }
                        }
                        item.Purification = purification;
                    }
                    else
                    {
                        ItemAdding.Refinery_ extraeffect = new ItemAdding.Refinery_();
                        extraeffect.ItemUID = item.UID;
                        extraeffect.Available = true;
                        extraeffect.EffectID = reader.ReadUInt32("Addingid");
                        extraeffect.EffectLevel = reader.ReadUInt32("Addinglevel");
                        extraeffect.EffectPercent = reader.ReadUInt32("Addingpercent");
                        extraeffect.EffectDuration = reader.ReadUInt32("Duration");
                        extraeffect.AddedOn = DateTime.FromBinary(reader.ReadInt64("Addedon"));
                        if (extraeffect.EffectDuration != 0)
                        {
                            TimeSpan span1 = new TimeSpan(extraeffect.AddedOn.AddSeconds(extraeffect.EffectDuration).Ticks);
                            TimeSpan span2 = new TimeSpan(DateTime.Now.Ticks);
                            int secondsleft = (int)(span1.TotalSeconds - span2.TotalSeconds);
                            if (secondsleft <= 0)
                            {
                                extraeffect.Available = false;
                                RemoveAdding(item.UID, extraeffect.EffectID);
                                continue;
                            }
                        }
                        item.ExtraEffect = extraeffect;
                    }
                }
            }
        }
        public static void RemoveAdding(uint UID, uint addingid)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.DELETE))
                cmd.Delete("itemadding", "UID", UID).And("Addingid", addingid)
                    .Execute();
        }
        public static void AddPurification(ItemAdding.Purification_ item)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT))
                cmd.Insert("itemadding").Insert("UID", item.ItemUID)
                    .Insert("Addingtype", 0).Insert("Addingid", item.PurificationItemID)
                    .Insert("Addinglevel", item.PurificationLevel).Insert("Addingpercent", 0)
                    .Insert("Duration", item.PurificationDuration).Insert("Addedon", item.AddedOn.Ticks)
                    .Execute();
        }
        public static void Stabilize(uint UID, uint addingid)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.UPDATE).Update("itemadding"))
                cmd.Set("Duration", 0).Where("UID", UID).And("Addingid", addingid)
                    .Execute();
        }

        public static void AddExtraEffect(ItemAdding.Refinery_ effect)
        {
            using (var cmd = new NyxSqlCommand(MySqlCommandType.INSERT))
                cmd.Insert("itemadding").Insert("UID", effect.ItemUID)
                    .Insert("Addingtype", 1).Insert("Addingid", effect.EffectID)
                    .Insert("Addinglevel", effect.EffectLevel).Insert("Addingpercent", effect.EffectPercent)
                    .Insert("Duration", effect.EffectDuration).Insert("Addedon", effect.AddedOn.Ticks)
                    .Execute();
        }
    }
}
