﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OracleClient;
//using Oracle.ManagedDataAccess.Client;

namespace DataLoader
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string myConnectionString = "Data Source = orcl; User Id = records; Password = records;";
            OracleConnection myConnection = new OracleConnection();
            myConnection.ConnectionString = myConnectionString;


            /*try
            {
                id.Value = "111111";
                myConnection.Open();
                Console.WriteLine("Connection successful!");
                *//*String sql = "SELECT * FROM W_R_PROJECT_";*//*
                String op = "";


                using (OracleCommand command = new OracleCommand(sql, myConnection))
                {
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Access the columns using the reader's GetXXX methods

                            string name = reader.GetString(2); // Assuming the second column is of type VARCHAR2
                            string code = reader.GetString(6); // Assuming the second column is of type VARCHAR2

                            op = op + ($"Name: {name}, Code: {code}") + "<br>";

                        }
                    }
                }

                
                Console.WriteLine(op);
                // Perform database operations here
                *//*prjOutput.InnerHtml = op;*//*
                myConnection.Close();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error: " + ex.Message);
            }*/


            try
            {
                myConnection.Open();
                string state_sql = "SELECT * FROM W_R_STATE_";
                using (OracleCommand command = new OracleCommand(state_sql, myConnection))
                {
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            // Access the columns using the reader's GetXXX methods
                            string name = reader.GetString(2); // Assuming the second column is of type VARCHAR2
                            // Assuming the second column is of type VARCHAR2
                            States.Items.Add(name);
                        }
                    }
                }
                myConnection.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT--->" + ex.Message);
            }

            try
            {
                myConnection.Open();
                string proj_sql = "SELECT * FROM W_R_PROJECT_";
                using (OracleCommand command = new OracleCommand(proj_sql, myConnection))
                {
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string name = reader.GetString(6);
                            Projects.Items.Add(name);
                        }
                    }
                }
                myConnection.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT--->" + ex.Message);
            }


            try
            {
                myConnection.Open();
                string block_sql = "SELECT * FROM W_BASIN_";
                using (OracleCommand command = new OracleCommand(block_sql, myConnection))
                {
                    using (OracleDataReader reader = command.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            string name = reader.GetString(10);
                            Block.Items.Add(name);
                        }
                    }
                }
                myConnection.Close();
            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT--->" + ex.Message);
            }

        }


        protected void SubmitForm_Click(object sender, EventArgs e)
        {
            string myConnectionString = "Data Source=orcl; User Id=records; Password=records;";
           
            OracleConnection myConnection = new OracleConnection(myConnectionString);
            try
            {
                int id1 = int.Parse(this.id1.Text);
                string leaseId = lease_id.Value;
                string blockType = block_type.Value;
                string nelpRound = nelp_round.Value;
                string ministryReferenceNo = min_refno.Value;
                string leaseNumber = lease_no.Value;
                string stateName = States.Value;
                string projectName = Projects.Value;
                string blockName = Block.Value;
                string effectiveDate = eff_date.Value;
                int extYear = int.Parse(ext_year.Value);
                string remarks = remark.Value;
                int areaId = int.Parse(area_id.Value);

                myConnection.Open();
                //System.Diagnostics.Debug.WriteLine("OUTPUT---" + id1 + " " + leaseId);

                // Prepare SQL insert statement
                string insertSql = "INSERT INTO W_LEASE_ (ID, LEASE_ID, BLOCK_TYPE, NELP_ROUND, MINISTRY_REFERENCE_NO, LEASE_NUMBER, STATE_NAME, PROJECT, BLOCK_NAME, EFFECTIVE_DATE, EXT_YEAR, REMARKS, INSERT_DATE, INSERT_USER, UPDATE_DATE, UPDATE_USER, AREA_ID) VALUES (:id1, :leaseId, :blockType, :nelpRound, :ministryReferenceNo, :leaseNumber, :stateName, :projectName, :blockName, TO_DATE(:effectiveDate, 'DD-MON-YYYY'), :extYear, :remarks, SYSDATE, 'admin', SYSDATE, 'admin', :areaId)";

                //string insertSql = "INSERT INTO W_LEASE_ (ID, LEASE_ID, BLOCK_TYPE, NELP_ROUND, MINISTRY_REFERENCE_NO, LEASE_NUMBER, STATE_NAME, PROJECT, BLOCK_NAME, EFFECTIVE_DATE, EXT_YEAR, REMARKS, INSERT_DATE, INSERT_USER, UPDATE_DATE, UPDATE_USER, AREA_ID) VALUES ('" + id1 + "','" + leaseId + "','" + blockType + "','" + nelpRound + "','" + ministryReferenceNo + "','" + leaseNumber + "','" + stateName + "','" + projectName + "','" + blockName + "','TO_DATE(" + @effectiveDate + ",'YYYY-MM-DD')','" + extYear + "','" + remarks + "','" + areaId + "') ";
                
                //ClientScript.RegisterStartupScript(GetType(), "connectsuccess", "alert('" + insertSql + "');", true);
                using (OracleCommand command = new OracleCommand(insertSql, myConnection))
                {                    
                    //ClientScript.RegisterStartupScript(GetType(), "connectsuccess", "alert('" + id1 + "');", true);

                    // Bind parameters
                    command.Parameters.Add(":id1", OracleType.Number).Value = id1;
                    command.Parameters.Add(":leaseId", OracleType.VarChar).Value = leaseId;
                    command.Parameters.Add(":blockType", OracleType.VarChar).Value = blockType;
                    command.Parameters.Add(":nelpRound", OracleType.VarChar).Value = nelpRound;
                    command.Parameters.Add(":ministryReferenceNo", OracleType.VarChar).Value = ministryReferenceNo;
                    command.Parameters.Add(":leaseNumber", OracleType.VarChar).Value = leaseNumber;
                    command.Parameters.Add(":stateName", OracleType.VarChar).Value = stateName;
                    command.Parameters.Add(":projectName", OracleType.VarChar).Value = projectName;
                    command.Parameters.Add(":blockName", OracleType.VarChar).Value = blockName;
                    command.Parameters.Add(":effectiveDate", OracleType.DateTime).Value = effectiveDate;
                    command.Parameters.Add(":extYear", OracleType.Number).Value = extYear;
                    command.Parameters.Add(":remarks", OracleType.VarChar).Value = remarks;
                    command.Parameters.Add(":areaId", OracleType.Number).Value = areaId;

                    System.Diagnostics.Debug.WriteLine("OUTPUT---" + command.Parameters);
                    
                    // Execute the SQL statement
                    int rowAffected = command.ExecuteNonQuery();

                    if (rowAffected > 0)
                    {
                        // Insertion successful
                        System.Diagnostics.Debug.WriteLine("OUTPUT---success");
                        ClientScript.RegisterStartupScript(this.GetType(), "insertSuccess", "alert('Insertion Successful');", true);
                    }
                    else
                    {
                        // Insertion failed
                        System.Diagnostics.Debug.WriteLine("OUTPUT---FAILURE");
                        ClientScript.RegisterStartupScript(this.GetType(), "insertFail", "alert('Insertion Failed');", true);
                    }
                }

                myConnection.Close();


            }
            catch (Exception ex)
            {
                System.Diagnostics.Debug.WriteLine("OUTPUT---"+ex.Message);
            }
        }
    }
}