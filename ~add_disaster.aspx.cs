using System;

namespace AssignmentsSchedulerWeb
{
    public partial class _add_disaster : System.Web.UI.Page
    {
        public static string names, menua, menub, menuc, menud="", ehandle;
        public static int tel, birthdate ;
        public static string selection1 ="", selection2="", selection3="", selection4="";


        protected void Page_Load(object sender, EventArgs e) { }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (PerformCorrection())
            {
                new StringConnection().GetCommandString("insert into surveys values ('" + emailInput.Text.ToString() + "','" + contactpersonInput.Text.ToString() + "','" + industryInput.Text.ToString() + "','" + addressInput.Text.ToString() + "','" + CheckBox2.Text.ToString() + "','" + CheckBox1.Text.ToString() + "','" + CheckBox3.Text.ToString() + "','" + CheckBox4.Text.ToString() + "','" + rdbmovies.SelectedValue.ToString() + "','" + rdbradio.SelectedValue.ToString() + "','" + rdbeat.SelectedValue.ToString() + "','" + rdbTv.SelectedValue.ToString() + "')");
                    ClientScript.RegisterStartupScript(this.GetType(), "", "alert('" + "~ Survey completed" + "');", true);
                PerformClear();
            }
        }

        public void PerformClear()
        {
            emailInput.Text = CheckBox1.Text = CheckBox2.Text = CheckBox3.Text = CheckBox4.Text = industryInput.Text = rdbeat.SelectedItem.Text = contactpersonInput.Text = addressInput.Text = rdbmovies.SelectedItem.Text = rdbradio.SelectedItem.Text = "" ;
        }

        public bool PerformCorrection()
        {
            if (string.IsNullOrEmpty(emailInput.Text.ToString()) || string.IsNullOrEmpty(addressInput.Text.ToString()) || string.IsNullOrEmpty(contactpersonInput.Text.ToString()) || rdbTv.SelectedItem.Text=="" || rdbradio.SelectedItem.Text == "" || rdbmovies.SelectedItem.Text == "" || rdbeat.SelectedItem.Text == "") {

                ClientScript.RegisterStartupScript(this.GetType(), "", "alert('" + "~ do not leave any field incomplete" + "');", true);
                return false;
            }
            else { return true; }
        }
    }
}