using Microsoft.Ajax.Utilities;
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
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            string myConnectionString = "Data Source=orcl; User Id=records; Password=records;";

            OracleConnection myConnection = new OracleConnection(myConnectionString);
            try
            {
                int id = int.Parse(id1.Text);
                string existenceKind = existing_kind.Value;
                string versions1 = versions.Value;
                string name1 = name.Value;
                string originalSource = original_source.Value;
                string remarks = remark.Value;
                string shape1 = shape.Value;
                //ClientScript.RegisterStartupScript(GetType(), "connectsuccess", "alert('" + shape1 + "');", true);

                myConnection.Open();

                // Prepare SQL insert statement
                string insertSql = "INSERT INTO W_AREA_ (ID, EXISTENCE_KIND, VERSION, NAME, ORIGINAL_SOURCE, REMARKS, SHAPE, INSERT_DATE, INSERT_USER, UPDATE_DATE, UPDATE_USER) VALUES (:id, :existenceKind, :versions, :name, :originalSource, :remarks, :shape, SYSDATE, 'admin', SYSDATE, 'admin')";

                using (OracleCommand command = new OracleCommand(insertSql, myConnection))
                {
                    System.Diagnostics.Debug.WriteLine("OUTPUT---" + insertSql );
                    // Bind parameters
                    command.Parameters.Add(":id", OracleType.Number).Value = id;
                    command.Parameters.Add(":existenceKind", OracleType.VarChar).Value = existenceKind;
                    command.Parameters.Add(":versions", OracleType.VarChar).Value = versions1;
                    command.Parameters.Add(":name", OracleType.VarChar).Value = name1;
                    command.Parameters.Add(":originalSource", OracleType.VarChar).Value = originalSource;
                    command.Parameters.Add(":remarks", OracleType.VarChar).Value = remarks;
                    command.Parameters.Add(":shape", OracleType.VarChar).Value = shape1;

                    System.Diagnostics.Debug.WriteLine("OUTPUT--->" + command.Parameters);

                    // Execute the SQL statement
                    int rowAffected = command.ExecuteNonQuery();

                    if (rowAffected > 0)
                    {
                        // Insertion successful
                        System.Diagnostics.Debug.WriteLine("OUTPUT--->SUCCESS");
                        ClientScript.RegisterStartupScript(this.GetType(), "insertSuccess", "alert('Insertion Successful');", true);
                    }
                    else
                    {
                        // Insertion failed
                        System.Diagnostics.Debug.WriteLine("OUTPUT--->FAILURE");
                        ClientScript.RegisterStartupScript(this.GetType(), "insertFail", "alert('Insertion Failed');", true);
                    }
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