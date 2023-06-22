using System;
using System.Collections.Generic;
using System.Data.OracleClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace DataLoader
{
    public partial class Contact : Page
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
                int id1 = int.Parse(id.Value);
                int wLeaseId = int.Parse(w_lease_id.Value);
                int seq1 = int.Parse(seq.Value);
                string latStrDms = lat_str_dms.Value;
                string lonStrDms = lon_str_dms.Value;
                double latDd = double.Parse(lat_dd.Value);
                double lonDd = double.Parse(lon_dd.Value);

                //ClientScript.RegisterStartupScript(GetType(), "connectsuccess", "alert('" + latDd + "');", true);

                myConnection.Open();

                // Prepare SQL insert statement
                string insertSql = "INSERT INTO W_SHAPE_POINTS_ (ID, W_LEASE_ID, SEQ, LAT_STR_DMS, LON_STR_DMS, LAT_DD, LON_DD, INSERT_DATE, INSERT_USER, UPDATE_DATE, UPDATE_USER) VALUES (:id, :wLeaseId, :seq, :latStrDms, :lonStrDms, :latDd, :lonDd, SYSDATE, 'admin', SYSDATE, 'admin')";

                using (OracleCommand command = new OracleCommand(insertSql, myConnection))
                {
                    
                    // Bind parameters
                    command.Parameters.Add(":id", OracleType.Number).Value = id1;
                    command.Parameters.Add(":wLeaseId", OracleType.Number).Value = wLeaseId;
                    command.Parameters.Add(":seq", OracleType.Number).Value = seq1;
                    command.Parameters.Add(":latStrDms", OracleType.VarChar).Value = latStrDms;
                    command.Parameters.Add(":lonStrDms", OracleType.VarChar).Value = lonStrDms;
                    command.Parameters.Add(":latDd", OracleType.Number).Value = latDd;
                    command.Parameters.Add(":lonDd", OracleType.Number).Value = lonDd;

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