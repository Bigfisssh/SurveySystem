using System;
using System.Data;
using System.Data.SqlClient;

namespace AssignmentsSchedulerWeb
{
    public partial class _dashboard : System.Web.UI.Page
    {
        protected System.Data.SqlClient.SqlCommand GetSqlCommand;

        protected void Page_Load(object sender, EventArgs e)
        {

            statistics(); 
            statistics1();
            statistics2();
            statistics3();
            statistics4();
            statistics5();
            statistics6();
            statistics7();
            statistics8();
            statistics9();
            statistics10();

        }
        public void statistics8()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var gettotal = new SqlCommand("select count(Pasta) / count(Sur_id) * 100 from surveys", GetSqlConnection);

                gettotal.ExecuteNonQuery();
                pasta.Text = gettotal.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }

        public void statistics9()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var gettotal = new SqlCommand("select count(Pizza) / count(Sur_id) * 100 from surveys", GetSqlConnection);

                gettotal.ExecuteNonQuery();
                pizza.Text = gettotal.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }

        public void statistics10()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var gettotal = new SqlCommand("select count(Papwors) / count(Sur_id) * 100 from surveys", GetSqlConnection);

                gettotal.ExecuteNonQuery();
                wors.Text = gettotal.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }

        public void statistics()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var gettotal = new SqlCommand("select count(Sur_id) from surveys", GetSqlConnection);
                
                gettotal.ExecuteNonQuery();
                total.Text = gettotal.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }

        public void statistics3()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var getyoungest = new SqlCommand("select min(birthyear) from surveys", GetSqlConnection);

                getyoungest.ExecuteNonQuery();
                youngest.Text = getyoungest.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }
        public void statistics2()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var getoldest = new SqlCommand("select max(birthyear) from surveys", GetSqlConnection);
                
                getoldest.ExecuteNonQuery();
                oldest.Text = getoldest.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }
        public void statistics1()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var getaverageage = new SqlCommand("select avg(birthyear) from surveys", GetSqlConnection);
                
                getaverageage.ExecuteNonQuery();
                age.Text = getaverageage.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }

        public void statistics7()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var tvs = new SqlCommand("select avg(WatchTV) from surveys", GetSqlConnection);

                tvs.ExecuteNonQuery();
                tv.Text = tvs.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }
        public void statistics6()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var eats = new SqlCommand("select avg(EatOut) from surveys", GetSqlConnection);

                eats.ExecuteNonQuery();
                eat.Text = eats.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }
        public void statistics4()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var listens = new SqlCommand("select avg(ListenToRadio) from surveys", GetSqlConnection);

                listens.ExecuteNonQuery();
                listen.Text = listens.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }
        public void statistics5()
        {
            using (var GetSqlConnection = new StringConnection().GetConnectString())
            {
                GetSqlConnection.Open();
                var movie = new SqlCommand("select avg(WatchMovies) from surveys", GetSqlConnection);

                movie.ExecuteNonQuery();
                movies.Text = movie.ExecuteScalar().ToString();
                GetSqlConnection.Close();
            }
        }


    }
}