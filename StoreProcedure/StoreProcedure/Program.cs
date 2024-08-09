using StoreProcedure.Models;
using System;
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
                try
                {
                    var values1 = await context.Procedures.TUMUNULISTELEAsync();
                    //var values2 = await GetCategoriesByIdsAsync(context, new List<int> { 26, 2, 3, 4, 1 });

                    var katalogAgaciList = values1.Select(value => new KatalogAgaci
                    {
                        CategoryID = value.CategoryID,
                        CategoryName = value.CategoryName,
                        ParentCategoryID = value.ParentCategoryID,
                        FullPath = value.FullPath,
                        Level = value.Level,
                        AltKategoriler = Array.Empty<KatalogAgaci>()
                    }).ToList();

                    var addedCategories = new HashSet<int>();

                    foreach (var parent in katalogAgaciList)
                    {
                        parent.AltKategoriler = katalogAgaciList
                            .Where(child => child.ParentCategoryID == parent.CategoryID && addedCategories.Add((int)child.CategoryID))
                            .ToArray();
                    }

                    // Print the hierarchical structure
                    foreach (var value in katalogAgaciList.Where(k => k.ParentCategoryID == null)) 
                    {
                        await PrintKatalogAgaci(value, 0);
                    }

                    async Task PrintKatalogAgaci(KatalogAgaci node, int indent)
                    {
                        await Console.Out.WriteLineAsync(new string(' ', indent * 2) + node.CategoryName + " " + node.CategoryID);

                        foreach (var child in node.AltKategoriler)
                        {
                            await PrintKatalogAgaci(child, indent + 1);
                        }
                    }

                }
                catch (Exception ex)
                {
                    Console.WriteLine($"An error occurred: {ex.Message}");
                }
            }
        }

        //static async Task<List<IDLISTESIYLEGETIRMEResult>> GetCategoriesByIdsAsync(PROCEDURContext context, List<int> ids)
        //{
        //    var dataTable = new DataTable();
        //    dataTable.Columns.Add("CategoryID", typeof(int));
        //    foreach (var id in ids)
        //    {
        //        dataTable.Rows.Add(id);
        //    }
        //    return await context.Procedures.IDLISTESIYLEGETIRMEAsync(dataTable);
        //}
    }
}