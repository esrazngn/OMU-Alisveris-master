using omualisveris.DataModels;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace omualisveris.Pages
{
    public partial class JoinForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        /// <summary>
        /// Yeni kullanıcı kaydı
        /// </summary>
        /// <returns></returns>
        private void JoinNewUser(User newuser)
        {
            using(SqlConnection connection = new SqlConnection())
            {
                connection.ConnectionString = "Data Source=SQL5011.myWindowsHosting.com;Initial Catalog=DB_9B519A_omualisveris;User Id=DB_9B519A_omualisveris_admin;Password=omualisveris2014";

                string query = "INSERT INTO tUser(Name, Surname, JoinDate, PhoneNumber, EmailAddress, Address, PasswordHash, ProfileImage) VALUES (@name, @surname, @date, @phone, @email, @address, @passwordhash, @image)";
            
                SqlCommand command = new SqlCommand(query, connection);

                command.Parameters.Add(new SqlParameter("@name", newuser.Name));
                command.Parameters.Add(new SqlParameter("@surname", newuser.Surname));
                command.Parameters.Add(new SqlParameter("@date", newuser.JoinDate));
                command.Parameters.Add(new SqlParameter("@phone", newuser.PhoneNumber));
                command.Parameters.Add(new SqlParameter("@email", newuser.EmailAddress));
                command.Parameters.Add(new SqlParameter("@address", newuser.Address));
                command.Parameters.Add(new SqlParameter("@passwordhash", newuser.PasswordHash));
                command.Parameters.Add("@image", SqlDbType.Image, newuser.ProfileImage.Length).Value = newuser.ProfileImage;

                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
        }

        /// <summary>
        /// Kayıt Butonu Event Handler Metodu
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void JoinButton_Click(object sender, EventArgs e)
        {
            string name = Request.Form["name"];
            string surname = Request.Form["surname"];
            string emailaddress = Request.Form["emailaddress"];
            string phonenumber = Request.Form["phonenumber"];
            string address = Request.Form["address"];
            string password = Request.Form["password"];

            try
            {
                this.JoinNewUser(new User()
                {
                    Name = name,
                    Surname = surname,
                    EmailAddress = emailaddress,
                    PhoneNumber = phonenumber,
                    Address = address,
                    JoinDate = DateTime.Now,
                    PasswordHash = Cryptography.SHA.SHA2.Hash(password),
                    ProfileImage = GetProfileImageData()
                });

                MessageBox.Show("Kayıt işlemi başarılı!", MessageBox.MesajTipleri.Success, true, 5000);
            }
            catch(Exception ex)
            {
                MessageBox.Show("Kayıt işlemi başarısız! HATA : " + ex.Message, MessageBox.MesajTipleri.Error, false, 5000);
            }
        }

        protected byte[] GetProfileImageData()
        {
            string fileType = null;
            if (ProfileImageUpload.PostedFile == null || string.IsNullOrEmpty(ProfileImageUpload.PostedFile.FileName) || ProfileImageUpload.PostedFile.InputStream == null)
            {
                MessageBox.Show("Bu dosya yüklenemez...", MessageBox.MesajTipleri.Success, true, 3000);
                return null;
            }
            else
            {
                string extension = System.IO.Path.GetExtension(ProfileImageUpload.PostedFile.FileName).ToLower();
                switch (extension)
                {
                    case ".gif":
                        fileType = "image/gif";
                        break;
                    case ".jpg":
                    case ".jpeg":
                    case ".jpe":
                        fileType = "image/jpeg";
                        break;
                    case ".png":
                        fileType = "image/png";
                        break;
                    default:
                        MessageBox.Show("Dosya formatı desteklenmiyor...", MessageBox.MesajTipleri.Success, true, 3000);
                        return null;
                }

                return new byte[ProfileImageUpload.PostedFile.ContentLength];
            }
        }
    }
}