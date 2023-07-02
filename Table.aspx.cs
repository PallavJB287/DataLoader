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
                    //leaseGridView.RowDeleting += GridView_RowDeleting;
                }

                // Fetch data from W_AREA_ table
                using (OracleCommand areaCommand = new OracleCommand(area_sql, myConnection))
                {
                    OracleDataReader areaReader = areaCommand.ExecuteReader();
                    areaGridView.DataSource = areaReader;
                    areaGridView.DataBind();
                    //areaGridView.RowDeleting += GridView_RowDeleting;
                }

                // Fetch data from W_SHAPE_POINTS_ table
                using (OracleCommand shapeCommand = new OracleCommand(shape_sql, myConnection))
                {
                    OracleDataReader shapeReader = shapeCommand.ExecuteReader();
                    shapeGridView.DataSource = shapeReader;
                    shapeGridView.DataBind();
                    //shapeGridView.RowDeleting += GridView_RowDeleting;
                }

                myConnection.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT--->" + ex.Message);
            }
        }

       /* protected void GridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the GridView control that triggered the event
            GridView gridView = (GridView)sender;

            // Get the data item index of the row being deleted
            int rowIndex = e.RowIndex;

            // Get the value of the primary key (ID) for the row being deleted
            int id = Convert.ToInt32(gridView.DataKeys[rowIndex].Value);

            // Delete the row from the corresponding SQL table based on the GridView ID
            switch (gridView.ID)
            {
                case "leaseGridView":
                    DeleteLeaseEntry(id);
                    break;
                case "areaGridView":
                    DeleteAreaEntry(id);
                    break;
                case "shapeGridView":
                    DeleteShapePointEntry(id);
                    break;
            }

            // Rebind the GridView to reflect the updated data
            gridView.DataBind();
        }

        protected void DeleteLeaseEntry(int id)
        {
            // Perform the deletion of the row from W_LEASE_ table based on the ID
            string deleteSql = "DELETE FROM W_LEASE_ WHERE ID = :id";

            using (OracleConnection connection = new OracleConnection("Data Source=orcl;User Id=records;Password=records;"))
            {
                using (OracleCommand command = new OracleCommand(deleteSql, connection))
                {
                    command.Parameters.AddWithValue("id", id);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void DeleteAreaEntry(int id)
        {
            // Perform the deletion of the row from W_AREA_ table based on the ID
            string deleteSql = "DELETE FROM W_AREA_ WHERE ID = :id";

            using (OracleConnection connection = new OracleConnection("Data Source=orcl;User Id=records;Password=records;"))
            {
                using (OracleCommand command = new OracleCommand(deleteSql, connection))
                {
                    command.Parameters.AddWithValue("id", id);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void DeleteShapePointEntry(int id)
        {
            // Perform the deletion of the row from W_SHAPE_POINTS_ table based on the ID
            string deleteSql = "DELETE FROM W_SHAPE_POINTS_ WHERE ID = :id";

            using (OracleConnection connection = new OracleConnection("Data Source=orcl;User Id=records;Password=records;"))
            {
                using (OracleCommand command = new OracleCommand(deleteSql, connection))
                {
                    command.Parameters.AddWithValue("id", id);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }*/
        /* protected void leaseGridView_SelectedIndexChanged(object sender, EventArgs e)
         {
             // Get the selected row index.
             int rowIndex = leaseGridView.SelectedIndex;

             // Create a button.
             Button button = new Button();
             button.Text = "Button for row " + rowIndex;

             // Add the button to the grid row.
             leaseGridView.Rows[rowIndex].Controls.Add(button);
         }
         protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e)
         {
             if (e.CommandName == "Edit")
             {
                 // Handle Edit button click
                 string id = e.CommandArgument.ToString();
                 // Perform edit operation for the corresponding ID
             }
             else if (e.CommandName == "Delete")
             {
                 // Handle Delete button click
                 string id = e.CommandArgument.ToString();
                 // Perform delete operation for the corresponding ID
             }
         }*/


    }
}