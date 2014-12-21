using omualisveris.DataModels;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace omualisveris.Pages
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string emailaddress = Request.Form["emailaddress"];
            string password = Request.Form["password"];
            
            try
            {
                User user = this.Login(emailaddress, password);
                ProfileForm.user = user;

                MessageBox.Show(user.Name + " " + user.Surname + " olarak giriş yapıldı.", MessageBox.MesajTipleri.Success, true, 5000);

                Response.Redirect("/Pages/ProfileForm.aspx");
            }
            catch(Exception ex)
            {
                MessageBox.Show("Giriş işlemi başarısız! HATA : " + ex.Message, MessageBox.MesajTipleri.Error, false, 5000);
            }
        }

        private User Login(string emailaddress, string password)
        {
            using(SqlConnection connection = new SqlConnection())
            {
                connection.ConnectionString = "Data Source=SQL5011.myWindowsHosting.com;Initial Catalog=DB_9B519A_omualisveris;User Id=DB_9B519A_omualisveris_admin;Password=omualisveris2014";
                
                User[] allRecords = null;
                string sql = @"SELECT * FROM tUser WHERE EmailAddress='" + emailaddress + "'";
                using (var command = new SqlCommand(sql, connection))
                {
                    connection.Open();
                    using (var r = command.ExecuteReader())
                    {
                        var list = new List<User>();
                        while (r.Read())
                            list.Add(new User
                            { 
                                Name = r.GetString(1), 
                                Surname = r.GetString(2), 
                                JoinDate = r.GetDateTime(3), 
                                PhoneNumber = r.GetString(4), 
                                EmailAddress = r.GetString(5), 
                                Address = r.GetString(6), 
                                PasswordHash = r.GetString(7), 
                                ProfileImage = r.GetSqlBytes(8).Value 
                            });

                        allRecords = list.ToArray();
                    }
                }

                if (allRecords.Length <= 0)
                    throw new Exception("E-posta adresi kayıtlı değil.");

                if (allRecords.Length > 1)
                    throw new Exception("Bu e-posta adresi ile birden fazla kayıt var.");

                if (allRecords[0].PasswordHash.Equals(Cryptography.SHA.SHA2.Hash(password)))
                    return allRecords[0];
                else
                    throw new Exception("Parola hatalı!");
            }
        }
    }
}