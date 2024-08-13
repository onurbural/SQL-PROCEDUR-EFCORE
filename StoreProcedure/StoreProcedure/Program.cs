using StoreProcedure.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Threading.Tasks;

namespace StoreProcedure
{
    class Program
    {
        static async Task Main(string[] args)
        {
            using (var context = new PROCEDURContext())
            {
                #region  STRING listesi ile parametre gönderme

                var values3 = context.Procedures.STRINGIDLISTESIYLEGETIRMEAsync("4,5,7,10,1",2);
                await Console.Out.WriteLineAsync("/*/*/*/*/*/*/*//*/*//*/*/*/*/*/*");
                foreach (var value in values3.Result)
                {
                    await Console.Out.WriteLineAsync(value.FullPath);
                }
                await Console.Out.WriteLineAsync("/*/*/*/*/*/*/*/*//*/*/*/*/*//*/*");

                #endregion

                try
                {
                    var values1 = await context.Procedures.TUMUNULISTELEAsync();

                    var katalogAgaciList = values1.Select(value => new KatalogAgaci
                    {
                        CategoryID = value.CategoryID,
                        CategoryName = value.CategoryName,
                        ParentCategoryID = value.ParentCategoryID,
                        FullPath = value.FullPath,
                        Level = value.Level,
                        AltKategoriler = Array.Empty<KatalogAgaci>()
                    }).ToList();

                    var katalogTree = AgacYapisi(katalogAgaciList);

                    foreach (var value in katalogTree.Where(k => k.ParentCategoryID == null))
                    {
                        await PrintKatalogAgaci(value, 0);
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }               

            }
        }

        static KatalogAgaci[] AgacYapisi(List<KatalogAgaci> allCategories, int? parentId = null)
        {
            var processedCategories = new HashSet<int>();   
            return AgacYapisiniOlustur(allCategories, parentId, processedCategories);
        }

        static KatalogAgaci[] AgacYapisiniOlustur(
            List<KatalogAgaci> allCategories,
            int? parentId,
            HashSet<int> processedCategories)
        {
            return allCategories
                .Where(c => c.ParentCategoryID == parentId)
                .Select(c =>
                {
                    if (processedCategories.Contains((int)c.CategoryID))
                    {
                        return null; 
                    }

                    processedCategories.Add((int)c.CategoryID);
                    return new KatalogAgaci
                    {
                        CategoryID = c.CategoryID,
                        CategoryName = c.CategoryName,
                        ParentCategoryID = c.ParentCategoryID,
                        FullPath = c.FullPath,
                        Level = c.Level,
                        AltKategoriler = AgacYapisiniOlustur(allCategories, c.CategoryID, processedCategories)
                    };
                })
                .Where(c => c != null) 
                .ToArray();
        }

        static async Task PrintKatalogAgaci(KatalogAgaci node, int indent)
        {
            await Console.Out.WriteLineAsync(new string(' ', indent * 2) + node.CategoryName + " " + node.CategoryID);

            foreach (var child in node.AltKategoriler)
            {
                await PrintKatalogAgaci(child, indent + 1);
            }
        }

    }
}
