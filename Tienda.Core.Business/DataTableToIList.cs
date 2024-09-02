using System;
using System.Collections.Generic;
using System.Data;
using System.Reflection;
using System.ComponentModel;

namespace Tienda.Core.Business
{
   public class DataTableToIList
    {

        public static IList<T> ConvertTo<T>(DataTable table)
        {
            try
            {
                if (table == null)
                    return null;

                List<DataRow> rows = new List<DataRow>();

                foreach (DataRow row in table.Rows)
                    rows.Add(row);

                return ConvertTo<T>(rows);
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static IList<T> ConvertTo<T>(IList<DataRow> rows)
        {
            try
            {
                IList<T> list = null;

                if (rows != null)
                {
                    list = new List<T>();

                    foreach (DataRow row in rows)
                    {
                        T item = CreateItem<T>(row);
                        list.Add(item);
                    }
                }

                return list;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static T CreateItem<T>(DataRow row)
        {
            try
            {
                T obj = default(T);
                if (row != null)
                {
                    obj = Activator.CreateInstance<T>();
                    foreach (DataColumn column in row.Table.Columns)
                    {
                        PropertyInfo prop = obj.GetType().GetProperty(column.ColumnName);
                        try
                        {
                            object value = row[column.ColumnName];
                            prop.SetValue(obj, value, null);
                        }
                        catch
                        {
                            // You can log something here
                            throw;
                        }
                    }
                }
                return obj;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

        public static DataTable CreateTable<T>()
        {
            try
            {
                Type entityType = typeof(T);
                DataTable table = new DataTable(entityType.Name);
                PropertyDescriptorCollection properties = TypeDescriptor.GetProperties(entityType);
                foreach (PropertyDescriptor prop in properties)
                {
                    table.Columns.Add(prop.Name, prop.PropertyType);
                }
                return table;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }
    }
}
