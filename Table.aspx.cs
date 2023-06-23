using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DataLoader
{
    public partial class Table : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString = "Data Source = orcl; User Id = records; Password = records;";
            OracleConnection myConnection = new OracleConnection();
            myConnection.ConnectionString = myConnectionString;

            try
            {
                myConnection.Open();
                string lease_sql = "SELECT * FROM W_LEASE_";
                string area_sql = "SELECT * FROM W_AREA_";
                string shape_sql = "SELECT * FROM W_SHAPE_POINTS_";
                // Fetch data from W_LEASE_ table
                using (OracleCommand leaseCommand = new OracleCommand(lease_sql, myConnection))
                {
                    OracleDataReader leaseReader = leaseCommand.ExecuteReader();
                    leaseGridView.DataSource = leaseReader;
                    leaseGridView.DataBind();
                }

                // Fetch data from W_AREA_ table
                using (OracleCommand areaCommand = new OracleCommand(area_sql, myConnection))
                {
                    OracleDataReader areaReader = areaCommand.ExecuteReader();
                    areaGridView.DataSource = areaReader;
                    areaGridView.DataBind();
                }

                // Fetch data from W_SHAPE_POINTS_ table
                using (OracleCommand shapeCommand = new OracleCommand(shape_sql, myConnection))
                {
                    OracleDataReader shapeReader = shapeCommand.ExecuteReader();
                    shapeGridView.DataSource = shapeReader;
                    shapeGridView.DataBind();
                }

                myConnection.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT--->" + ex.Message);
            }
        }
    }
}