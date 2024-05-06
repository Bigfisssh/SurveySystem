using System.Data.SqlClient;

namespace AssignmentsSchedulerWeb
{
    public class StringConnection
    {
        public readonly string ConnectionString;
        public System.Data.SqlClient.SqlCommand GetSqlCommand;

        public StringConnection()
        {
            //Change connection string of the database
            ConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\~SurveyHub\~SurveyHub\~SurveyHub\App_Data\SurveyHub.mdf;Integrated Security=True";
        }

        public System.Data.SqlClient.SqlConnection GetConnectString()
        {
            return new System.Data.SqlClient.SqlConnection(ConnectionString);
        }

        public void GetCommandString(string GetCommandString)
        {
            using (var GetSqlConnection = GetConnectString())
            {
                try
                {
                    GetSqlConnection.Open();
                    using (var GetSqlCommand = new SqlCommand(GetCommandString, GetSqlConnection))
                    {
                        GetSqlCommand.Connection = GetSqlConnection;
                        GetSqlCommand.ExecuteNonQuery();
                    }
                }   
                catch (System.Data.SqlClient.SqlException err) { err.ToString(); }
                catch (System.ArgumentException err) { err.ToString(); }
                finally { GetSqlConnection.Close(); }
            }
        }
    }
}

